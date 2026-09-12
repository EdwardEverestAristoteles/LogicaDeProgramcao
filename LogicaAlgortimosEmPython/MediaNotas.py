
#O objectivo deste código é exemplificar a criação de uma classe em python

class Aluno:
    def __init__(self,nome, idade):
        self.nome= nome
        self.idade = idade
        self.notas = [ ]

    def adicionar_nota(self, *notas):
        self.notas.extend(notas)

    def calcular_media(self):
        if not self.notas:
            return 0
        return sum(self.notas) / len(self.notas)

nome=input("Digite o nome do aluno: ")
idade=int(input("Digite a idade do aluno: "))
nota1=int(input("Digite a nota do aluno: "))
aluno = Aluno(nome, idade)
aluno.adicionar_nota(nota1)
print(f"A média do aluno {aluno.nome} é {aluno.calcular_media()}")