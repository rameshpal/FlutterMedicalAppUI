import 'package:flutter/material.dart';

class ServicesCard extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final imagePath;
  final String serviceName;

  // const ServicesCard({super.key});

  ServicesCard({
    required this.serviceName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.deepPurple.shade100,
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              height: 40,
            ),
            const SizedBox(width: 5),
            Text(
              serviceName,
              style: const TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
