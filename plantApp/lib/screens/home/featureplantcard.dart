import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key? key, required this.image, this.press,

  }) : super(key: key);
  final String image;
  final VoidCallback? press;



  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding/2,
          bottom: kDefaultPadding/2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}