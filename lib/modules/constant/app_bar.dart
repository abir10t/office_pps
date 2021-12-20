import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pps/modules/splash_screen/sizing_information.dart';
import 'package:pps/shared/constants/colors.dart';
import 'const.dart';
import 'style.dart';
//
// AppBar dashboardAppbar({required title, BuildContext? context, Function? leading, SizingInformation? sizingInformation,String? cartLength}) {
//   return AppBar(
//     backgroundColor: ColorConstants.white,
//     elevation: 0.0,
//     leading: IconButton(
//       splashRadius: 15,
//       onPressed: leading as void Function()?,
//       icon: Icon(Icons.menu),
//       color: ColorConstants.backgroundSecondary,
//     ),
//     centerTitle: true,
//     title: Row(
//       children: [
//         Icon(
//           FeatherIcons.mapPin,
//           size: 18,
//           color: ColorConstants.black.withOpacity(0.5),
//         ),
//         Expanded(
//           child: Text(
//             title,
//             style: TextStyle(
//                 fontSize: 16,
//                 color: ColorConstants.black.withOpacity(.5),
//                 fontFamily: 'Avenir'),
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//           ),
//         ),
//         Icon(
//           FeatherIcons.chevronDown,
//           color: ColorConstants.black.withOpacity(0.5),
//           size: 20,
//         ),
//       ],
//     ),
//     actions: [
//       InkWell(
//         radius: 15,
//         onTap: (){
//           Get.toNamed(Routes.CART);
//         },
//         child: Stack(
//           children: [
//             Container(
//               child: IconButton(
//                 splashRadius: 15,
//                 onPressed: (){
//                   //Get.to(Cart());
//                   Get.toNamed(Routes.CART);
//                 },
//                 icon: Icon(
//                   FeatherIcons.shoppingBag,
//                   color: ColorConstants.backgroundSecondary,
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: 20,
//               left: 2,
//               child: Container(
//                 height: 20,
//                 width: 20,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: ColorConstants.white,width: 1),
//                   shape: BoxShape.circle,
//                   color: ColorConstants.backgroundSecondary,
//                 ),
//                 child: Center(
//                   child: Text(
//                     '$cartLength',
//                     style: sectionSubTitle().copyWith(
//                       color: ColorConstants.white,
//                       fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context!, 13,sizingInformation!.localWidgetSize!.height),
//                     ),textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )
//     ],
//   );
// }
//
// AppBar searchAppbar({title, required BuildContext context,SizingInformation? sizingInformation}) {
//   return AppBar(
//
//     toolbarHeight: 70,
//     backgroundColor: ColorConstants.white,
//     titleSpacing: 0.0,
//     elevation: 0.0,
//     leading: BackButton(
//       color: Colors.black,
//       onPressed: () {
//         Get.back();
//       },
//     ),
//     title: Container(
//       width: double.infinity,
//       child: TextFormField(
//         cursorColor: ColorConstants.backgroundSecondary,
//         style: TextStyle(
//           height: 2.0,
//           color: Colors.red,
//         ),
//         autofocus: true,
//         decoration: InputDecoration(
//           hintText: title,
//           border: InputBorder.none,
//           labelStyle: TextStyle(color: Colors.grey, fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context!, 10,sizingInformation!.localWidgetSize!.height),
//           ),
//         ),
//       ),
//     ),
//
//   );
// }
//
// AppBar appbarBuyAfterCart({SizingInformation? sizingInformation, title}) {
//   return AppBar(
//     backgroundColor: ColorConstants.white,
//     toolbarHeight: toolbarHeight,
//     elevation: title == 'Order Confirmation' || title == 'Cart'  || title == 'Profile'? 0 : elevation,
//     //leadingWidth: leadingWidth,
//     titleSpacing: 0,
//     leading: IconButton(
//       icon: Icon(
//         FeatherIcons.arrowLeft,
//         color: ColorConstants.black,
//       ),
//       onPressed: () {
//         Get.back();
//       },
//     ),
//     title: Text(
//       title.toString(),
//       style: navTextStyle(),
//       maxLines: 2,
//     ),
//   );
// }

AppBar DrawerAppbar ()
{
  return AppBar(
    backgroundColor: ColorConstants.backgroundPrimaryColor,
    elevation: 0,
  );
}
