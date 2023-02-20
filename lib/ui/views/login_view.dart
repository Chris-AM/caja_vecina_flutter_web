import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Email',
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
          const TextField(
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "juanmolinar@almacenaqui.cl",
              hintStyle: TextStyle(
                fontSize: 14,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            textAlign: TextAlign.left,
            maxLines: 1,
            keyboardType: TextInputType.text,
            // controller: myController,
            maxLength: 30,
          ),
          const Text('Contraseña'),
          const TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            textAlign: TextAlign.left,
            maxLines: 1,
            keyboardType: TextInputType.text,
            // controller: myController,
            maxLength: 30,
          ),
          GestureDetector(
            onTap: () => _launchURL(), // call the _launchURL here
            child: const Text(
              "¿Olvidaste tu contraseña?",
              style: TextStyle(fontSize: 16.0, color: Colors.blue),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // La acción que se ejecutará cuando se presione el botón
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            child: const Text('Continuar'),
          ),
          const Text(
            '¿No tienes cuenta Compraqui?',
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
          GestureDetector(
            // onTap: () => _launchURL(), // call the _launchURL here
            child: const Text(
              "Crear cuenta",
              style: TextStyle(fontSize: 16.0, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}

_launchURL() async {
  var url = Uri.parse('https://www.google.com');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
