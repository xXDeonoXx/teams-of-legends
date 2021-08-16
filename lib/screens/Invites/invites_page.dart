import 'package:flutter/material.dart';
import '../../Utils/ProjectColors.dart' as ProjectColors;

class InvitesPage extends StatefulWidget {
  const InvitesPage({Key? key}) : super(key: key);

  @override
  _InvitesPageState createState() => _InvitesPageState();
}

class InvitesFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Column(
            children: [
              Container(
                height: 190,
                width: 400,
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ProjectColors.cardBackground().withOpacity(0.9),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://i.imgur.com/BoN9kdC.png'))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Team Name X ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Image(
                                  image: AssetImage(
                                      'assets/images/Brazil_flag.png'))
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text('Looking For: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Carry')
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Bio',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Procuro novatos para \nensinar a jogar bem \npara ter uma equipe \ncom potencial.'),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 60,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ProjectColors.teal(),
                            ),
                            child: Center(
                              child: Text(
                                'Casual',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: ProjectColors.teal()),
                      child: GestureDetector(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                            ),
                            Center(
                              child: Text(
                                'Ask to join',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InvitesPageState extends State<InvitesPage> {
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
      body: InvitesFeed(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.of(context).pushReplacementNamed('/invites-no-invite');
              break;

            case 1:
              Navigator.of(context).pushReplacementNamed('/invites');
              break;

            case 2:
              Navigator.of(context).pushReplacementNamed('/');
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
