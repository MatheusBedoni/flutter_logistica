import 'package:flutter/material.dart';

import 'package:rarolabs_desafio/view/widgets/informa_widget.dart';
import 'package:rarolabs_desafio/view/widgets/vagas_list.dart';
import 'package:rarolabs_desafio/view_model/vagas_List_viw_model.dart';

import '../v_constants.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  VagasListViewModel vagasListViewModel = new VagasListViewModel();

  @override
  void initState() {
    super.initState();
    vagasListViewModel.fetchVagas();

    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Vagas")
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: <Widget>[

              Expanded(
                  flex:1,
                  child:VagasList(vagas:vagasListViewModel.vagas)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                  InformaWidget(title:'ocupado',color:  LayoutConstants.corOcupado,),
                  InformaWidget(title:'desocupado',color:  LayoutConstants.corDesocupado,),
                ],
              )
            ])
        )

    );
  }
  }


