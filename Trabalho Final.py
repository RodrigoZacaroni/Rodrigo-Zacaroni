import random
import numpy
import pymysql
from deap import base
from deap import creator
from deap import algorithms
from deap import tools
import matplotlib.pyplot as plt

class Produto():
    def __init__(self, nome, espaco, peso, importancia, quantidade):
        self.nome = nome
        self.espaco = espaco
        self.peso = peso
        self.importancia = importancia
        self.quantidade = quantidade
        
lista_produtos = []
conexao = pymysql.connect(host='localhost', user='root', passwd='root', db='produtos_negocios')
cursor = conexao.cursor()
cursor.execute('select nome, espaco, peso, importancia, quantidade from produtos')
for produto in cursor:
    #print(produto[3])
    for i in range(produto[4]):
        lista_produtos.append(Produto(produto[0], produto[1], produto[2], produto[3], produto[4]))

cursor.close()
conexao.close()

nomes = []
espacos = []
pesos = []
importancias = []

for produto in lista_produtos:
    nomes.append(produto.nome)
    espacos.append(produto.espaco)
    pesos.append(produto.peso)
    importancias.append(produto.importancia)
    
limite_espaco = 45000
limite_peso = 10000

toolbox = base.Toolbox()
creator.create("FitnessMax", base.Fitness, weights=(1.0, ))
creator.create("Individual", list, fitness=creator.FitnessMax)
toolbox.register("attr_bool", random.randint, 0, 1)
toolbox.register("individual", tools.initRepeat, creator.Individual,
                 toolbox.attr_bool, n=len(espacos))
toolbox.register("population", tools.initRepeat, list, toolbox.individual)

def avaliacao(individual):
    nota = 0
    soma_espacos = 0
    soma_pesos = 0
    for i in range(len(individual)):
       if individual[i] == 1:
           nota += importancias[i]
           soma_espacos += espacos[i]
           soma_pesos += pesos[i]
    if soma_espacos > limite_espaco or soma_pesos > limite_peso:
        nota = 1
    return nota,
       
toolbox.register("evaluate", avaliacao)
toolbox.register("mate", tools.cxOnePoint)
toolbox.register("mutate", tools.mutFlipBit, indpb = 0.05)
toolbox.register("select", tools.selRoulette)

if __name__ == "__main__":
    random.seed()
    populacao = toolbox.population(n = 500)
    probabilidade_crossover = 2.0
    probabilidade_mutacao = 0.05
    numero_geracoes = 500
    
    estatisticas = tools.Statistics(key=lambda individuo: individuo.fitness.values)
    estatisticas.register("max", numpy.max)
    estatisticas.register("min", numpy.min)
    estatisticas.register("med", numpy.mean)
    estatisticas.register("std", numpy.std)
    
    populacao, info = algorithms.eaSimple(populacao, toolbox,
                                          probabilidade_crossover,
                                          probabilidade_mutacao,
                                          numero_geracoes, estatisticas)
    melhores = tools.selBest(populacao, 1)
    for individuo in melhores:
        print(individuo)
        print(individuo.fitness)
        #print(individuo[1])
        soma = 0
        soma_pesos = 0
        soma_espacos = 0
        for i in range(len(lista_produtos)):
            if individuo[i] == 1:
                soma += importancias[i]
                soma_pesos += pesos[i]
                soma_espacos += espacos[i]
                print("Nome: %s" % (lista_produtos[i].nome))
        
        print("Melhor solução: %s" % soma)
        print("Espaço usado: %s" % soma_espacos)
        print("Peso total: %s" % soma_pesos)
        
    valores_grafico = info.select("max")
    plt.plot(valores_grafico)
    plt.title("Acompanhamento dos valores")
    plt.show()
    













