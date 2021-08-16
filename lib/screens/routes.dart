import 'package:flutter/material.dart';
import 'package:teams_of_legends/screens/Find/find_page.dart';
import 'package:teams_of_legends/screens/Home/home_page.dart';
import 'package:teams_of_legends/screens/Invites/invites_page.dart';
import 'package:teams_of_legends/screens/Login/login_page.dart';
import 'package:teams_of_legends/screens/RegisterPlayer/register_player.dart';
import 'package:teams_of_legends/screens/RegisterTeams/register_team.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginPage());

      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());

      case '/find':
        return MaterialPageRoute(builder: (_) => FindPage());

      case '/invites':
        return MaterialPageRoute(builder: (_) => InvitesPage());

      case '/register-player':
        return MaterialPageRoute(builder: (_) => RegisterPlayer());


      case '/register-team':
        return MaterialPageRoute(builder: (_) => RegisterTeam());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Algo inesperado aconteceu'),
        ),
        body: Center(
          child: Text('Uma navegação inesperada aconteceu'),
        ),
      );
    });
  }
}
