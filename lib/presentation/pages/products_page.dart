import 'package:b28_abduraimov_muhammadyusuf_exam_5/presentation/pages/product_page.dart';
import 'package:b28_abduraimov_muhammadyusuf_exam_5/presentation/style/fonts.dart';
import 'package:b28_abduraimov_muhammadyusuf_exam_5/presentation/words/words.dart';
import 'package:flutter/material.dart';

import '../components/menu_item.dart';
import '../components/product.dart';

class ProductsPage extends StatefulWidget {
  static const String id = "products_page";
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  int activeMenuItem = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.black,
              child: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        "assets/images/ic_apple.png",
                        width: 25,
                        height: 25,
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                    Expanded(
                      flex: 7,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Row(
                          children: [
                            MenuItem(
                              text: Lang.iphone.tr(),
                              onPress: menuItemOne,
                              isActive: activeMenuItem == 1 ? true : false,
                            ),
                            MenuItem(
                              text: Lang.macbook.tr(),
                              onPress: menuItemTwo,
                              isActive: activeMenuItem == 2 ? true : false,
                            ),
                            MenuItem(
                              text: Lang.watches.tr(),
                              onPress: menuItemThree,
                              isActive: activeMenuItem == 3 ? true : false,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        onPressed: homeIconBtn,
                        child: const Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                          size: 37,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              color: const Color(0xFFFAFBFA),
              child: SafeArea(
                child: Column(
                  children: [
                    const SizedBox(height: 5),
                    const Align(
                      alignment: Alignment(0.8, 1),
                      child: Icon(
                        Icons.search,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, top: 10, right: 40),
                      child: SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Lang.apple.tr(),
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 16,
                                  fontFamily: Font.poppins.ts(),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                Lang.watches.tr(),
                                style: TextStyle(
                                  fontFamily: Font.poppins.ts(),
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                ),
                              ),
                              const Product(),
                              const Product(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void menuItemOne() {
    activeMenuItem = 1;
    setState(() {});
  }

  void menuItemTwo() {
    activeMenuItem = 2;
    setState(() {});
  }

  void menuItemThree() {
    activeMenuItem = 3;
    setState(() {});
  }

  void homeIconBtn() {
    Navigator.pushNamed(context, ProductPage.id);
  }
}
