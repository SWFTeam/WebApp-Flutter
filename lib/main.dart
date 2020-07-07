import 'package:Web_backoffice/views/Users/users_view.dart';
import 'package:Web_backoffice/views/challenges/challenges_view.dart';
import 'package:Web_backoffice/views/experimentation/experimentation_view.dart';
import 'package:Web_backoffice/views/home/home_view.dart';
import 'package:Web_backoffice/views/issues/issues_view.dart';
import 'package:Web_backoffice/widgets/app_routes_observer.dart';
import 'app/routes_names.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        pageTransitionsTheme: PageTransitionsTheme(
          builders: Map<TargetPlatform,
                  _InanimatePageTransitionsBuilder>.fromIterable(
              TargetPlatform.values.toList(),
              key: (dynamic k) => k,
              value: (dynamic _) => const _InanimatePageTransitionsBuilder()),
        )
      ),
      initialRoute: RoutesNames.home,
      navigatorObservers: [AppRouteObserver()],
      routes: {
        RoutesNames.home: (_)=> HomeView(),
        RoutesNames.users:(_)=> UsersView(),
        RoutesNames.challenges:(_)=>ChallengesView(), 
        RoutesNames.issues:(_)=>IssuesView(),
        RoutesNames.experiementation:(_)=>ExperimentationView(),
      },
    );
  }
}

class _InanimatePageTransitionsBuilder extends PageTransitionsBuilder {
  const _InanimatePageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return child;
  }
}