import 'package:flutter/material.dart';
import '../../Utils/ProjectColors.dart' as ProjectColors;

class RegisterTeam extends StatefulWidget {
  const RegisterTeam({Key? key}) : super(key: key);

  @override
  _RegisterTeamState createState() => _RegisterTeamState();
}

class _RegisterTeamState extends State<RegisterTeam> {
  bool _isChecked = false;
  String _currText = '';

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

  List<String> possibleTypes = [
    'Casual',
    'Professional',
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
        title: Text('Create your team profile'),
        backgroundColor: ProjectColors.indigo(),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
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
                ])),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
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
                                    image: NetworkImage(
                                        'https://i.imgur.com/BoN9kdC.png'))),
                          ),
                          Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Team name',
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
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          Text(
                            'Type',
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Flexible(
                            child: Container(
                              height: 350.0,
                              child: Column(
                                children: possibleTypes
                                    .map((t) => CheckboxListTile(
                                          title: Text(
                                            t,
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                          tileColor: Colors.white,
                                          selectedTileColor: Colors.white,
                                          checkColor: Colors.black,
                                          activeColor: Colors.white,
                                          value: _isChecked,
                                          onChanged: (val) {
                                            setState(() {
                                              _isChecked = val!;
                                              if (val == true) {
                                                _currText = t;
                                              }
                                            });
                                          },
                                        ))
                                    .toList(),
                              ),
                            ),
                          ),
                          Flexible(
                            child: TextField(
                              minLines: 8,
                              maxLines: 12,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Description',
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
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 80)),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('/find-players');
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
        ),
      ),
    );
  }
}
