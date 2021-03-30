import 'package:rarolabs_desafio/data/caminhao.dart';

class Vaga{
   bool ocupado;
   int nome;
   Caminhao caminhaoAtual;
   Caminhao caminhaoAnterior;

   Vaga({this.caminhaoAtual,this.caminhaoAnterior});

}