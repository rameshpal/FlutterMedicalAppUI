import 'package:flutter/material.dart';

class DoctorsCard extends StatelessWidget {
  final imagePath;
  final String rating;
  final String doctorName;
  final String specialist;

  // const DoctorsCard({super.key});

  DoctorsCard({
    required this.doctorName,
    required this.specialist,
    required this.rating,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.deepPurple.shade100,
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            const SizedBox(height: 7),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                height: 40,
              ),
            ),
            const SizedBox(height: 7),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow.shade400),
                Text(rating,
                    style: const TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(height: 7),
            Text(
              doctorName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 7),
            Text(specialist, style: const TextStyle(fontSize: 12))
          ],
        ),
      ),
    );
  }
}
