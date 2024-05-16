import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/svg_pic/svg_pic.dart';
import 'package:doctor/features/auth/view/bottom_sheet.dart';

class AddRecordPhotoBottomSheet extends StatelessWidget {
  const AddRecordPhotoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet2(
      title: 'Add a record',
      children: [
        UploadFileWidget(
          title: 'Take a photo',
          svgIcon: AppSvg.camera,
          onTap: () {},
        ),
        UploadFileWidget(
          title: 'Upload from gallery',
          svgIcon: AppSvg.gallery,
          onTap: () {},
        ),
        UploadFileWidget(
          title: 'Upload files',
          svgIcon: AppSvg.pdf,
          onTap: () {},
        ),
      ],
    );
  }
}

class UploadFileWidget extends StatelessWidget {
  const UploadFileWidget({
    super.key,
    required this.title,
    required this.svgIcon,
    this.onTap,
  });
  final String title;
  final String svgIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(width: 20.w, child: SvgPictureCustom(svgIcon)),
            SizedBox(width: 8.w),
            Text(
              title,
              style: TextStyle(
                color: const Color(0xFF677294),
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
