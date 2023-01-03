import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:task/size_config';

import '../Views/Screen/Controller/controller.dart';
import '../constanc/app_style.dart';

class CustomeDrawer extends StatelessWidget {
  CustomeDrawer({super.key});

  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
            decoration: BoxDecoration(
                color: const Color(0xFF10AB83),
                borderRadius: BorderRadius.only(
                    bottomLeft:
                        Radius.circular((getProportionateScreenWidth(15))),
                    bottomRight:
                        Radius.circular(getProportionateScreenWidth(15)))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/icon/close.png')),
                SizedBox(
                  height: getProportionateScreenHeight(50),
                ),
                Text('Demo Limited Company', style: AppStyle.kAppHeader)
              ],
            )),
        Obx(
          () => ExpansionTile(
            iconColor: const Color(0xFF10AB83),
            collapsedBackgroundColor: _homeController.isClicked.value
                ? Colors.transparent
                : const Color(0xFF10AB83),
            title: Text('Purchase', style: AppStyle.kDrawerTitle),
            childrenPadding:
                EdgeInsets.only(left: getProportionateScreenWidth(80)),
            leading: IconButton(
                onPressed: () {}, icon: Image.asset('assets/icon/cart.png')),
            children: [
              ListTile(
                title: Text('Purchase List', style: AppStyle.kDrawerSubTitle),
              ),
              ListTile(
                title: Text('Order List', style: AppStyle.kDrawerSubTitle),
              ),
              ListTile(
                title: Text(
                  'VAT List',
                  style: AppStyle.kDrawerSubTitle,
                ),
              ),
              ListTile(
                title: Text('Product Unit', style: AppStyle.kDrawerSubTitle),
              ),
              ListTile(
                title: Text('Purchase Report', style: AppStyle.kDrawerSubTitle),
              ),
            ],
          ),
        ),
        ExpansionTile(
          title: Text('Sell',
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(14),
                  color: const Color(0xFF000000).withOpacity(0.6))),
          leading: IconButton(
              onPressed: () {}, icon: Image.asset('assets/icon/sell.png')),
        ),
        ExpansionTile(
          title: Text('Stock / Inventory',
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(14),
                  color: const Color(0xFF000000).withOpacity(0.6))),
          leading: IconButton(
              onPressed: () {}, icon: Image.asset('assets/icon/home.png')),
        )
      ]),
    );
  }
}
