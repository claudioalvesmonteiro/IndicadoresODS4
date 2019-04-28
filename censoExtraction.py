'''
VM

'''
# import p
#docentesNE = pd.read_csv('DOCENTES_NORDESTE.CSV', sep = '|')
#print(dataCVM.columns)

# beta
id = x.index('IN_CONVENIADA_PP')
for linha in docentesNE:
    row = linha.split('|')
    value = row[122]
    list.append(value)

#===============#

# ler
dt = open('DOCENTES_NORDESTE.CSV', 'r')
dt = dt.readlines()
head = dt[0]
head = head.split('|')

# capturar
colunas = ['IN_CONVENIADA_PP']
strData = ''
for col in colunas:
    id = head.index(col)
    strData += col + ','
    for linha in dt:
        row = linha.split('|')
        strData += row[id] + ','


# capturar inline
colunas = ['IN_CONVENIADA_PP']
dicData = {}
for linha in dt:
    row = linha.split('|')
    for col in colunas:
        id = head.index(col)
        list.append(row[id])


# escrever
