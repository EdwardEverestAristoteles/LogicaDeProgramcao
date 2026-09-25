/*
Media de Temperaturas
*/

void main(){
  List<int> Temperaturas =[78,81,79,83,77,82];
  int MaiorTemp=Temperaturas[0],MenorTemp=Temperaturas[0],Soma=0, Contador=0;
  int? Media;  


  for (Contador; Contador<Temperaturas.length;Contador++){  
    if (Temperaturas[Contador]>MaiorTemp){
      MaiorTemp=Temperaturas[Contador];
    }
    if (Temperaturas[Contador]<MenorTemp){
      MenorTemp=Temperaturas[Contador]; 
    }
    Soma=Temperaturas[Contador]+Soma; 
  }
 Media=(Soma~/Temperaturas.length); 
 print("A Media: $Media" + "\nMenor temp: $MenorTemp\n"+"Maior temp: $MaiorTemp");
  
}