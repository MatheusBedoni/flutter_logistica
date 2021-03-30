
import 'package:flutter/material.dart';
import 'package:rarolabs_desafio/data/service/s_api.dart';
import 'package:rarolabs_desafio/data/vaga.dart';
import 'package:rarolabs_desafio/view_model/vagas_view_model.dart';



class VagasListViewModel  {

  List<VagasViewModel> vagas = [];
  Api api = new Api();

  Future<void> fetchVagas() async {

    vagas = api.pegaVagas();
  }

}