

nomes = c('planilha1') # nomes das bases

for (i in nomes){
  dt = read.csv(paste0(i, '.csv'))
  dt 
}