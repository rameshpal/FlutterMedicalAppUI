// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medicalappui/ui/doctors_card.dart';
import 'package:medicalappui/ui/services_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              // Hello text heading
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello,",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text("James Holder",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))
                    ],
                  ),

                  // profile pic
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple.shade100,
                        borderRadius: BorderRadius.circular(7)),
                    child: const Icon(Icons.person),
                  )
                ],
              )),

          // card view

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.pink.shade100),
              child: Row(children: [
                Container(
                  height: 100, width: 100, color: Colors.white,
                  child:Lottie.network('https://lottie.host/c8a247ac-70af-4a27-91df-c3f503e75f4f/Ekl2XXpFR5.json')),

                SizedBox(
                  width: 20,
                ),

                // ignore: unnecessary_const
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("How do you feel?",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text("Fill out your medical card right now.",
                          style: TextStyle(fontSize: 14)),
                      SizedBox(height: 5),
                      Container(
                        margin: EdgeInsets.only(left: 50),
                        width: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple.shade300,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Get started!",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),

          SizedBox(
            height: 25,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  borderRadius: BorderRadius.circular(8)),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help you?'),
              ),
            ),
          ),

          SizedBox(
            height: 25,
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 70,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              ServicesCard(
                  serviceName: 'Dentist', imagePath: 'lib/icons/tooth.png'),
              ServicesCard(
                  serviceName: 'Surgeon', imagePath: 'lib/icons/surgeon.png'),
              ServicesCard(
                  serviceName: 'Medicine', imagePath: 'lib/icons/medicine.png'),
                   ServicesCard(
                  serviceName: 'Dentist', imagePath: 'lib/icons/tooth.png'),
              ServicesCard(
                  serviceName: 'Surgeon', imagePath: 'lib/icons/surgeon.png'),
              ServicesCard(
                  serviceName: 'Medicine', imagePath: 'lib/icons/medicine.png'),
            ]),
          ),

          SizedBox(
            height: 25,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Doctors List",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text("See all")
              ],
            ),
          ),

          SizedBox(
            height: 25,
          ),

         // Expanded(child:
             Container(
              height: 180,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorsCard(
                      doctorName: 'Dr. Ramesh Pal',
                      specialist: 'Surgeon',
                      rating: '4.5',
                      imagePath: 'lib/images/doctor.png'),
                  DoctorsCard(
                      doctorName: 'Dr. Rakesh Pal',
                      specialist: 'Phsychologist',
                      rating: '4.5',
                      imagePath: 'lib/images/doctor_2.png'),
                  DoctorsCard(
                      doctorName: 'Dr. Josophi',
                      specialist: 'Dentist',
                      rating: '4.5',
                      imagePath: 'lib/images/doctor_1.png'),
                       DoctorsCard(
                      doctorName: 'Dr. Ramesh Pal',
                      specialist: 'Surgeon',
                      rating: '4.5',
                      imagePath: 'lib/images/doctor.png'),
                  DoctorsCard(
                      doctorName: 'Dr. Rakesh Pal',
                      specialist: 'Phsychologist',
                      rating: '4.5',
                      imagePath: 'lib/images/doctor_2.png'),
                  DoctorsCard(
                      doctorName: 'Dr. Josophi',
                      specialist: 'Dentist',
                      rating: '4.5',
                      imagePath: 'lib/images/doctor_1.png'),
                ],
              ),
            ),
          // )
        ],
      )),
    );
  }
}
