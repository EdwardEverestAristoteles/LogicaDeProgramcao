#Here is a small demonstration of the binary search code in Python.

number=int(input("type a number: "))

alvo=number
def pesquisa_binaria(list, alvo):
   
    low= 0 
    high = len(list) - 1 
   
    while low <= high: 
        middle = (low + high) // 2 
        chute = list[middle]
        if chute == alvo:   
            return middle
        if chute > alvo: 
            high = middle - 1
        else:
            low = middle + 1
    return None
minha_lista = [1, 3, 5, 7, 9, 50,55,60]
print("The result is " + str(pesquisa_binaria(minha_lista, number)))
