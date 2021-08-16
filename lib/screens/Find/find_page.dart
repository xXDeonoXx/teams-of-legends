import 'dart:math';

import 'package:flutter/material.dart';
import 'package:teams_of_legends/screens/Find/player_info.dart';
import 'package:teams_of_legends/screens/Find/team_info.dart';
import 'package:teams_of_legends/widgets/player_card.dart';
import 'package:teams_of_legends/widgets/team_card.dart';

import '../../Utils/ProjectColors.dart' as ProjectColors;

class FindPage extends StatefulWidget {
  final String type;
  const FindPage({Key? key, required this.type}) : super(key: key);

  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  String tier = 'Tier';
  List<String> possibleTiers = [
    'Tier',
    'Iron',
    'Bronze',
    'Silver',
    'Gold',
    'Platinum',
    'Diamond',
  ];

  String lane = 'Lane';
  List<String> possibleLanes = [
    'Lane',
    'Top',
    'Jungle',
    'Middle',
    'Support',
    'ADC',
  ];

  String availability = 'Availability';
  List<String> possibleAvailability = [
    'Availability',
    'Morning',
    'Midday',
    'Afternoon',
    'Evening',
    'All Day',
  ];

  List<PlayerInfo> players = [
    PlayerInfo(
        'xXDeonoXx',
        'Gold',
        'Ahri, Zoe, Caitlyn',
        'Brazilian player that loves\nto play mid lane and\nmage champions',
        'https://loremflickr.com/250/250/profile,fox',
        'Middle'),
    PlayerInfo(
        'xXDeonoXx',
        'Gold',
        'Ahri, Zoe, Caitlyn',
        'Brazilian player that loves\nto play mid lane and\nmage champions',
        'https://loremflickr.com/250/250/profile,bird',
        'Middle'),
    PlayerInfo(
        'xXDeonoXx',
        'Gold',
        'Ahri, Zoe, Caitlyn',
        'Brazilian player that loves\nto play mid lane and\nmage champions',
        'https://loremflickr.com/250/250/profile,dog',
        'Middle'),
    PlayerInfo(
        'xXDeonoXx',
        'Gold',
        'Ahri, Zoe, Caitlyn',
        'Brazilian player that loves\nto play mid lane and\nmage champions',
        'https://loremflickr.com/250/250/profile,flower',
        'Middle'),
    PlayerInfo(
        'xXDeonoXx',
        'Gold',
        'Ahri, Zoe, Caitlyn',
        'Brazilian player that loves\nto play mid lane and\nmage champions',
        'https://loremflickr.com/250/250/profile,gamer',
        'Middle'),
  ];

  List<TeamInfo> teams = [
    TeamInfo(
      'Hero Warriors',
      'Midlane, Carry',
      'Somo mais que um time, \nsomos uma família, \njogamos todas as tardes\ne noites',
      'https://loremflickr.com/250/250/profile,gamer',
      'Casual',
    ),
    TeamInfo(
      'Hero Warriors',
      'Midlane, Carry',
      'Somo mais que um time, \nsomos uma família, \njogamos todas as tardes\ne noites',
      'https://loremflickr.com/250/250/profile,gamer',
      'Casual',
    ),
    TeamInfo(
      'Hero Warriors',
      'Midlane, Carry',
      'Somo mais que um time, \nsomos uma família, \njogamos todas as tardes\ne noites',
      'https://loremflickr.com/250/250/profile,gamer',
      'Casual',
    ),
    TeamInfo(
      'Hero Warriors',
      'Midlane, Carry',
      'Somo mais que um time, \nsomos uma família, \njogamos todas as tardes\ne noites',
      'https://loremflickr.com/250/250/profile,gamer',
      'Casual',
    ),
    TeamInfo(
      'Hero Warriors',
      'Midlane, Carry',
      'Somo mais que um time, \nsomos uma família, \njogamos todas as tardes\ne noites',
      'https://loremflickr.com/250/250/profile,gamer',
      'Casual',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find a ' + widget.type),
        backgroundColor: ProjectColors.indigo(),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Container(
          decoration: BoxDecoration(
            color: ProjectColors.darkerBlue(),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 37,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, bottom: 15),
                child: SizedBox(
                  height: 36,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Search',
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: Icon(Icons.search),
                            isDense: true,
                            contentPadding: EdgeInsets.all(8),
                          ),
                        ),
                      ),
                      Flexible(
                        child: DropdownButton<String>(
                          value: tier,
                          icon: const Icon(Icons.arrow_drop_down_sharp),
                          iconSize: 24,
                          elevation: 16,
                          style: const TextStyle(color: Colors.white),
                          underline: Container(
                            height: 2,
                            // color: Colors.deepPurpleAccent,
                          ),
                          dropdownColor: ProjectColors.teal(),
                          onChanged: (String? newValue) {
                            setState(() {
                              tier = newValue!;
                            });
                          },
                          items: possibleTiers
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      Flexible(
                        child: DropdownButton<String>(
                          value: lane,
                          icon: const Icon(Icons.arrow_drop_down_sharp),
                          iconSize: 24,
                          elevation: 16,
                          style: const TextStyle(color: Colors.white),
                          underline: Container(
                            height: 2,
                            // color: Colors.deepPurpleAccent,
                          ),
                          dropdownColor: ProjectColors.teal(),
                          onChanged: (String? newValue) {
                            setState(() {
                              lane = newValue!;
                            });
                          },
                          items: possibleLanes
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      DropdownButton<String>(
                        value: availability,
                        icon: const Icon(Icons.arrow_drop_down_sharp),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.white),
                        underline: Container(
                          height: 2,
                          // color: Colors.deepPurpleAccent,
                        ),
                        dropdownColor: ProjectColors.teal(),
                        onChanged: (String? newValue) {
                          setState(() {
                            availability = newValue!;
                          });
                        },
                        items: possibleAvailability
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Column(
                      children: widget.type == 'player'
                          ? players
                              .map<Padding>((PlayerInfo info) => Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: PlayerCard(info: info),
                                  ))
                              .toList()
                          : teams
                              .map<Padding>((TeamInfo info) => Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: TeamCard(info: info),
                                  ))
                              .toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
