/*

Um cliente pretende levantar 380 €.

O ATM possui apenas notas de:

100 €
50 €
20 €
10 €
*/

void main(){

  List<int> Atm=[100,50,20,10]; 

  int Quantidade=0;
  int? NotaPorTirar;
  int NotaPret=380; 
  int acumulador=0, subtra=0; 

  for (int i=0; i<Atm.length;i++){
    Quantidade = NotaPret ~/Atm[i];
   
    if(Quantidade>0){
      while(Quantidade>0){
        NotaPorTirar = NotaPret - Atm[i]; 
        NotaPret=NotaPorTirar; 
        acumulador=Atm[i]+acumulador; 
        print("Foi entregue: $acumulador"); 
        print("Nota restante: $NotaPret");
       
        Quantidade--;
      }
    
  }
}
print("Ao todo foi entregue: $acumulador"); 

}