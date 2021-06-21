from PyQt5.QtWidgets import QMainWindow, QApplication, QPushButton, QLineEdit, \
    QListWidget, QListWidgetItem, QAbstractItemView, QMessageBox
from PyQt5.QtCore import pyqtSlot
from PyQt5.QtCore import Qt as qtC

from pyswip import Prolog
import spacy
import nltk
import random

import sys
import signal
signal.signal(signal.SIGINT, signal.SIG_DFL)

# TODO BONUS: sistemare problema lista partecipanti [PROLOG]
# TODO BONUS: sintetizzatore vocale

prolog = Prolog()
prolog.consult('prolog/facts.pl')
prolog.consult('prolog/rules.pl')

nlp = spacy.load('it_core_news_lg')

noun_exeption = ["baciamano", "carlo"]
adj_exception = ["vecchio", "nuovo", "farnese"]
pron_exception = ["avancorpi"]
num_exception = ["due"]

who_answer = ["È stato", "Certamente è stato", "Ovviamente è stato", "Senza dubbio è stato", "Come è noto, è stato",
              "Come è ben noto, è stato"]
when_answer = ["È successo nel", "È avvenuto nel", "È capitato nel"]
no_answer = ["Mi dispiace, non trovo una risposta", "Risposta non trovata", "Non so che dire"]

where_dict = ["trovare", "aprire", "collocare", "rinvenire", "conservare"]

dictionary = {
    "affrescare": ["dipingere", "decorare"],
    "realizzare": ["dipingere", "costruire", "eseguire", "scolpire"],
    "terminare": ["costruire", "edificare"],
    "cominciare": ["iniziare"],
    "iniziare": ["cominciare"],
    "sottoporre": ["presentare", "proporre"],
    "partecipare": ["aderire"],
    "opporre": ["rifiutare"],
    "restaurare": ["aggiustare", "ristrutturare", "risanare"],
    "giungere": ["arrivò"],
    "collocare": ["porre", "posizionare", "mettere", "situare", "sistemare"],
    "rinvenire": ["trovare", "recuperare", "scoprire"],
    "conservare": ["custodire", "trovare", "porre"],
    "trovare": ["situato", "porre", "collocare"]
}


def resolve_query(nlp_text, query, type='other'):
    verb_question = []
    obj = []

    for token in nlp_text:
        if token.pos_ == "VERB":
            if token.text not in noun_exeption:
                verb_question.append(token.lemma_)
            else:
                obj.append(token.text)
        elif token.pos_ == "NOUN":
            obj.append(token.text)
        elif token.pos_ == "ADJ" or token.pos_ == "PRON" or token.pos_ == "NUM":
            if token.text in adj_exception or token.text in pron_exception or token.text in num_exception:
                obj.append(token.text)

    obj = ' '.join(obj)

    min_obj = ""
    min_where = 25
    min_who_when = 25

    for ans in prolog.query(query):
        if type == "where":
            for verb in verb_question:
                if verb in where_dict:
                    obj_ = ans['X'].decode('utf-8')
                    min_local = nltk.edit_distance(obj_, obj)
                    # print(min_local, ans['Z'].decode('utf-8'))
                    if min_local < min_where:
                        min_where = min_local
                        min_obj = ans['X'].decode('utf-8') + " si trova " + ans['Y'].decode('utf-8') + " " + ans[
                            'Z'].decode('utf-8')
        else:
            verb = nlp(ans['Y'].decode('utf-8'))
            for v in verb:
                if v.pos_ == "VERB":
                    for vq in verb_question:
                        try:
                            if vq == v.lemma_ or vq in dictionary[v.lemma_]:
                                min_local = nltk.edit_distance(obj, ans['Z'].decode('utf-8').lower())
                                # print(min_local, ans['X'].decode('utf-8'))
                                if min_local < min_who_when:
                                    min_who_when = min_local
                                    min_obj = ans['X'].decode('utf-8')
                        except:
                            pass

    return min_obj


class App(QMainWindow):
    def __init__(self):
        super().__init__()
        self.title = 'Donato Chatbot'
        self.left = 100
        self.top = 100
        self.width = 600
        self.height = 300
        self.thread = None
        self.threadMain = None
        self.initUI()

    def initUI(self):
        self.setWindowTitle(self.title)
        self.setFixedSize(self.width, self.height)
        self.setGeometry(self.left, self.top, self.width, self.height)

        self.textbox = QLineEdit(self)
        self.textbox.move(10, 250)
        self.textbox.resize(500, 32)
        self.textbox.setPlaceholderText("Fammi una domanda ...")

        # Button send message
        self.button = QPushButton('Invia', self)
        self.button.move(515, 250)
        self.button.resize(75, 32)

        # Logger
        self.list_widget = QListWidget(self)
        self.list_widget.resize(580, 230)
        self.list_widget.move(10, 10)

        # connect button to function on_click
        self.button.clicked.connect(self.on_click)

        self.show()

    @pyqtSlot()
    def on_click(self):
        question = self.textbox.text().lower()

        if question == "":
            QMessageBox.about(self, "Error", "La domanda non può essere vuota!")
        else:
            nlp_text = nlp(question)
            nlp_arr = []
            [nlp_arr.append(token.text) for token in nlp_text]

            item = QListWidgetItem('[UTENTE] ' + question)
            item.setForeground(qtC.red)
            self.list_widget.addItem(item)
            QAbstractItemView.scrollToBottom(self.list_widget)

            if "chi" in nlp_arr:
                result = resolve_query(nlp_text, 'query_who_what(X,Y,Z)')
                if result != "":
                    self.list_widget.addItem(QListWidgetItem('[DONATO] {verb} {who}'.format(verb=random.choice(who_answer), who=result)))
                    QAbstractItemView.scrollToBottom(self.list_widget)
                else:
                    self.list_widget.addItem(
                        QListWidgetItem('[DONATO] {result}'.format(result=random.choice(no_answer))))
                    QAbstractItemView.scrollToBottom(self.list_widget)

            elif "quando" in nlp_arr:
                result = resolve_query(nlp_text, 'query_when(Z,Y,X)')
                if result != "":
                    self.list_widget.addItem(
                        QListWidgetItem('[DONATO] {verb} {when}'.format(verb=random.choice(when_answer), when=result)))
                    QAbstractItemView.scrollToBottom(self.list_widget)
                else:
                    self.list_widget.addItem(
                        QListWidgetItem('[DONATO] {result}'.format(result=random.choice(no_answer))))
                    QAbstractItemView.scrollToBottom(self.list_widget)

            elif "dove" in nlp_arr:
                result = resolve_query(nlp_text, 'query_where(X,Y,Z)', 'where')
                if result != "":
                    self.list_widget.addItem(
                        QListWidgetItem('[DONATO] {result}'.format(result=result)))
                    QAbstractItemView.scrollToBottom(self.list_widget)
                else:
                    self.list_widget.addItem(
                        QListWidgetItem('[DONATO] {result}'.format(result=random.choice(no_answer))))
                    QAbstractItemView.scrollToBottom(self.list_widget)

            else:
                self.list_widget.addItem(
                    QListWidgetItem('[DONATO] Non ho capito, puoi ripetere?'))
                QAbstractItemView.scrollToBottom(self.list_widget)

            self.textbox.setText("")


if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = App()
    sys.exit(app.exec_())
