import 'package:rarolabs_desafio/data/caminhao.dart';
import 'package:rarolabs_desafio/view_model/vagas_view_model.dart';

import '../vaga.dart';

abstract class ApiService {
  List<VagasViewModel> pegaVagas();
}


class Api  implements ApiService{


  @override
  List<VagasViewModel> pegaVagas()  {
    List<VagasViewModel> vagas = [];

    Caminhao caminhao = new Caminhao();
    caminhao.nome = "BRANCO";
    caminhao.hora = "16h";
    Caminhao caminhao2 = new Caminhao();
    caminhao2.nome = "CINZA";
    caminhao2.hora = "10h";
    Vaga vaga = new Vaga(caminhaoAtual: caminhao,caminhaoAnterior: caminhao2);
    vaga.nome = 1;
    vaga.ocupado = true;
    VagasViewModel vagasViewModel = new VagasViewModel(vaga: vaga);
    vagas.add(vagasViewModel);

    Caminhao caminhao3 = new Caminhao();
    caminhao3.nome = "AMARELO";
    caminhao3.hora = "16h";
    vaga = new Vaga(caminhaoAtual: null,caminhaoAnterior: caminhao3);
    vaga.nome = 2;
    vaga.ocupado = false;

    VagasViewModel vagasViewModel2 = new VagasViewModel(vaga: vaga);
    vagas.add(vagasViewModel2);

    Caminhao caminhao4 = new Caminhao();
    caminhao4.nome = "VERDE";
    caminhao4.hora = "17h";
    Caminhao caminhao5 = new Caminhao();
    caminhao5.nome = "AZUL";
    caminhao5.hora = "10h";
     vaga = new Vaga(caminhaoAtual: caminhao4,caminhaoAnterior: caminhao5);
    vaga.nome = 3;
    vaga.ocupado = true;
    VagasViewModel vagasViewModel3 = new VagasViewModel(vaga: vaga);
    vagas.add(vagasViewModel3);






    return vagas;
  }



}