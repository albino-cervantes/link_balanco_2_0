import 'package:flutter/material.dart';

class AdicionarDiminuirQtd extends StatefulWidget {
  final Function(String onSaved) onSaved;

  const AdicionarDiminuirQtd({@required this.onSaved});

  @override
  _AdicionarDiminuirQtdState createState() => _AdicionarDiminuirQtdState();
}

class _AdicionarDiminuirQtdState extends State<AdicionarDiminuirQtd>
    with AutomaticKeepAliveClientMixin {
  TextEditingController txtQtd = TextEditingController(text: '1');

  onAlterarQtd(double pQtd) {
    double resultado = double.parse(txtQtd.text) + pQtd;
    print(resultado);
    if (resultado >= 0)
      setState(() => txtQtd.value =
          txtQtd.value.copyWith(text: resultado.round().toString()));
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
            icon: Icon(Icons.remove_circle_outline),
            onPressed: () => onAlterarQtd(-1.0)),
        Container(
          width: 50,
          child: TextFormField(
            controller: txtQtd,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            onSaved: widget.onSaved,
            style: TextStyle(fontSize: 30.0),
          ),
        ),
        IconButton(
            icon: Icon(Icons.add_circle_outline),
            onPressed: () => onAlterarQtd(1.0)),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
