###########################

# Projeto_Integrado
# Exercício_2
# Warley_Gomes 
# Ciência de Dados

###########################

# 1) Criando 4 vetores de tamanho 10. 

h = 1:10
x = 11:20
y = 21:30
z = 31:40 

# 2) Executar a soma, subtração, multiplicação e divisão dos vetores

r1 <- h + x + y + z # soma
r2 <- h - x - y - z # subtração
r3 <- h * x * y * z # multiplicação
r4 <- h / x / y / z # divisão

print(r1)
print(r2)
print(r3)
print(r4)

# 3) Execute a soma da raiz quadrada dos dois primeiros vetores 
# com a divisão da quarta potência dos dois últimos vetores.

# Esta questão dá margem a várias interpretações. Uma interpretação
# possível:
sqrt(h) + sqrt(x)
y ^ 4 / z ^ 4

# Outra possível interpretação: Execute a soma DA SOMA da raiz quadrada
# dos dois primeiros vetores com a divisão da quarta potência dos dois 
# últimos vetores.
(sqrt(h) + sqrt(x)) + (y ^ 4 / z ^ 4)

# Outra possível interpretação: Execute a soma da raiz quadrada DA SOMA
# dos dois primeiros vetores com a divisão da quarta potência dos dois 
# últimos vetores.
sqrt(h + x) + (y ^ 4 / z ^ 4)

# 4) Crie 2 matrizes de tamanho 10 X 10 com números que assumem casas decimais.

m1 <- matrix(seq(from=1.0, by=0.5, length=100), ncol=10, nrow=10)
m2 <- matrix(seq(from=50.5, by=-0.5, length=100), ncol=10, nrow=10)

# 5) Multiplique as matrizes por 10. Divida as matrizes por 3.
# Multiplique as duas matrizes. Apresente os resultados.

(m1 * 10)
(m2 * 10)

(m1 / 3)
(m2 / 3)

(m1 %*% m2) # %*% Para multiplicar duas matrizes 



# 6) Monte um banco de dados com os nomes de todos os seus colegas da aula
# de Programação Funcional e Orientada a Objetos. Coloque no banco de dados 
# a idade de cada um, o curso que faz, o time de futebol e o número de horas 
# gastas fazendo exercícios no R (para essa variável, use números com 2 casas
# decimais). Exiba o banco no console. Atenção: os dados do tipo character devem
# ser character mesmo; não devem ser transformados automaticamente em factor.

nomes <- c("Ester", "Juliane", "Gerson", "Nelson", "Layla", "Adelvan")

idades <- c(18L, 25L, 23L, 35L, 22L, 22L)

cursos <- c("cien_dds", "cien_dds", "cien_dds", "bioinfor", "cien_dds", "cien_dds")

times <- c("Cruzeiro", "Atlético", "Cruzeiro", "Cruzeiro","Atlético","Cruzeiro")

horas <- c(24.50, 20.00, 18.50, 28.25, 35.00, 15.75)

alunos <- data.frame(nomes, idades, cursos, times, horas, stringsAsFactors=F)

alunos

# 7) Com um comando, exiba o banco de dados numa nova tela.

View(alunos)

# 8) Confira várias informações sobre o banco de dados
# (tamanho, classes das variáveis, nomes das variáveis) usando apenas um comando.

dim(alunos) 
sapply(alunos, class)
names(alunos)

# 9) Algumas variáveis fazem sentido serem do tipo factor (variáveis categóricas). 
# O curso e o time de futebol são duas delas. Usando um comando transforme essas 
# variáveis em factor.

alunos[["cursos"]] <- as.factor(alunos[["cursos"]])
alunos[["times"]] <- as.factor(alunos[["times"]])
sapply(alunos, class)

# 10) Acrescente, no final do banco de dados, mais uma linha com as informações
# de todas as variáveis para o professor.

rbind(alunos, data.frame(nomes="Neylson",idades=30, cursos="cien_dds",times="Cruzeiro", horas=10.00))

# 11) Crie uma lista com todos os objetos que você criou neste exercícios. 
# Exiba a lista. Apresente a classe da lista.
 objetos <- list ("h" = h, "x" = x,"y" = y, "z" = z, "r1" = r1, "r2" = r2, "r3" = r3, "r4" = r4,
                  "m1" = m1, "m2" = m2, "nomes" = nomes, "idades" = idades, "cursos" = cursos,
                  "times" = times,  "horas" = horas, "alunos" = alunos)
objetos 
View(objetos)
class(objetos)
sapply(objetos, class)
 