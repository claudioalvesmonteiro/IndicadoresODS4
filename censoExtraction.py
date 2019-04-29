''''''
VM

'''

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
'''

#===============#

# ler
dt = open('ESCOLAS.CSV', 'r', encoding = "ISO-8859-1")
dt = dt.readlines()
head = dt[0]
head = head.split('|')

'''
# capturar
colunas = ['IN_CONVENIADA_PP']
strData = ''
for col in colunas:
    id = head.index(col)
    strData += col + ','
    for linha in dt:
        row = linha.split('|')
        strData += row[id] + ','
    strData

'''

# capturar inline
colunas = ['IN_AGUA_FILTRADA', 'IN_AGUA_INEXISTENTE ']
strData = ''
for linha in dt:
    row = linha.split('|')
    for col in colunas[0:(len(colunas)-1)]:
        id = head.index(col)
        strData += row[id] + ','
    id = head.index(colunas[len(colunas)-1])
    strData += row[id]
    strData += '\n'

# escrever
def writeArq(string):
    file = open('arquivo.csv', 'w')
    file.write(string)
    file.close()

writeArq(strData)
