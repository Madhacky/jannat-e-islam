import 'package:flutter/material.dart';
import 'package:jannat_e_islam/views/widgets/gradientCard.dart';
import 'dart:math' as math; 
class NamazScreen extends StatefulWidget {
  @override
  State<NamazScreen> createState() => _NamazScreenState();
}

class _NamazScreenState extends State<NamazScreen> {
  @override
  List<String> cardtitle = [
    "Fajr",
    "Dhuhr",
    "Asr",
    "Maghrib",
    "Isha",
    "Witr",
    "Tahajjud",
    "Jummah",
    "Istikhara",
    "Janazah",
    "Eid",
    "Duha"
  ];

  List<String> cardContent = [
    "How to Pray",
    "99 Names",
    "Daily",
    "Collection",
    "Read Dua",
    "Story of",
    "Translation",
    "Daily New"
  ];
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        centerTitle: true,
        title:const Text(
          'HOW TO PRAY',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GridView(physics:const BouncingScrollPhysics(),
        gridDelegate:
           const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,crossAxisSpacing: 0, mainAxisSpacing: 0),
        children: List.generate(
          cardtitle.length, // Number of cards to generate
          (index) => GradientCard(
            // You can customize the gradient colors and card content here
            gradientColors: [
              Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
              Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0)
              // Colors.blue,
              // Colors.purple,
            ],
            cardTitle: cardtitle[index],
            cardContent: "",
          ),
        ),
      ),
    );
  }
}