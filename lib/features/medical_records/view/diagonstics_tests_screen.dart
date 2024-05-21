import 'package:doctor/core/constant/color.dart';
import 'package:doctor/core/constant/image.dart';
import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/features/home/view/screens/home.dart';
import 'package:doctor/features/medical_records/view/empty_logo_screen.dart';
import 'package:doctor/features/onboarding/view/widgets/onboarding/custombutton.dart';

class DiagonsticsTestsScreen extends StatelessWidget {
  const DiagonsticsTestsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List list = [11];
    return EmptyLogoScreen(
      showButton: false,
      list: list,
      titleAppBar: 'Diagonstics Tests',
      svgIcon: AppSvg.diagonsticsTests,
      textHeader: 'You haven’t booked any tests yet',
      textBody: 'Get started with your first health checkup',
      titleButton: 'Book Now',
      onPressed: () {},
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => const DiagonsticsTests(),
      ),
    );
  }
}

class DiagonsticsTests extends StatelessWidget {
  const DiagonsticsTests({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            'Get Full body health checkups\nfrom the comfort of your home.',
            maxLines: 2,
            style: TextStyle(
              color: Colors.black,
              fontSize: 22.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          'Upto 45% off + get 10% healthcash back',
          style: TextStyle(
            color: const Color(0xFF0EBE7F),
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(height: 26.h),
        const CategoriesWidget(),
        SizedBox(height: 26.h),
        Text(
          'Recommend for you',
          style: TextStyle(
            color: const Color(0xFF222222),
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => const DiagonsticCardWidget(
            title: 'Advanced Young Indian Health Checkup',
            body: 'Ideal for individuals aged 21-40 years',
            priceAfterDiscount: 345,
            priceBeforeDiscount: 387,
            discountPercentage: 35,
            numOfTests: 69,
            cashback: '+ 10% Health cashback T&C',
          ),
        )
      ],
    );
  }
}

class DiagonsticCardWidget extends StatelessWidget {
  const DiagonsticCardWidget({
    super.key,
    required this.title,
    required this.body,
    required this.priceAfterDiscount,
    required this.priceBeforeDiscount,
    required this.discountPercentage,
    required this.numOfTests,
    required this.cashback,
  });
  final String title;
  final String body;
  final double priceAfterDiscount;
  final double priceBeforeDiscount;
  final double discountPercentage;
  final int numOfTests;
  final String cashback;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          shadows: const [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 20,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                body,
                style: TextStyle(
                  color: const Color(0xFF677294),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 18.h),
              InkWell(
                onTap: () {},
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.80, color: Color(0xFF0EBE7F)),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: Text(
                    '$numOfTests tests included',
                    style: TextStyle(
                      color: const Color(0xFF0EBE7F),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18.h),
              Container(
                width: 335.w,
                height: 220.h,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage(AppImage.diagonstics),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$ $priceBeforeDiscount  ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: '\$ $priceAfterDiscount ',
                              style: TextStyle(
                                color: const Color(0xFF677294),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: '$discountPercentage% off\n',
                              style: TextStyle(
                                color: const Color(0xFF0EBE7F),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextSpan(
                              text: cashback,
                              style: TextStyle(
                                color: const Color(0xFF677294),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      flex: 1,
                      child: CustomButton(
                        onPressed: () {},
                        color: AppColor.green,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: FittedBox(
                          child: Text(
                            'Book Now',
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1.80),
      itemCount: categories.length,
      itemBuilder: (context, index) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Transform.scale(
            scale: 0.85,
            child: CategoryWidget(
              color: categories[index].color,
              svgIcon: categories[index].svgIcon,
            ),
          ),
          SizedBox(
            width: 80.w,
            child: FittedBox(
              child: Text(
                categories[index].title,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<CategoryModel> categories = [
  CategoryModel(
    color: const Color(0xFF2753F3),
    svgIcon: AppSvg.home,
    title: 'Free home\nSample pickup',
  ),
  CategoryModel(
    color: const Color(0xFFFF484C),
    svgIcon: AppSvg.asociateLabs,
    title: 'Practo\nasociate labs',
  ),
  CategoryModel(
    color: const Color(0xFFFD7F43),
    svgIcon: AppSvg.eRepots,
    title: 'E-Reports in \n24-72 hours',
  ),
  CategoryModel(
    color: const Color(0xFF0EBE7E),
    svgIcon: AppSvg.lab,
    title: 'Free follow-up\nwith a doctor',
  ),
];
