from pyswip import Prolog

prolog = Prolog()
prolog.consult('prolog/facts.pl')
prolog.consult('prolog/rules.pl')

for ans in prolog.query('query_who_what(X,Y,Z)'):
	print(ans['X'], ans['Y'], ans['Z'])
