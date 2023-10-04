import 'package:flutter/material.dart';

class ContactContainerLetter extends StatelessWidget {
  final String name;
  final String destination;
  final String date;
  final String hour;
  final String aerolinia;
  final IconData? icon;

  const ContactContainerLetter({
    Key? key,
    required this.name,
    required this.destination,
    required this.date,
    required this.hour,
    required this.aerolinia,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 9.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 34.0,
              backgroundColor: Color.fromARGB(255, 255, 190, 212),
              child: Icon(
                icon,
                color: Colors.pinkAccent,
                size: 40.0,
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 94, 94, 94),
                        ),
                      ),
                      const SizedBox(width: 13.0),
                      Icon(Icons.arrow_forward, color: Colors.grey),
                      const SizedBox(width: 13.0),
                      Text(
                        destination,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 94, 94, 94),
                        ),
                      ),
                    ],
                  ),
                  
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        date,
                        style: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 13.0),
                      Icon(Icons.remove_rounded, color: Colors.grey),
                      const SizedBox(width: 13.0),
                      Text(
                        hour,
                        style: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  
                  Text(
                    aerolinia,
                    style: const TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16.0),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                  size: 30.0,
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
