import 'package:flutter/material.dart';

import '../style/fonts.dart';
import '../words/words.dart';

class Product extends StatelessWidget {
  const Product({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Image.asset("assets/images/img_watch.png"),
          const SizedBox(height: 10),
          Text(
            Lang.series.tr(),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: Font.poppins.ts(),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            Lang.title.tr(),
            style: TextStyle(
              color: const Color(0xFF777070),
              fontSize: 10,
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
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: Font.poppins.ts(),
                ),
              ),
              SizedBox(width: 16),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(0, 5),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.add,
                  size: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
