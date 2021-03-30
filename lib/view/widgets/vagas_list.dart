import 'package:flutter/material.dart';
import 'package:rarolabs_desafio/view/widgets/text_widget.dart';
import 'package:rarolabs_desafio/view_model/vagas_view_model.dart';

import '../v_constants.dart';



class VagasList extends StatelessWidget {

  final List<VagasViewModel> vagas;

  VagasList({this.vagas});

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      crossAxisCount: 3,
      children: List.generate( this.vagas.length, (index) {
        final vaga = this.vagas[index];
        return Hero(
          tag: vaga.nome,
          child:GestureDetector(
            onTap: (){
              _settingModalBottomSheet(context,vaga);
            },
            child:Container(
              margin: EdgeInsets.only(top:15.0,left: 5,right: 5),
              decoration: BoxDecoration(
                color:vaga.ocupado == false ?  LayoutConstants.corDesocupado :   LayoutConstants.corOcupado,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(2, 8), // Shadow position
                  ),
                ],
              ),
              child: Center(
                child:  TextWidget(title: vaga.nome.toString(),),
              ),

            )
          )
        );
      }),
    );
  }
  void _settingModalBottomSheet(context,VagasViewModel vaga){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc){
          return Container(

              height: 200,
              decoration: BoxDecoration(
                color: vaga.ocupado == true ? LayoutConstants.corOcupado : LayoutConstants.corDesocupado,
              ),
              child: Column(children: <Widget>[
                Stack(
                  children:<Widget> [

                    Container(

                      width: MediaQuery.of(context).size.width,
                      height: 200,
                    ),
                    Positioned(
                        right: 20,
                        top:5,
                        child: Image.asset(LayoutConstants.truckimg,
                          fit: BoxFit.fill,width:  MediaQuery.of(context).size.width/2,height: 180,)
                    ),
                    vaga.ocupado == true ?
                    Positioned(
                        left: 10,
                        top:10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget> [
                            Text(
                                vaga.vaga.caminhaoAtual.nome ,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: MediaQuery.of(context).size.height/55
                                )
                            ),
                            Text(
                                'Entrou as ${vaga.vaga.caminhaoAtual.hora}' ,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: MediaQuery.of(context).size.height/55
                                )
                            ),

                          ],
                        )
                    ):Container(),

                    Positioned(
                        left: 10,
                        bottom:55,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget> [
                            Text(
                                'último caminhão' ,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: MediaQuery.of(context).size.height/65
                                )
                            ),
                            Text(
                                vaga.vaga.caminhaoAnterior.nome  ,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: MediaQuery.of(context).size.height/55
                                )
                            ),
                            Text(
                                'Entrou as ${vaga.vaga.caminhaoAnterior.hora}' ,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: MediaQuery.of(context).size.height/55
                                )
                            ),

                          ],
                        )
                    )
                  ],
                )



              ])
          );
        }
    );
  }
}