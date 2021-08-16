import 'package:flutter/material.dart';
import 'package:teams_of_legends/screens/Find/team_info.dart';
import '../../../Utils/ProjectColors.dart' as ProjectColors;

class TeamCard extends StatelessWidget {
  final TeamInfo info;

  const TeamCard({Key? key, required this.info}) : super(key: key);

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
                    // clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // image: DecorationImage(
                      //   fit: BoxFit.fill,
                      //   image: NetworkImage('https://i.imgur.com/BoN9kdC.png'),
                      // ),
                    ),
                    child: Stack(
                      children: [
                        ClipOval(
                          child: Image.network(
                            info.profilePic,
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        // Positioned(
                        //   bottom: -15,
                        //   right: -15,
                        //   child: Image.network(
                        //     'https://static.wikia.nocookie.net/leagueoflegends/images/8/8a/Season_2019_-_Gold_2.png/revision/latest/scale-to-width-down/250?cb=20181229234921',
                        //     height: 70,
                        //     width: 70,
                        //   ),
                        // ),
                      ],
                      clipBehavior: Clip.none,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                info.teamName,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5),
                              Image(
                                image:
                                    AssetImage('assets/images/Brazil_flag.png'),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                'Looking for: ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(info.lookingFor)
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bio',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    info.bio,
                                    softWrap: true,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                              Container(
                                width: 60,
                                height: 80,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ProjectColors.teal()),
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
                                          'Invite',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
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
                                info.type,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
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
