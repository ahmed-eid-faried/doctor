import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/cached_image/cached_network_image.dart';
import 'package:doctor/core/widgets/flip_direction.dart';

class CustomImageOfItem extends StatelessWidget {
  const CustomImageOfItem({
    super.key,
    required this.index,
    required this.height,
    required this.borderRadius,
    required this.width,
    required this.image,
  });
  final int index;
  final String image;
  final double height;
  final double width;
  final bool borderRadius;
  @override
  Widget build(BuildContext context) {
    return FlipDirection(
      child: ClipRRect(
        borderRadius: borderRadius
            ? BorderRadius.circular(AppSize.s8)
            : BorderRadius.only(
                topLeft: index % 2 == 0
                    ? Radius.circular(AppSize.s8.r)
                    : const Radius.circular(AppSize.s0),
                bottomRight: index % AppSize.s2 == AppSize.s0
                    ? const Radius.circular(AppSize.s0)
                    : Radius.circular(AppSize.s8.r),
                topRight: Radius.circular(AppSize.s8.r),
                bottomLeft: Radius.circular(AppSize.s8.r),
              ),
        child: CachedNetworkImageCustom(
          width: width.landscapeFontSp(),
          height: double.infinity,
          // height: AppSize.s100*2,
          fit: BoxFit.cover,
          url: image,
        ),
      ),
    );
  }
}
