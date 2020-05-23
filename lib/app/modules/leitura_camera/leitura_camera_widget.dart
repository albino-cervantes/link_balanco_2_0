import 'package:flutter/material.dart';
import 'package:linkbalanco2/app/widgets/adicionar_diminuir/adicionar_diminuir_qtd.dart';
import 'package:qr_mobile_vision/qr_camera.dart';
import 'package:vibration/vibration.dart';

class LeituraCameraWidget extends StatefulWidget {
  @override
  _LeituraCameraWidgetState createState() => _LeituraCameraWidgetState();
}

class _LeituraCameraWidgetState extends State<LeituraCameraWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async => false,
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              child: QrCamera(
                fit: BoxFit.cover,
                qrCodeCallback: (code) {
                  Vibration.vibrate();
                  print(code);
                  Vibration.cancel();
                },
              ),
            ),
            Positioned(
              top: 0.0,
              child: Container(
                height: 250.0,
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(100, 0, 0, 0),
                child: Center(
                  child: Text(
                    "Último código de barras lido: \n7898035890023",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                height: 250.0,
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(100, 0, 0, 0),
              ),
            ),
            Positioned(
              bottom: 50.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text(
                        "Quantidade de códigos lidos: 1",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                    AdicionarDiminuirQtd(onSaved: (String onSaved) {  },),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 35.0,
                right: 15.0,
                child: Container(
                  child: GestureDetector(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.exit_to_app,color: Colors.white,),
                        SizedBox(width: 5.0,),
                        Text("Sair", style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                )
            )
          ],
          overflow: Overflow.clip,
        ),
      ),
    );;
  }
}
