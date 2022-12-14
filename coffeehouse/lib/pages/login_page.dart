import 'package:coffeehouse/data/bd_helper.dart';
import 'package:coffeehouse/data/cafe_dao.dart';
import 'package:coffeehouse/data/shared_pref_helper.dart';
import 'package:coffeehouse/data/user_dao.dart';
import 'package:coffeehouse/pages/home_page.dart';
import 'package:coffeehouse/pages/registro_user.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: buildBody(),
      ),
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildCardCafeHeader(),
              const SizedBox(height: 48),
              const Placeholder(fallbackHeight: 150),
              const SizedBox(height: 42),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo e-mail obrigatório';
                  }
                  return null;
                },
                controller: userController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Usuário'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo senha obrigatório';
                  } else if (value.length < 6) {
                    return 'Senha deve possuir no mínimo 8 digitos';
                  }

                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Senha'),
              ),
              const SizedBox(height: 32),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: onPressed,
                style:
                ElevatedButton.styleFrom(primary: const Color(0xFF3E2723)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'Entrar com a conta Hurb',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: onPressedRegister,
                style:
                ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'Registrar Usuário',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF3E2723),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildCardCafeHeader() {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF8EFE9),
        image: DecorationImage(
            image: NetworkImage(
                'https://i.pinimg.com/originals/55/57/43/555743eae8ab6f20333e5c55d0789713.jpg'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36),
          topRight: Radius.circular(36),
          bottomRight: Radius.circular(36),
          bottomLeft: Radius.circular(36),
        ),
      ),
      padding: EdgeInsets.all(160),
    );
  }

  onPressed() async {
    if (_formKey.currentState!.validate()) {
      String userDigitado = userController.text;
      String passwordDigitado = passwordController.text;

      bool resultado = await UserDao().autenticar(user: userDigitado, password: passwordDigitado);

      if (resultado) {
        await SharedPrefHelper().login();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          ),
        );
      } else {
        showSnackBar('Usuário/Senha incorretos');
      }
    } else {
      showSnackBar("Erro na validação");
    }
  }

  showSnackBar(String msg) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(
        vertical: 80,
        horizontal: 32,
      ),
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  onPressedRegister(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const RegisterUser();
        },
      ),
    );
  }

}