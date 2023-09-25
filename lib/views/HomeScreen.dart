import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:jannat_e_islam/constants/constants.dart';
import 'package:jannat_e_islam/controllers/TimeConvertToSeconds.dart';
import 'package:jannat_e_islam/views/widgets/gradientCard.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override


  var format = DateFormat("HH:mm");
  TimeToSeconds timeToSeconds = Get.put(TimeToSeconds());
  @override
  Widget build(BuildContext context) {
  
    var one = format.parse(format.format(DateTime.now()));
    var two = format.parse(timeToSeconds.currentTime(sampleTime["Isha"]));

    return DraggableHome(
      fullyStretchable: true,
      headerWidget: Center(
        child: CircularCountDownTimer(
          duration: two.difference(one).inSeconds,
          initialDuration: 0,
          controller: CountDownController(),
          width: Get.width / 2,
          height: Get.height / 2,
          ringColor: Colors.grey[300]!,
          ringGradient: null,
          fillColor: Colors.purpleAccent[100]!,
          fillGradient: null,
          backgroundColor: Colors.purple[500],
          backgroundGradient: null,
          strokeWidth: 20.0,
          strokeCap: StrokeCap.round,
          textStyle: TextStyle(
              fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
          textFormat: CountdownTextFormat.S,
          isReverse: true,
          isReverseAnimation: true,
          isTimerTextShown: true,
          autoStart: true,
          onStart: () {
            debugPrint('Countdown Started');
          },
          onComplete: () {
            debugPrint('Countdown Ended');
          },
          onChange: (String timeStamp) {
            debugPrint('Countdown Changed $timeStamp');
          },
          timeFormatterFunction: (defaultFormatterFunction, duration) {
            if (duration.inSeconds == 0) {
              return "Start";
            } else {
              return timeToSeconds.printDuration(duration);

              //  Function.apply(defaultFormatterFunction, [duration]);
            }
          },
        ),
      ),
      title: Text(
        'JANNAT-E-ISLAM',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      body: [
        GridView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: List.generate(
            8, // Number of cards to generate
            (index) => GradientCard(
              onTap: () => Get.toNamed("/Namaz"),
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
              cardContent: cardContent[index],
            ),
          ),
        ),
      ],
    );
  }
}
