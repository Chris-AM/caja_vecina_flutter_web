import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  LoginViewState createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Text(
                'Email',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
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
            const Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Text(
                'Contraseña',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            TextField(
              obscureText: _obscureText,
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                  hintText: 'Contraseña',
                  filled: true,
                  fillColor: Colors.white,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                  )),
              textAlign: TextAlign.left,
              maxLines: 1,
              keyboardType: TextInputType.text,
              // controller: myController,
              maxLength: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: GestureDetector(
                onTap: () => _launchURL(), // call the _launchURL here
                child: const Text(
                  "¿Olvidaste tu contraseña?",
                  style: TextStyle(fontSize: 16.0, color: Colors.blue),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                  onPressed: () {
                    // La acción que se ejecutará cuando se presione el botón
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                      const Size(double.infinity, 40),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: const Text('Continuar'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Center(
                child: Text(
                  '¿No tienes cuenta Compraqui?',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () => _launchURL(), // call the _launchURL here
                child: const Text(
                  "Crear cuenta",
                  style: TextStyle(fontSize: 16.0, color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
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
