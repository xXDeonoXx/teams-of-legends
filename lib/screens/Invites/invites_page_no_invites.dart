import 'package:flutter/material.dart';
import '../../Utils/ProjectColors.dart' as ProjectColors;

class InvitesPageNoInvites extends StatefulWidget {
  const InvitesPageNoInvites({Key? key}) : super(key: key);

  @override
  _InvitesPageNoInvitesState createState() => _InvitesPageNoInvitesState();
}

class NothingToShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage('assets/images/sad_amumu.png')),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                ProjectColors.darkerBlue(),
                ProjectColors.lightBlue(),
              ],
              stops: [
                0.6,
                0.9,
              ])),
      child: Stack(children: [
        Align(
          alignment: Alignment(0.1, 0.5),
          child: Text('It feels like you are alone here.',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              )),
        ),
        Align(
          alignment: Alignment(0.1, 0.6),
          child: Text('Find a team!',
              style: TextStyle(
                  shadows: [Shadow(color: Colors.white, offset: Offset(0, -5))],
                  fontSize: 22,
                  color: Colors.transparent,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.white)),
        )
      ]),
    );
  }
}

class _InvitesPageNoInvitesState extends State<InvitesPageNoInvites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Invitations'),
        backgroundColor: ProjectColors.darkerBlue(),
        actions: [
          GestureDetector(
            child: Image(image: AssetImage('assets/images/teamXIco.png')),
          )
        ],
      ),
      body: NothingToShow(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.of(context).pushReplacementNamed('/invites-no-invite');
              break;

            case 1:
              Navigator.of(context).pushReplacementNamed('/invites');
              break;

            default:
              Navigator.of(context).pushReplacementNamed('/invites');
          }
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: ProjectColors.navBar(),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.power_settings_new),
            label: '',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
