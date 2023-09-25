import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:jannat_e_islam/constants/constants.dart';

class TimeToSeconds extends GetxController{
 String CurrentTime ="";
  String printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    update();
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds\nMaghrib ";
  }
String currentTime(String currentTime){
  String CurrentTime = currentTime;
  update();
  return CurrentTime;
}

}