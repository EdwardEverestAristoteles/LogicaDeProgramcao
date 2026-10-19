//Este programa serve para adicionar um núemro na lista!
/*Vai primeiro perguntar a quantidades de números que se pretende adicionar
na lista, para que a lista tenha um início e um fim*/


import 'dart:io'; 



void main(){

  List<int?> Lista = [];
  int numero=0;
  print("Quantos numeros vai digitar?: ");
  int qantidade = int.parse(stdin.readLineSync()!);
  for (int i=0; i<qantidade;i++){
    print("Digite um numero: ");
    numero =int.parse(stdin.readLineSync()!);
    Lista.add(numero);  
   
  }
  print("${Lista[2]}"); 
}