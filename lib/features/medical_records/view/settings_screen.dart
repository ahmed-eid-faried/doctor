import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/custom_scaffold.dart';
import 'package:doctor/core/widgets/svg_pic/svg_pic.dart';
import 'package:doctor/features/find_doctors_screen/controller/find_doctor.dart';
import 'package:doctor/features/home/view/screens/background.dart';
import 'package:get/get.dart';

class SettingsScreen extends GetView<FindDoctorControllerImp> {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FindDoctorControllerImp());
    return CustomScaffold(
      body: Background(
        appBar: const CustomAppBar(
          text: 'Settings',
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account settings',
              style: TextStyle(
                color: const Color(0xFF677294),
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            ListView.separated(
              itemCount: list.length,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => Container(
                width: 335.w,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: const Color(0xFF0EBE7F).withOpacity(0.06),
                    ),
                  ),
                ),
              ),
              itemBuilder: (context, index) => ListTitleSetting(
                title: list[index].title,
                svgIcon: list[index].svgIcon,
                color: list[index].color,
                onTap: list[index].onTap,
              ),
            ),
            SizedBox(height: 30.h),
            Text(
              'More options',
              style: TextStyle(
                color: const Color(0xFF677294),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTitleSetting(
                    title: 'Text messages',
                    svgIcon: "",
                    onTap: () {},
                    leadingState: false,
                    child: Transform.scale(
                      scale: 0.6,
                      child: Switch(
                        value: true,
                        activeColor: AppColor.white,
                        activeTrackColor: const Color(0xFF0EBE7F),
                        inactiveTrackColor: AppColor.grey,
                        inactiveThumbColor: AppColor.white,
                        onChanged: (value) {},
                      ),
                    )),
                ListTitleSetting(
                    title: 'Phone calls',
                    svgIcon: "",
                    onTap: () {},
                    leadingState: false,
                    child: Transform.scale(
                      scale: 0.6,
                      child: Switch(
                        value: true,
                        activeColor: AppColor.white,
                        activeTrackColor: const Color(0xFF0EBE7F),
                        inactiveTrackColor: AppColor.grey,
                        inactiveThumbColor: AppColor.white,
                        onChanged: (value) {},
                      ),
                    )),
                ListTitleSetting(
                  title: 'Languages',
                  svgIcon: "",
                  onTap: () {},
                  leadingState: false,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'English',
                        style: TextStyle(
                          color: const Color(0xFF677294),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                        size: 30.sp,
                      ),
                    ],
                  ),
                ),
                ListTitleSetting(
                  title: 'Currency',
                  svgIcon: "",
                  onTap: () {},
                  leadingState: false,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '\$-USD',
                        style: TextStyle(
                          color: const Color(0xFF677294),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                        size: 30.sp,
                      ),
                    ],
                  ),
                ),
                ListTitleSetting(
                  title: 'Linked accounts',
                  svgIcon: "",
                  onTap: () {},
                  leadingState: false,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Facebook, Google',
                        style: TextStyle(
                          color: const Color(0xFF677294),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                        size: 30.sp,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

List<SettingAccountModel> list = [
  SettingAccountModel(
    title: 'Change Password',
    svgIcon: AppSvg.changePassword,
    color: const Color(0xFFEB5757),
    onTap: () {},
  ),
  SettingAccountModel(
    title: 'Notifications',
    svgIcon: AppSvg.notifications,
    color: const Color(0xFF219653),
    onTap: () {},
  ),
  SettingAccountModel(
    title: 'Statistics',
    svgIcon: AppSvg.statistics,
    color: const Color(0xFF56CCF2),
    onTap: () {},
  ),
  SettingAccountModel(
    title: 'About us',
    svgIcon: AppSvg.aboutUs,
    color: const Color(0xFFF2994A),
    onTap: () {},
  ),
];

class SettingAccountModel {
  final void Function()? onTap;
  final String title;
  final Color color;
  final String svgIcon;

  SettingAccountModel({
    required this.onTap,
    required this.title,
    required this.color,
    required this.svgIcon,
  });
}

class ListTitleSetting extends StatelessWidget {
  const ListTitleSetting({
    super.key,
    this.onTap,
    required this.title,
    this.color,
    required this.svgIcon,
    this.leadingState = true,
    this.child,
  });
  final void Function()? onTap;
  final String title;
  final Color? color;
  final String svgIcon;
  final bool leadingState;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      leading: !leadingState
          ? null
          : Container(
              width: 32.sp,
              height: 32.sp,
              padding: EdgeInsets.symmetric(
                vertical: 8.h,
                horizontal: 10.w,
              ),
              decoration: ShapeDecoration(
                color: color,
                shape: const OvalBorder(),
              ),
              child: SvgPictureCustom(
                svgIcon,
                color: Colors.white,
              ),
            ),
      title: Text(
        title,
        style: TextStyle(
          color: const Color(0xFF677294),
          fontSize: 16.sp,
          fontWeight: FontWeight.w300,
        ),
      ),
      trailing: child ??
          Icon(
            Icons.navigate_next_outlined,
            size: 30.sp,
          ),
    );
  }
}
