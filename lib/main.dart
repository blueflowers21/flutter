import 'package:flutter/material.dart';
import 'contact_container_letter.dart';

void main() {
  runApp(const AppBarApp());
}

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 250, 250, 250),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.grey,
          ),
        ),
        useMaterial3: true,
      ),
      home: const AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    const int tabsCount = 2;
    List<String> titles = <String>[
      'T R I P S',
      'H O T E L S',
    ];
    return DefaultTabController(
      initialIndex: 0,
      length: tabsCount,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            children: <Widget>[
              SizedBox(
                width: 30,
                child: IconButton(
                  alignment: Alignment.centerLeft,
                  icon: const Icon(Icons.menu, color: Colors.grey),
                  tooltip: 'Menu Icon',
                  onPressed: () {
                    // Add logic for handling the Menu Icon here.
                  },
                ),
              ),
              const SizedBox(
                width: 270,
                child: Text(
                  '         Bookings',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Loto',
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 30,
                child: IconButton(
                  alignment: Alignment.centerRight,
                  icon: const Icon(Icons.notifications_none_rounded, color: Colors.grey),
                  tooltip: 'Notifications Icon',
                  onPressed: () {
                    // Add logic for handling the Notifications Icon here.
                  },
                ),
              ),
              SizedBox(
                width: 30,
                child: IconButton(
                  alignment: Alignment.centerRight,
                  icon: const Icon(Icons.search, color: Colors.grey),
                  tooltip: 'Search Icon',
                  onPressed: () {
                    // Add logic for handling the Search Icon here.
                  },
                ),
              ),
            ],
          ),
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          scrolledUnderElevation: 4.0,
          shadowColor: Theme.of(context).shadowColor,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  titles[0],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Loto',
                    fontSize: 20,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  titles[1],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Loto',
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ContactContainerLetter(
                    name: 'Hawaii',
                    destination: 'Sevilla',
                    date: '28 Oct, 2018',
                    hour: '11:00AM',
                    aerolinia: 'Emirates Airways',
                    icon: Icons.airplanemode_active,
                  ),
                  ContactContainerLetter(
                    name: 'Sevilla',
                    destination: 'Monaco',
                    date: '28 Oct, 2018',
                    hour: '11:00AM',
                    aerolinia: 'Emirates Airways',
                    icon: Icons.directions_bus,
                  ),
                  ContactContainerLetter(
                    name: 'Atlanta',
                    destination: 'Marrakech',
                    date: '28 Oct, 2018',
                    hour: '11:00AM',
                    aerolinia: 'Emirates Airways',
                    icon: Icons.airplanemode_active,
                  ),
                  ContactContainerLetter(
                    name: 'Geneva',
                    destination: 'Mexico City',
                    date: '28 Oct, 2018',
                    hour: '11:00AM',
                    aerolinia: 'Emirates Airways',
                    icon: Icons.airplanemode_active,
                  ),
                  ContactContainerLetter(
                    name: 'Reykjavik',
                    destination: 'Sevilla',
                    date: '28 Oct, 2018',
                    hour: '11:00AM',
                    aerolinia: 'Emirates Airways',
                    icon: Icons.directions_boat,
                  ),
                  ContactContainerLetter(
                    name: 'Hawaii',
                    destination: 'Reykjavik',
                    date: '28 Oct, 2018',
                    hour: '11:00AM',
                    aerolinia: 'Emirates Airways',
                    icon: Icons.airplanemode_active,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                 ContactContainerLetter(
                    name: 'Hawaii',
                    destination: 'Sevilla',
                    date: '28 Oct, 2018',
                    hour: '11:00AM',
                    aerolinia: 'Emirates Airways',
                    icon: Icons.airplanemode_active,
                  ),
                  ContactContainerLetter(
                    name: 'Sevilla',
                    destination: 'Monaco',
                    date: '28 Oct, 2018',
                    hour: '11:00AM',
                    aerolinia: 'Emirates Airways',
                    icon: Icons.directions_bus,
                  ),
                  ContactContainerLetter(
                    name: 'Atlanta',
                    destination: 'Marrakech',
                    date: '28 Oct, 2018',
                    hour: '11:00AM',
                    aerolinia: 'Emirates Airways',
                    icon: Icons.airplanemode_active,
                  ),
                  ContactContainerLetter(
                    name: 'Geneva',
                    destination: 'Mexico City',
                    date: '28 Oct, 2018',
                    hour: '11:00AM',
                    aerolinia: 'Emirates Airways',
                    icon: Icons.airplanemode_active,
                  ),
                  ContactContainerLetter(
                    name: 'Reykjavik',
                    destination: 'Sevilla',
                    date: '28 Oct, 2018',
                    hour: '11:00AM',
                    aerolinia: 'Emirates Airways',
                    icon: Icons.directions_boat,
                  ),
                  ContactContainerLetter(
                    name: 'Hawaii',
                    destination: 'Reykjavik',
                    date: '28 Oct, 2018',
                    hour: '11:00AM',
                    aerolinia: 'Emirates Airways',
                    icon: Icons.airplanemode_active,
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
