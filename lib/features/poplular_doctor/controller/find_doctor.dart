import 'package:get/get.dart';
import 'package:intl/intl.dart';

abstract class SelectTimeDoctorController extends GetxController {
  changeDay(int index);
  bookingNow();

  nextAvailability();

  contactClinic();
  DateTime convert12To24(String time12);
  List<String> generateTimeSlots(String fromHour, String toHour,
      {int timeInterval = 30});
}

class SelectTimeDoctorControllerImp extends SelectTimeDoctorController {
  int selectedDay = 0;
  bool slotsAvailable = false;

  List<String> daysOfWeek = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  List<String> afternoonSlots = [];
  List<String> eveningSlots = [];

  List<String> generateDaysOfWeek() {
    List<String> daysOfWeek = [];
    for (int i = 0; i < 7; i++) {
      DateTime date = DateTime.now().add(Duration(days: i));
      String dayOfWeek =
          "${i == 0 ? "Today" : i == 1 ? "Tomorrow" : DateFormat('EEEE').format(date)}, ${DateFormat.d().format(date)} ${DateFormat.MMMM().format(date).substring(0, 3)}";
      daysOfWeek.add(dayOfWeek);
    }
    return daysOfWeek;
  }

  @override
  changeDay(int index) {
    selectedDay = index;
    slotsAvailable = !slotsAvailable;
    update();
  }

  @override
  bookingNow() {
    update();
  }

  @override
  void onInit() {
    afternoonSlots = generateTimeSlots('1:00 PM', '4:00 PM', timeInterval: 30);
    eveningSlots = generateTimeSlots('5:00 PM', '7:00 PM', timeInterval: 20);
    daysOfWeek = generateDaysOfWeek();
    super.onInit();
  }

  @override
  void nextAvailability() {}

  @override
  void contactClinic() {}
//     List<String> slots = generateTimeSlots("9:00 AM", "5:00 PM", timeInterval: 30);
// debugPrint(slots);

  // @override
  // List<String> generateTimeSlots(String fromHour, String toHour,
  //     {int timeInterval = 30}) {
  //   DateTime fromHour24 = convert12To24(fromHour);
  //   DateTime toHour24 = convert12To24(toHour);
  //   // int frommin24 = convert12To24(fromHour).minute;
  //   // int tomin24 = convert12To24(toHour).minute;

  //   List<String> timeSlots = [];

  //   for (DateTime hour = fromHour24;
  //       hour.difference(toHour24).inMinutes >= 0;
  //       hour.add(Duration(minutes: timeInterval))) {
  //     // int minutes = 0;
  //     // if (hour == fromHour24 && fromHour24 % 12 == 0) {
  //     //   minutes = timeInterval ~/ 2;
  //     // } else {
  //     //   minutes = timeInterval;
  //     // }

  //     String hourStr = (hour.hour % 12 == 0 ? 12 : hour.hour % 12)
  //         .toString()
  //         .padLeft(2, '0');
  //     String amOrPm = hour.hour < 12 ? "AM" : "PM";
  //     String formattedTime =
  //         '$hourStr:${{hour.minute}.toString().padLeft(2, '0')} $amOrPm';
  //     timeSlots.add(formattedTime);
  //   }

  //   return timeSlots;
  // }

  // @override
  // List<int> convert12To24(String time12) {
  //   List<String> timeParts = time12.split(':');
  //   int hour = int.parse(timeParts[0]);
  //   int min = int.parse(timeParts[1].substring(0, 2)); // Extract minutes
  //   String amOrPm = timeParts[1].substring(3).toUpperCase(); // Extract AM/PM

  //   if (amOrPm == "PM" && hour != 12) {
  //     hour += 12;
  //   } else if (amOrPm == "AM" && hour == 12) {
  //     hour = 0;
  //   }
  //   return [hour, min];
  // }

  @override
  List<String> generateTimeSlots(String fromHour, String toHour,
      {int timeInterval = 30}) {
    DateTime fromHour24 = convert12To24(fromHour);
    DateTime toHour24 = convert12To24(toHour);

    List<String> timeSlots = [];

    for (DateTime hour = fromHour24;
        hour.difference(toHour24).inMinutes <= 0;
        hour = hour.add(Duration(minutes: timeInterval))) {
      String hourStr = (hour.hour % 12 == 0 ? 12 : hour.hour % 12)
          .toString()
          .padLeft(2, '0');
      String minuteStr = hour.minute.toString().padLeft(2, '0');
      String amOrPm = hour.hour < 12 ? "AM" : "PM";
      String formattedTime = '$hourStr:$minuteStr $amOrPm';
      timeSlots.add(formattedTime);
    }

    return timeSlots;
  }

  @override
  DateTime convert12To24(String time12) {
    final format = DateFormat("h:mm a");
    final dateTime = format.parse(time12);
    return dateTime;
  }
}
