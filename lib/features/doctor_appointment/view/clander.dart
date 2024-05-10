import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/core/imports/export_path_packages.dart';
import 'package:doctor/features/doctor_appointment/controller/doctor_appointment.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
// ignore: depend on referenced packages

/// My app class to display the date range picker
class KDateRangePicker extends StatefulWidget {
  const KDateRangePicker({super.key, required this.flash});
  final bool flash;
  @override
  KDateRangePickerState createState() => KDateRangePickerState();
}

/// State for KDateRangePicker
class KDateRangePickerState extends State<KDateRangePicker> {
  String selectedDate = '';
  String dateCount = '';
  String range = '';
  String rangeFrom = '';
  String rangeTo = '';
  String rangeCount = '';

  /// The method for [DateRangePickerSelectionChanged] callback, which will be
  /// called whenever a selection changed on the date picker widget.
  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    /// The argument value will return the changed date as [DateTime] when the
    /// widget [SfDateRangeSelectionMode] set as single.
    ///
    /// The argument value will return the changed dates as [List<DateTime>]
    /// when the widget [SfDateRangeSelectionMode] set as multiple.
    ///
    /// The argument value will return the changed range as [PickerDateRange]
    /// when the widget [SfDateRangeSelectionMode] set as range.
    ///
    /// The argument value will return the changed ranges as
    /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
    /// multi range.
    setState(() {
      if (args.value is PickerDateRange) {
        range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
            // ignore: lines longer than 80 chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
        rangeFrom = DateFormat('dd/MM/yyyy').format(args.value.startDate);
        rangeTo = DateFormat('dd/MM/yyyy')
            .format(args.value.endDate ?? args.value.startDate);

        widget.flash
            ? (
                DoctorAppointmentControllerImp.rangeFromDeal = rangeFrom,
                DoctorAppointmentControllerImp.rangeToDeal = rangeTo,
              )
            : (
                DoctorAppointmentControllerImp.rangeFromFlash = rangeFrom,
                DoctorAppointmentControllerImp.rangeToFlash = rangeTo,
              );
      } else if (args.value is DateTime) {
        selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        dateCount = args.value.length.toString();
      } else {
        rangeCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 335.w,
      // height: 280.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(80.0), // Rounded corners with radius 8
      ),
      // decoration: ShapeDecoration(
      //   color: Colors.white,
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
      // ),
      child: SfDateRangePicker(
        monthFormat: 'EEE',
        selectionColor: const Color(0xFF0EBE7F),
        todayHighlightColor: const Color(0xFF0EBE7F),
        backgroundColor: AppColor.white,
        onSelectionChanged: onSelectionChanged,
        // yearCellStyle: const DateRangePickerYearCellStyle(),
        // monthViewSettings: const DateRangePickerMonthViewSettings(),
        // monthCellStyle: const DateRangePickerMonthCellStyle(),
        selectionMode: DateRangePickerSelectionMode.single,
        headerHeight: 52.h,
        headerStyle: const DateRangePickerHeaderStyle(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          backgroundColor: Color(0xFF0EBE7F),
        ),
      ),
    );
  }
}
