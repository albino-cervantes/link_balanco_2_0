import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:linkbalanco2/app/utils/colors_hexadecimal_converter.dart';
import 'constantes/Strings.dart';

class AppWidget extends StatelessWidget {
  Color get primary => ColorsHexadecimalConverter.ColorConverter('#8ACE68');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Modular.navigatorKey,
      title: Strings.APP_NAME,
      onGenerateRoute: Modular.generateRoute,
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: primary
        ),
        primaryColor: primary,
        scaffoldBackgroundColor: ColorsHexadecimalConverter.ColorConverter('#fafafa'),
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            headline6: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          )
        )
      ),
      initialRoute: '/',
    );
  }
}
