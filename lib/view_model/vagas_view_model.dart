


import 'package:rarolabs_desafio/data/vaga.dart';

class VagasViewModel {

   Vaga vaga;

  VagasViewModel({this.vaga});

  bool get ocupado {
    return this.vaga.ocupado;
  }

   int get nome {
     return this.vaga.nome;
   }



}