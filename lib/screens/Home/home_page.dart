import 'package:flutter/material.dart';
import '../../Utils/ProjectColors.dart' as ProjectColors;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home'),
      // ),
      body: PickaProfileType(),
    );
  }
}

class PickaProfileType extends StatelessWidget {
  const PickaProfileType({Key? key}) : super(key: key);

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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Text(
                'What are you looking for:',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: Text('Create a team'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[900],
                          padding: EdgeInsets.symmetric(vertical: 20)),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      child: Text('Join a team'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.indigo[900],
                          padding: EdgeInsets.symmetric(vertical: 20)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
