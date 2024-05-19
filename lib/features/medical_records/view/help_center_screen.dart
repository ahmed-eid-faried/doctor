import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/custom_scaffold.dart';
import 'package:doctor/features/find_doctors_screen/controller/find_doctor.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:get/get.dart';

class HelpCenterScreen extends GetView<FindDoctorControllerImp> {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FindDoctorControllerImp());
    return CustomScaffold(
      body: Background(
        appBar: const CustomAppBar(text: 'Help center'),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                shadows: const [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 20,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'I have an issue with',
                  style: TextStyle(
                    color: const Color(0xFF0EBE7F),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 660.h,
              width: 375.w,
              child: ListView.builder(
                  itemCount: 30,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => ListTile(
                        onTap: () {
                          print("0kkkkk");
                        },
                        title: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Booking a new Appointment',
                            style: TextStyle(
                              color: const Color(0xFF677294),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        trailing: const Icon(Icons.navigate_next_outlined),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
