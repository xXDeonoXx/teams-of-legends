import 'package:flutter/material.dart';
import 'package:teams_of_legends/widgets/player_card.dart';
import '../../Utils/ProjectColors.dart' as ProjectColors;

class FindPage extends StatefulWidget {
  const FindPage({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find a player'),
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
                padding: const EdgeInsets.symmetric(horizontal: 12),
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                child: Column(
                  children: [
                    PlayerCard(),
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
