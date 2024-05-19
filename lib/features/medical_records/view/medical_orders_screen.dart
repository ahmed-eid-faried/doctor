import 'package:doctor/core/core/imports/export_path.dart';
import 'package:doctor/core/widgets/svg_pic/svg_pic.dart';
import 'package:doctor/features/home/view/screens/home.dart';
import 'package:doctor/features/medical_records/view/empty_logo_screen.dart';

class MedicalOrdersScreen extends StatelessWidget {
  const MedicalOrdersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    List list = [1];
    return EmptyLogoScreen(
        showButton: false,
        list: list,
        titleAppBar: 'Medicine Orders',
        svgIcon: AppSvg.medicalOrder,
        textHeader: 'No orders placed yet',
        textBody: 'Place your first order now.',
        titleButton: 'Order medicines',
        onPressed: () {},
        child: Column(
          children: [
            const CustomSearchBar(
              title: 'Dentist',
              // controller: controller.textEditingController
            ),
            SizedBox(height: 24.h),
            SizedBox(
              height: 600.h,
              child: GridView.builder(
                itemCount: cateogryMedicalOrderList.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) => CateogryMedicalOrdersCard(
                  title: cateogryMedicalOrderList[index].title,
                  svgIcon: cateogryMedicalOrderList[index].svgIcon,
                  onTap: cateogryMedicalOrderList[index].onTap,
                ),
              ),
            )
          ],
        ));
  }
}

class CateogryMedicalOrdersCard extends StatelessWidget {
  const CateogryMedicalOrdersCard({
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
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 162.sp,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(25),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: const [
            BoxShadow(
              color: Color(0x14000000),
              blurRadius: 20,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: const ShapeDecoration(
                color: Color(0xC1C6EFE5),
                shape: OvalBorder(),
              ),
              child: SvgPictureCustom(
                svgIcon,
                width: 28.sp,
                // height: 28.sp,
                color: const Color(0xff0EBE7F),
              ),
            ),
            SizedBox(height: 12.h),
            FittedBox(
              child: Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  color: const Color(0xFF677294),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<CateogryMedicalOrderModel> cateogryMedicalOrderList = [
  CateogryMedicalOrderModel(
    title: 'Guide to medicine\norder',
    svgIcon: AppSvg.medicineOrder,
    onTap: () {},
  ),
  CateogryMedicalOrderModel(
    title: 'Prescription related \nissues',
    svgIcon: AppSvg.prescriptionRelatedIssues,
    onTap: () {},
  ),
  CateogryMedicalOrderModel(
    title: 'Order status',
    svgIcon: AppSvg.orderStatus, //order_status
    onTap: () {},
  ),
  CateogryMedicalOrderModel(
    title: 'Order delivery',
    svgIcon: AppSvg.orderDelivery, //order_delivery
    onTap: () {},
  ),
  CateogryMedicalOrderModel(
    title: 'Payments & Refunds',
    svgIcon: AppSvg.paymentsRefunds, //payments_refunds
    onTap: () {},
  ),
  CateogryMedicalOrderModel(
    title: 'Order returns',
    svgIcon: AppSvg.orderReturns, //order_returns
    onTap: () {},
  ),
];

class CateogryMedicalOrderModel {
  final String title;
  final String svgIcon;
  final void Function()? onTap;

  CateogryMedicalOrderModel({
    required this.title,
    required this.svgIcon,
    required this.onTap,
  });
}
