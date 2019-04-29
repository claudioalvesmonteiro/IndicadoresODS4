
#===================#
# preprocess
#==================#


countBR = function(var2, arq, ano){
  
  # contar numero de casos por territorio
  count = data.frame(table(var2))
  # combinar dados em wide
  count = cbind(count[count$var2 == 1,], count[count$var2 == 0,])[,c(2,4)]
  # renomear colunas
  colnames(count) = c('Freq1', 'Freq0')
  
  # criar total e porcentagem
  count = mutate(count, total = Freq1+Freq0)
  count = mutate(count, porcentagem = round((Freq1/total)*100,1) )
  
  # salvar e retornar
  write_excel_csv(count, paste0('resultados/', arq, '_BR_', ano ,'.xls'))
  return(count)
  
}

countUF = function(var1, var2, codeUF, arq, ano){
  
  # contar numero de casos por territorio
  count = data.frame(table(var1, var2))
  # combinar dados em wide
  count = cbind(count[count$var2 == 1,], count[count$var2 == 0,])[,c(1,3,6)]
  # renomear colunas
  colnames(count) = c('Territorio', 'Freq1', 'Freq0')
  
  # criar total e porcentagem
  count = mutate(count, total = Freq1+Freq0)
  count = mutate(count, porcentagem = round((Freq1/total)*100,1) )
  
  # combinar dados e retornar
  count = merge(codeUF, count, by = "Territorio")
  write_excel_csv(count, paste0('resultados/', arq, '_UF_', ano ,'.xls'))
  return(count)
  
}

countRegiao = function(var1, var2, arq, ano){
  
  # contar numero de casos por territorio
  count = data.frame(table(var1, var2))
  # combinar dados em wide
  count = cbind(count[count$var2 == 1,], count[count$var2 == 0,])[,c(1,3,6)]
  # renomear colunas
  colnames(count) = c('Territorio', 'Freq1', 'Freq0')
  
  # criar total e porcentagem
  count = mutate(count, total = Freq1+Freq0)
  count = mutate(count, porcentagem = round((Freq1/total)*100,1) )
  
  # combinar dados e retornar
  codeRegiao = data.frame(Territorio = c('1', '2', '3', '4', '5'),
                          Regiao = c('N', 'NE', 'SE', 'S', 'CO'))
  count = merge(codeRegiao, count, by = "Territorio")
  
  write_excel_csv(count, paste0('resultados/', arq, '_REGIAO_', ano ,'.xls'))
  return(count)
  
}