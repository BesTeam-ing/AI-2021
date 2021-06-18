from pyswip import Prolog
import spacy
import nltk

# TODO selezionare sinonimi per ogni verbo nella base dati
# TODO sistemare threshold
# TODO sistemare problema lista partecipanti
# TODO Aggiungere qualche try/catch
# TODO BONUS: Aggiungere interfaccia grafica
# TODO BONUS: sintetizzatore vocale

prolog = Prolog()
prolog.consult('prolog/facts.pl')
prolog.consult('prolog/rules.pl')

nlp = spacy.load('it_core_news_lg')

noun_exeption = ["baciamano", "carlo"]
adj_exception = ["vecchio", "nuovo", "farnese"]
pron_exception = ["avancorpi"]
num_exception = ["due"]


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
	min = 100

	for ans in prolog.query(query):
		if type == "where":
			obj_ = ans['X'].decode('utf-8')
			min_local = nltk.edit_distance(obj_, obj)
			if min_local < min:
				min = min_local
				min_obj = ans['Y'].decode('utf-8') + " " + ans['Z'].decode('utf-8')
		else:
			verb = nlp(ans['Y'].decode('utf-8'))
			for v in verb:
				if v.pos_ == "VERB":
					for vq in verb_question:
						if vq == v.lemma_:
							min_local = nltk.edit_distance(obj, ans['Z'].decode('utf-8').lower())
							# print(min_local, ans['X'].decode('utf-8'))
							if min_local < min:
								min = min_local
								min_obj = ans['X'].decode('utf-8')

	return min_obj


while True:
	question = input("Inserisci domanda: ").lower()

	nlp_text = nlp(question)
	nlp_arr = []
	[nlp_arr.append(token.text) for token in nlp_text]

	if "chi" in nlp_arr:
		result = resolve_query(nlp_text, 'query_who_what(X,Y,Z)')
		print('{verb} {who}'.format(verb="è stato", who=result))

	elif "quando" in nlp_arr:
		result = resolve_query(nlp_text, 'query_when(Z,Y,X)')
		print('{verb} {who}'.format(verb="", who=result))

	elif "dove" in nlp_arr:
		result = resolve_query(nlp_text, 'query_where(X,Y,Z)', 'where')
		print('{verb} {who}'.format(verb="si trova", who=result))

	else:
		print("Domanda malformattata")
