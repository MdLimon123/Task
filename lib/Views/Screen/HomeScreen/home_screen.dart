import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/Views/Screen/Controller/controller.dart';
import 'package:task/Widgets/custome_drawer.dart';
import 'package:task/size_config';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF10AB83),
          title: Text(
            'Tabel Data',
            style: TextStyle(
                fontSize: getProportionateScreenWidth(20), color: Colors.white),
          ),
          centerTitle: true,
          leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Image.asset('assets/icon/menu.png'))),
        ),
        drawer: CustomeDrawer(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: getProportionateScreenWidth(360),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF10AB83))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: getProportionateScreenWidth(250),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xFF10AB83))),
                          child: Column(
                            children: [
                              headingItem(text: 'Dues'),
                              Container(
                                height: getProportionateScreenHeight(80),
                                width: getProportionateScreenWidth(250),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xFF10AB83))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: const [
                                      Text('Previous Due',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF000000),
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '01 January 2022',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 99,
                                width: 220,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xFF10AB83))),
                                child: Column(
                                  children: [
                                    headingItem(text: 'Purchase'),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Text(
                                                'Invoice Date :',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF000000),
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                '01 January 2022',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF000000),
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: const [
                                              Text(
                                                'Invoice No :',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF000000),
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                '5386328',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF000000),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      productItem(
                                          title: 'Test product 01',
                                          subTitle1: '200 pcs x 200',
                                          subTitle2: '20 pcs x 300',
                                          subTitle3: '20 pcs x 200'),
                                    ],
                                  ),
                                  productPrice(
                                      price1: '৳ 40000',
                                      price2: '৳ 6000',
                                      price3: '৳ 4000'),
                                ],
                              ),
                              discountPrice(
                                  title: 'Discount',
                                  subTitle: 'VAT',
                                  price1: '৳ 0',
                                  price2: '৳ 0'),
                              discountPrice(
                                  title: 'Grand Total',
                                  subTitle: 'Previous Due',
                                  price1: '৳ 50000',
                                  price2: '৳ 20000'),
                              discountPrice(
                                  title: 'Total Amount',
                                  subTitle: 'Total Payment',
                                  price1: '৳ 70000',
                                  price2: '৳ 40000'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Container(
                                      height: getProportionateScreenHeight(80),
                                      width: getProportionateScreenWidth(130),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFF10AB83))),
                                      child: const Center(
                                        child: Text(
                                          ' Remaining Balance',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF000000),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getProportionateScreenHeight(80),
                                    width: getProportionateScreenWidth(117),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xFF10AB83))),
                                    child: const Center(
                                      child: Text(
                                        '৳ 30000',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF000000),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            duePrice(text: 'Due', price: '৳ 20000'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: getProportionateScreenWidth(250),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xFF10AB83))),
                          child: Column(
                            children: [
                              headingItem(text: 'Payment'),
                              Container(
                                height: getProportionateScreenHeight(80),
                                width: getProportionateScreenWidth(250),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xFF10AB83))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Text(
                                                'Invoice Date :',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF000000),
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                '01 January 2022',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF000000),
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: const [
                                              Text(
                                                'Invoice No :',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF000000),
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                '53863323',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF000000),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              discountPrice(
                                  title: 'Discount',
                                  subTitle: 'VAT',
                                  price1: '৳ 0',
                                  price2: '৳ 0'),
                              discountPrice(
                                  title: 'Grand Total',
                                  subTitle: 'Previous Due',
                                  price1: '৳ 0',
                                  price2: '৳ 30000'),
                              discountPrice(
                                  title: 'Total Amount',
                                  subTitle: 'Total Payment',
                                  price1: '৳ 30000',
                                  price2: '৳ 10000'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Container(
                                      height: getProportionateScreenHeight(80),
                                      width: getProportionateScreenWidth(130),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFF10AB83))),
                                      child: const Center(
                                        child: Text(
                                          ' Remaining Balance',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF000000),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getProportionateScreenHeight(80),
                                    width: getProportionateScreenWidth(117),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xFF10AB83))),
                                    child: const Center(
                                      child: Text(
                                        '৳ 20000',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF000000),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            duePrice(text: 'Due', price: '৳ 20000'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: getProportionateScreenWidth(250),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xFF10AB83))),
                          child: Column(
                            children: [
                              headingItem(text: 'Return'),
                              Container(
                                height: getProportionateScreenHeight(80),
                                width: getProportionateScreenWidth(250),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xFF10AB83))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: const [
                                          Text(
                                            'Invoice Date :',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF000000),
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            '01 January 2022',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF000000),
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            'Invoice No :',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF000000),
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            '5386328',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF000000),
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: getProportionateScreenHeight(80),
                                width: getProportionateScreenWidth(250),
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xFF10AB83))),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Text(
                                                'Return Date :',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF000000),
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                '01 January 2022',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF000000),
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: const [
                                              Text(
                                                'Return No :',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF000000),
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                '5386328',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF000000),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                          height:
                                              getProportionateScreenHeight(80),
                                          width:
                                              getProportionateScreenWidth(130),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      const Color(0xFF10AB83))),
                                          child: Center(
                                            child: Text(
                                              'Test Product 01',
                                              style: TextStyle(
                                                  fontSize:
                                                      getProportionateScreenWidth(
                                                          14),
                                                  color: Color(0xFF000000),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ))
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: getProportionateScreenWidth(10)),
                                    child: Text(
                                      '৳ 5000',
                                      style: TextStyle(
                                          fontSize:
                                              getProportionateScreenWidth(14),
                                          color: Color(0xFF000000),
                                          fontWeight: FontWeight.w400),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                              discountPrice(
                                  title: 'Discount',
                                  subTitle: 'VAT',
                                  price1: '৳ 0',
                                  price2: '৳ 0'),
                              discountPrice(
                                  title: 'Grand Total',
                                  subTitle: 'Previous Due',
                                  price1: '৳ 50000',
                                  price2: '৳ 20000'),
                              discountPrice(
                                  title: 'Total Amount',
                                  subTitle: 'Total Paid',
                                  price1: '৳ 15000',
                                  price2: '৳ 0'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Container(
                                      height: getProportionateScreenHeight(80),
                                      width: getProportionateScreenWidth(130),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFF10AB83))),
                                      child: const Center(
                                        child: Text(
                                          ' Remaining Balance',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF000000),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getProportionateScreenHeight(80),
                                    width: getProportionateScreenWidth(117),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xFF10AB83))),
                                    child: const Center(
                                      child: Text(
                                        '৳ 30000',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF000000),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            duePrice(text: 'Due', price: '৳ 15000'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10),
                  vertical: getProportionateScreenWidth(20)),
              child: Container(
                height: getProportionateScreenHeight(80),
                width: getProportionateScreenWidth(350),
                decoration: BoxDecoration(
                    color: const Color(0xFF10AB83),
                    borderRadius:
                        BorderRadius.circular(getProportionateScreenWidth(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: getProportionateScreenWidth(18),
                      backgroundColor: const Color(0xFFFFFFFF),
                      child: const Icon(
                        Icons.add,
                        color: Color(0xFF10AB83),
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(10),
                    ),
                    Text(
                      'Pay the balance',
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(20),
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }

  Widget duePrice({required String text, required String price}) {
    return Container(
      width: getProportionateScreenWidth(103),
      height: getProportionateScreenHeight(82),
      decoration:
          BoxDecoration(border: Border.all(color: const Color(0xFF10AB83))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(14),
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold),
          ),
          Text(
            price,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(14),
                color: Color(0xFFF37048)),
          )
        ],
      ),
    );
  }

  Widget discountPrice(
      {required String title,
      required String subTitle,
      required String price1,
      required String price2}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: getProportionateScreenHeight(140),
          width: getProportionateScreenWidth(130),
          decoration:
              BoxDecoration(border: Border.all(color: const Color(0xFF10AB83))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(subTitle,
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(14),
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Container(
          height: getProportionateScreenHeight(140),
          width: getProportionateScreenWidth(117),
          decoration:
              BoxDecoration(border: Border.all(color: const Color(0xFF10AB83))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                price1,
                style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                price2,
                style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget productPrice(
      {required String price1,
      required String price2,
      required String price3}) {
    return Container(
      height: getProportionateScreenHeight(360),
      width: getProportionateScreenWidth(117),
      decoration:
          BoxDecoration(border: Border.all(color: const Color(0xFF10AB83))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            price1,
            style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(price2,
              style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 45,
          ),
          Text(price3,
              style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget productItem(
      {required String title,
      required String subTitle1,
      required String subTitle2,
      required String subTitle3}) {
    return Container(
      height: getProportionateScreenHeight(360),
      width: getProportionateScreenWidth(130),
      decoration:
          BoxDecoration(border: Border.all(color: const Color(0xFF10AB83))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(14),
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(subTitle1,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(14),
                  color: Color(0xFF000000))),
          const SizedBox(
            height: 25,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(subTitle2,
              style: const TextStyle(fontSize: 12, color: Color(0xFF000000))),
          const SizedBox(
            height: 25,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(subTitle3,
              style: const TextStyle(fontSize: 12, color: Color(0xFF000000))),
        ],
      ),
    );
  }

  Widget headingItem({required String text}) {
    return Container(
      height: getProportionateScreenHeight(50),
      width: getProportionateScreenWidth(250),
      decoration: const BoxDecoration(color: Color(0xFF10AB83)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, color: Color(0xFFFFFFFF)),
        ),
      ),
    );
  }
}
