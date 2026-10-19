List<String> hasteA = ['1', '2', '3'];
List<String> hasteB = ['', '', ''];
List<String> hasteC = ['', '', ''];

void torreHanoi(int n, List<String> origem, List<String> destino, List<String> auxiliar, String nomeOrigem, String nomeDestino, String nomeAuxiliar) {
  String remover = "";
  
  if (n == 1) {
    int idxOrigem = origem.indexWhere((e) => e != "");
    if (idxOrigem != -1) {
      String disco = origem[idxOrigem];
      origem[idxOrigem] = remover;
      
      int idxDestino = destino.lastIndexOf("");
      if (idxDestino != -1) {
        destino[idxDestino] = disco;
      }
    }
    print("Mover de $nomeOrigem para $nomeDestino | A: $hasteA | B: $hasteB | C: $hasteC");
    return;
  }
  
  // 1. Mover n-1 discos da origem para o auxiliar
  torreHanoi(n - 1, origem, auxiliar, destino, nomeOrigem, nomeAuxiliar, nomeDestino);
  
  // 2. Mover o disco atual (maior) da origem para o destino
  int idxOrigem = origem.indexWhere((e) => e != "");
  if (idxOrigem != -1) {
    String disco = origem[idxOrigem];
    origem[idxOrigem] = remover;
    
    int idxDestino = destino.lastIndexOf("");
    if (idxDestino != -1) {
      destino[idxDestino] = disco;
    }
  }
  print("Mover de $nomeOrigem para $nomeDestino | A: $hasteA | B: $hasteB | C: $hasteC");
  
  // 3. Mover n-1 discos do auxiliar para o destino (Corrigido para 'origem')
  torreHanoi(n - 1, auxiliar, destino, origem, nomeAuxiliar, nomeDestino, nomeOrigem);
}

void main() {
  int n = 3; 
  
  print("Estado Inicial: A: $hasteA | B: $hasteB | C: $hasteC");
  torreHanoi(n, hasteA, hasteC, hasteB, 'A', 'C', 'B');
}