n={}
for l in open('bc_count','r'):
	sp=l.lstrip().rstrip('\n')
	sp=sp.split(' ')
	sc=sp[0]
	if n.__contain__(sc):
		n[sc]+=1
	else:
		n.setdefault(sc,1)