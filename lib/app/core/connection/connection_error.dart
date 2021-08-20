import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:thecat_atlas/app/shared/theme_utils.dart';

class ConnectionError extends StatelessWidget {
  const ConnectionError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Material(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Image.asset('lib/assets/images/sleeping.png'),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Ops, algo deu errado!',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Por favor, verifique sua conexão!',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                     Modular.to.pop();
                  },
                  child: Text(
                    'Tentar novamente',
                    style: TextStyle(fontFamily: 'montserrat'),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
