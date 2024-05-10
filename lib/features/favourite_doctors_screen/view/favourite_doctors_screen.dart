import 'package:doctor/core/constant/image.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/custom_scaffold.dart';
import 'package:doctor/core/widgets/layout.dart';
import 'package:doctor/features/favourite_doctors_screen/controller/find_doctor.dart';
import 'package:doctor/features/find_doctors_screen/view/find_doctors_screen.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:doctor/features/home/view/screens/home.dart';
import 'package:get/get.dart';

class FavouriteDoctorsScreen extends GetView<FavouriteDoctorsControllerImp> {
  const FavouriteDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FavouriteDoctorsControllerImp());

    return CustomScaffold(
      body: Background(
        child: SingleChildScrollView(
          child: GetBuilder<FavouriteDoctorsControllerImp>(
              init: FavouriteDoctorsControllerImp(),
              initState: (state) => {},
              builder: (context) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomAppBar(text: 'Favourite Doctors'),
                      SizedBox(height: 24.h),
                      const CustomSearchBar(
                        title: 'Dentist',
                        // controller: controller.textEditingController
                      ),
                      const SizedBox(height: 22),
                      SizedBox(
                        height: 540.h,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                  height: 380.h,
                                  child: GridView.builder(
                                    itemCount: 11,
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            mainAxisSpacing: 15.0.sp,
                                            crossAxisSpacing: 15.0.sp,
                                            childAspectRatio: 160 / 180,
                                            crossAxisCount: LayoutValue.kInt(
                                                mobileValue: 2,
                                                tabletValue: 3,
                                                desktopValue: 4)),
                                    itemBuilder: (context, index) =>
                                        const FavouriteDoctorCardWidget(),
                                  )),
                              SizedBox(height: 16.h),
                              const HomeSectionsWidget(
                                title: "Feature Doctor",
                                onTap: null,
                                horizontalPadding: 0,
                                // controller.seeAllFeature(),
                                child: FeatureDoctorHome(),
                              ),
                              SizedBox(height: 20.h),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class FavouriteDoctorCardWidget extends StatelessWidget {
  const FavouriteDoctorCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        shadows: const [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 20,
            offset: Offset(0, -1),
            spreadRadius: 0,
          )
        ],
      ),
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
      child: Stack(
        children: [
          const Positioned(right: 0, child: LikeDoctorWidget(size: 15)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 42,
                backgroundImage: AssetImage(AppImage.doctor),
              ),
              SizedBox(height: 12.h),
              const Text(
                'Dr. Shouey',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4.h),
              const Text(
                'Specalist Cardiology',
                style: TextStyle(
                  color: Color(0xFF0EBE7E),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
