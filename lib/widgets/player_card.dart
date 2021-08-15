import 'package:flutter/material.dart';
import '../Utils/ProjectColors.dart' as ProjectColors;

class PlayerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              height: 190,
              width: 400,
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
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
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.green),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Player name',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 5),
                            Image(
                              image:
                                  AssetImage('assets/images/Brazil_flag.png'),
                            ),
                            SizedBox(width: 18),
                            Text(
                              'Tier: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Silver',
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text('Looking For: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
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
    );
  }
}
