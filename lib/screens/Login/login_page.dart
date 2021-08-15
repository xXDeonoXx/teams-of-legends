import 'package:flutter/material.dart';
import '../../Utils/ProjectColors.dart' as ProjectColors;



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String currentForm = 'login';

  void changeFormCallBack(String form) {
    setState(() {
      currentForm = form;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (() {
        switch (currentForm) {
          case 'login':
            return LoginForm(
              changeForm: changeFormCallBack,
            );
          case 'signUp':
            return SignUpForm(
              changeForm: changeFormCallBack,
            );
          default:
            return LoginForm(
              changeForm: changeFormCallBack,
            );
        }
      }()),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key, required this.changeForm}) : super(key: key);
  final void Function(String) changeForm;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/ashe_background.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Color(0x031133).withOpacity(0.5),
            BlendMode.hardLight,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Login to your\nAccount',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 26),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () => {changeForm('signUp')},
                  child: Text(
                    'signUp',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                        primary: ProjectColors.indigo(),
                        padding: EdgeInsets.symmetric(vertical: 20)),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key, required this.changeForm}) : super(key: key);
  final void Function(String) changeForm;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/ashe_background.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Color(0x031133).withOpacity(0.5),
            BlendMode.hardLight,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Create a new\nAccount',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 26),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Username',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
                filled: true,
                fillColor: Colors.white,
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Already have an an account? ",
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () => {changeForm('login')},
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    child: Text('SignUp'),
                    style: ElevatedButton.styleFrom(
                        primary: ProjectColors.indigo(),
                        padding: EdgeInsets.symmetric(vertical: 20)),
                    onPressed: () {
                      changeForm('login');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
