import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/custom_scaffold.dart';
import 'package:doctor/features/find_doctors_screen/controller/find_doctor.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:doctor/features/home/view/screens/home.dart';
import 'package:doctor/features/poplular_doctor/view/poplular_doctor_screen.dart';
import 'package:get/get.dart';

class DoctorsScreen extends GetView<FindDoctorControllerImp> {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FindDoctorControllerImp());
    return CustomScaffold(
      body: Background(
        child: Column(
          children: [
            const CustomAppBar(text: "Find Doctors Screen"),
            SizedBox(height: 10.h),
            const CustomSearchBar(title: 'Doctors'),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 40.sp,
                    child: ListView.separated(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 10.w),
                      itemBuilder: (context, index) => CategoryWidget(
                        title: 'All',
                        state: index == 3,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 570.h,
                    child: ListView.builder(
                        itemCount: 10,
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(0),
                        itemBuilder: (context, index) =>
                            const CardCategoryDoctorWidget()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.title,
    required this.state,
  });
  final String title;
  final bool state;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 18.w),
      decoration: ShapeDecoration(
        color: state ? const Color(0xFF0EBE7F) : const Color(0x140EBE7F),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: Center(
        child: Text(
          title,
          maxLines: 1,
          style: TextStyle(
            color: state ? Colors.white : const Color(0xFF0EBE7F),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
