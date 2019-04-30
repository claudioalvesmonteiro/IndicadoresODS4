# VM
# Claudio Alves Monteiro @
# 20/04/2019

library(dplyr); library(readr); library(xlsx)
source('codigos/pacoteAnalise.R')

# carregar dados
dt16 <- read.csv('dados/pre_process/escolas2016.csv')
dt17 <- read.csv('dados/pre_process/escolas2017.csv')
codeBR <- read.csv("dados/BR_municipio_codigos.csv")

# codeBR to codeEstado
codeBR$Territorio = as.numeric(substr(codeBR$code_muni, start = 1, stop = 2))
codeUF = codeBR[!duplicated(codeBR$UF),][,c(5,6)]

key = 'total'

if (key == 'privada'){
  # selecionar privada
  dt16 = dt16[dt16$TP_DEPENDENCIA == 4,]
  dt17 = dt17[dt17$TP_DEPENDENCIA == 4,]
} else if (key == 'publica'){
  # selecionar publica
  dt16 = dt16[dt16$TP_DEPENDENCIA != 4,]
  dt17 = dt17[dt17$TP_DEPENDENCIA != 4,]
} else {
  print('total selection')
}

#====================#
# 4.A.1a - IN_DEPENDENCIAS_PNE
#================#

countBR(dt16$IN_DEPENDENCIAS_PNE, paste0('4a1a/', key ,'_IN_DEPENDENCIAS_PNE'), 2016)
countRegiao(dt16$CO_REGIAO, dt16$IN_DEPENDENCIAS_PNE, paste0('4a1a/', key, '_IN_DEPENDENCIAS_PNE'), 2016)
countUF(dt16$CO_UF, dt16$IN_DEPENDENCIAS_PNE, codeUF, paste0('4a1a/', key ,'_IN_DEPENDENCIAS_PNE'), 2016)

countBR(dt17$IN_DEPENDENCIAS_PNE, paste0('4a1a/', key, '_IN_DEPENDENCIAS_PNE'), 2017)
countRegiao(dt17$CO_REGIAO, dt17$IN_DEPENDENCIAS_PNE, paste0('4a1a/', key, '_IN_DEPENDENCIAS_PNE'), 2017)
countUF(dt17$CO_UF, dt17$IN_DEPENDENCIAS_PNE, codeUF, paste0('4a1a/',key,'_IN_DEPENDENCIAS_PNE'), 2017)


#====================#
# 4.A.1b - IN_BANHEIRO_PNE
#================#

countBR(dt16$IN_BANHEIRO_PNE, paste0('4a1b/', key ,'_IN_BANHEIRO_PNE'), 2016)
countRegiao(dt16$CO_REGIAO, dt16$IN_BANHEIRO_PNE, paste0('4a1b/', key ,'_IN_BANHEIRO_PNE'), 2016)
countUF(dt16$CO_UF, dt16$IN_BANHEIRO_PNE, codeUF,  paste0('4a1b/', key ,'_IN_BANHEIRO_PNE'), 2016)

countBR(dt17$IN_BANHEIRO_PNE,  paste0('4a1b/', key ,'_IN_BANHEIRO_PNE'), 2017)
countRegiao(dt17$CO_REGIAO, dt17$IN_BANHEIRO_PNE,  paste0('4a1b/', key ,'_IN_BANHEIRO_PNE'), 2017)
countUF(dt17$CO_UF, dt17$IN_BANHEIRO_PNE, codeUF,  paste0('4a1b/', key ,'_IN_BANHEIRO_PNE'), 2017)


#====================#
# 4.A.2 - IN_SALA_ATENDIMENTO_ESPECIAL
#================#

countBR(dt16$IN_SALA_ATENDIMENTO_ESPECIAL,  paste0('4a2/', key ,'_IN_SALA_ATENDIMENTO_ESPECIAL'), 2016)
countRegiao(dt16$CO_REGIAO, dt16$IN_SALA_ATENDIMENTO_ESPECIAL, paste0('4a2/', key ,'_IN_SALA_ATENDIMENTO_ESPECIAL'), 2016)
countUF(dt16$CO_UF, dt16$IN_SALA_ATENDIMENTO_ESPECIAL, codeUF, paste0('4a2/', key ,'_IN_SALA_ATENDIMENTO_ESPECIAL'), 2016)

countBR(dt17$IN_SALA_ATENDIMENTO_ESPECIAL, paste0('4a2/', key ,'_IN_SALA_ATENDIMENTO_ESPECIAL'), 2017)
countRegiao(dt17$CO_REGIAO, dt17$IN_SALA_ATENDIMENTO_ESPECIAL, paste0('4a2/', key ,'_IN_SALA_ATENDIMENTO_ESPECIAL'), 2017)
countUF(dt17$CO_UF, dt17$IN_SALA_ATENDIMENTO_ESPECIAL, codeUF, paste0('4a2/', key ,'_IN_SALA_ATENDIMENTO_ESPECIAL'), 2017)

#========================================#
# 4.A.3 - IN_AGUA_FILTRADA
#         IN_AGUA_INEXISTENTE 
#         IN_ENERGIA_INEXISTENTE 
#         IN_ESGOTO_INEXISTENTE
#
#         PRECISA SABER COMO VARIAVEL FOI
#         COMPOSTA NOS OUTROS ANOS
#=======================================#

#countBR(dt17$IN_BANHEIRO_PNE, 'IN_BANHEIRO_PNE', 2016)
#countRegiao(dt17$CO_REGIAO, dt17$IN_BANHEIRO_PNE, 'IN_BANHEIRO_PNE', 2016)
#countUF(dt17$CO_UF, dt17$IN_BANHEIRO_PNE, codeUF, 'IN_BANHEIRO_PNE', 2016)