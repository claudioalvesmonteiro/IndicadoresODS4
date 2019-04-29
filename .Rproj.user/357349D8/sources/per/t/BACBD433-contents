# VM
# Claudio Alves Monteiro @
# 20/04/2019

library(dplyr); library(readr)
source('codigos/pacoteAnalise.R')

# carregar dados
dt17 <- read.csv('dados/pre_process/escolas2016.csv')
codeBR <- read.csv("dados/BR_municipio_codigos.csv")

# codeBR to codeEstado
codeBR$Territorio = as.numeric(substr(codeBR$code_muni, start = 1, stop = 2))
codeUF = codeBR[!duplicated(codeBR$UF),][,c(5,6)]

#====================#
# 4.A.1a - IN_BANHEIRO_PNE
#================#

countBR(dt17$IN_BANHEIRO_PNE, 'IN_BANHEIRO_PNE', 2017)
countRegiao(dt17$CO_REGIAO, dt17$IN_BANHEIRO_PNE, 'IN_BANHEIRO_PNE', 2017)
countUF(dt17$CO_UF, dt17$IN_BANHEIRO_PNE, codeUF, 'IN_BANHEIRO_PNE', 2017)

#====================#
# 4.A.1b - IN_DEPENDENCIAS_PNE
#================#

countBR(dt17$IN_DEPENDENCIAS_PNE, 'IN_DEPENDENCIAS_PNE', 2017)
countRegiao(dt17$CO_REGIAO, dt17$IN_DEPENDENCIAS_PNE, 'IN_DEPENDENCIAS_PNE', 2017)
countUF(dt17$CO_UF, dt17$IN_DEPENDENCIAS_PNE, codeUF, 'IN_DEPENDENCIAS_PNE', 2017)

#====================#
# 4.A.2 - IN_SALA_ATENDIMENTO_ESPECIAL
#================#


countBR(dt17$IN_SALA_ATENDIMENTO_ESPECIAL, 'IN_SALA_ATENDIMENTO_ESPECIAL', 2017)
countRegiao(dt17$CO_REGIAO, dt17$IN_SALA_ATENDIMENTO_ESPECIAL, 'IN_SALA_ATENDIMENTO_ESPECIAL', 2017)
countUF(dt17$CO_UF, dt17$IN_SALA_ATENDIMENTO_ESPECIAL, codeUF, 'IN_SALA_ATENDIMENTO_ESPECIAL', 2017)

rm(dt17)
dt16 <- read.csv('dados/pre_process/escolas2016.csv')

countBR(dt16$IN_SALA_ATENDIMENTO_ESPECIAL, 'IN_SALA_ATENDIMENTO_ESPECIAL', 2016)
countRegiao(dt16$CO_REGIAO, dt16$IN_SALA_ATENDIMENTO_ESPECIAL, 'IN_SALA_ATENDIMENTO_ESPECIAL', 2016)
countUF(dt16$CO_UF, dt16$IN_SALA_ATENDIMENTO_ESPECIAL, codeUF, 'IN_SALA_ATENDIMENTO_ESPECIAL', 2016)

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

