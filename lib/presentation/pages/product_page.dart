import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/fonts.dart';
import '../words/words.dart';

class ProductPage extends StatefulWidget {
  static const String id = "product_page";

  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 37, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: backButton,
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "assets/images/img_watch.png",
                  width: 255,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  const SizedBox(width: 3),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  const SizedBox(width: 3),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  const SizedBox(width: 3),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
              Text(
                Lang.series.tr(),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: Font.poppins.ts(),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                Lang.title.tr(),
                style: TextStyle(
                  color: const Color(0xFF777070),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: Font.poppins.ts(),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    Lang.price.tr(),
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontFamily: Font.poppins.ts(),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 5),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 44),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  minimumSize: const Size(double.infinity, 52),
                  backgroundColor: const Color(0xFF030303),
                ),
                child: Text(
                  Lang.bybutton.tr(),
                  style: const TextStyle(
                    color: Color(0xFFFAFBFA),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 18),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  minimumSize: const Size(double.infinity, 52),
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xFF030303),
                    ),
                  ),
                ),
                child: Text(
                  Lang.addcard.tr(),
                  style: const TextStyle(
                    color: Color(0xFF030303),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void backButton() {
    Navigator.pop(context);
  }
}
