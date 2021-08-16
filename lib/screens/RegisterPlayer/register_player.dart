import 'package:flutter/material.dart';
import 'package:teams_of_legends/widgets/player_card.dart';
import '../../Utils/ProjectColors.dart' as ProjectColors;

class RegisterPlayer extends StatefulWidget {
  const RegisterPlayer({Key? key}) : super(key: key);

  @override
  _RegisterPlayerState createState() => _RegisterPlayerState();
}

class _RegisterPlayerState extends State<RegisterPlayer> {
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

  String country = 'Country';
  List<String> possibleCountries = [
    'Country',
    'Belgium',
    'Brazil',
    'Canada',
    'China',
    'Croatia',
    'Denmark',
    'France',
    'Germany',
    'Korea',
    'Taiwan',
    'United States',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create your player profile'),
        backgroundColor: ProjectColors.indigo(),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Container(
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
                  ])
          ),
          child: Column(
            children: [
              SizedBox(
                height: 37,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 720,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://i.imgur.com/BoN9kdC.png'))),
                      ),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Nickname',
                            filled: true,
                            fillColor: Colors.white,
                            isDense: true,
                            contentPadding: EdgeInsets.all(12),
                          ),
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                      Flexible(
                        child: DropdownButton<String>(
                          value: country,
                          icon: const Icon(Icons.arrow_drop_down_sharp),
                          iconSize: 24,
                          elevation: 16,
                          style: const TextStyle(color: Colors.white),
                          underline: Container(
                            height: 2,
                            color: Colors.white,
                          ),
                          dropdownColor: ProjectColors.teal(),
                          onChanged: (String? newValue) {
                            setState(() {
                              country = newValue!;
                            });
                          },
                          items: possibleCountries
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
                          value: tier,
                          icon: const Icon(Icons.arrow_drop_down_sharp),
                          iconSize: 24,
                          elevation: 16,
                          style: const TextStyle(color: Colors.white),
                          underline: Container(
                            height: 2,
                            color: Colors.white,
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
                            color: Colors.white,
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
                          color: Colors.white,
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
                      Flexible(
                        child: TextField(
                          minLines: 8,
                          maxLines: 12,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Bio',
                            filled: true,
                            fillColor: Colors.white,
                            isDense: true,
                            contentPadding: EdgeInsets.all(12),
                          ),
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                      Flexible(
                        child: ElevatedButton(
                          child: Text('Save'),
                          style: ElevatedButton.styleFrom(
                              primary: ProjectColors.indigo(),
                              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80)),
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/home');
                          },
                        ),
                      ),
                    ],
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
