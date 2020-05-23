import 'package:flutter/material.dart';

class TextFormFieldDefault extends StatelessWidget {
  final String labeltext;
  final bool obscuretext;//mostrar senha ou nao
  final IconData icondata;
  final TextInputType textInputtype;
  final TextEditingController controller;
  final Function onchange;

  TextFormFieldDefault(
      {this.labeltext,
      this.obscuretext,
      this.icondata,
      this.textInputtype,
      this.controller,
      this.onchange});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black, width: 0.5),
        ),
      ),
      child: TextFormField(
        onChanged: onchange,
        controller: controller,
        obscureText: obscuretext,
        keyboardType: textInputtype,
        style: TextStyle(color: Colors.black, fontSize: 20.0),
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: labeltext,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
          contentPadding:
              EdgeInsets.only(top: 20, right: 20, bottom: 20, left: 5),
        ),
      ),
    );
  }


}
