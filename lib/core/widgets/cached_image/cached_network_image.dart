import 'package:doctor/core/core/imports/export_path_packages.dart';
import 'package:doctor/core/core/themes/decoration.dart';
import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/core/utils/constants/images.dart';
import 'package:doctor/core/core/utils/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CachedNetworkImageCustom extends StatelessWidget {
  final String url;
  final double? height;
  final double? width;
  final double? shimmerHeight;
  final double? shimmerWidth;
  final double? boarder;
  final BoxFit? boxFit;
  final Color? color;
  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry? padding;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Widget? child;
  final Clip clipBehavior = Clip.none;
  final void Function(Object, StackTrace?)? onError;
  final ColorFilter? colorFilter;
  final BoxFit? fit;
  final Rect? centerSlice;
  final ImageRepeat repeat = ImageRepeat.noRepeat;
  final bool matchTextDirection = false;
  final double scale = 1.0;
  final double opacity = 1.0;
  final FilterQuality filterQuality = FilterQuality.low;
  final bool invertColors = false;
  final bool isAntiAlias = false;
  final Widget? errorWidget;
  final Widget? placeholder;
  const CachedNetworkImageCustom({
    super.key,
    required this.url,
    this.height = AppSize.s100,
    this.width = double.infinity,
    this.shimmerHeight = AppSize.s100,
    this.shimmerWidth = double.infinity,
    this.boarder = 0.0,
    this.color,
    this.boxFit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.padding,
    this.decoration,
    this.foregroundDecoration,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.child,
    this.onError,
    this.colorFilter,
    this.fit = BoxFit.cover,
    this.centerSlice,
    this.errorWidget,
    this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(boarder!),
      child: CachedNetworkImage(
        useOldImageOnUrlChange: true,
        height: height,
        // color: color,
        width: width,
        fit: boxFit,
        imageUrl: url,
        // progressIndicatorBuilder: (context, url, downloadProgress) =>
        //     CircularProgressIndicator(value: downloadProgress.progress),
        imageBuilder: (context, imageProvider) => Container(
          alignment: alignment,
          clipBehavior: clipBehavior,
          // color: color,
          constraints: constraints,
          foregroundDecoration: foregroundDecoration,
          height: height,
          margin: margin,
          padding: padding,
          transform: transform,
          transformAlignment: transformAlignment,
          width: width,
          decoration: decoration ??
              boxDecoration(
                image: DecorationImage(
                  alignment: alignment,
                  centerSlice: centerSlice,
                  colorFilter: colorFilter,
                  filterQuality: filterQuality,
                  invertColors: invertColors,
                  isAntiAlias: isAntiAlias,
                  matchTextDirection: matchTextDirection,
                  onError: onError,
                  opacity: opacity,
                  repeat: repeat,
                  scale: scale,
                  image: imageProvider,
                  fit: fit,
                ),
              ),
          child: child,
        ),
        placeholder: (context, url) =>
            placeholder ??
            Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                height: shimmerHeight,
                width: shimmerWidth,
                decoration: boxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(boarder!),
                ),
              ),
            ),
        errorWidget: (context, url, error) => SizedBox(
          height: height,
          width: width,
          child: errorWidget ??
              Stack(
                children: [
                  Container(
                      height: height,
                      width: width,
                      color: AppColor.white,
                      child: Image.asset(
                        "",
                        // AppImage.logo,
                        // color: Colors.black.withOpacity(0.2),
                        colorBlendMode: BlendMode.darken,
                        fit: BoxFit.contain,
                      )),
                  Container(
                    width: height,
                    height: width,
                    decoration: BoxDecoration(
                      color: AppColor.grey.withOpacity(0.2),
                      // shape: const OvalBorder(),
                    ),
                    // child: FlipDirection(
                    //   child: Center(
                    //       child:  SvgPictureCustom(svgImage!,
                    //           color: color,
                    //           height: height?.landscapeFontR(),
                    //           width: width?.landscapeFontR())
                    //           ),
                    // ),
                  )
                ],
              ),
        ),
      ),
    );
  }
}
