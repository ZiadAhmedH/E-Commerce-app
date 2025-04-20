import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class PageViewItem extends StatelessWidget {

  final String imagePath , imageBackground;
  final String description;
  final Widget title  ;
  const PageViewItem({
    required this.imagePath,
    required this.imageBackground,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
          
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  imageBackground,
                  fit: BoxFit.fill,
                ),
              ),
          
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  imagePath,
                ),
              ),

              Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),

                textAlign: TextAlign.center,
              ),
             
             Padding(
               padding: const EdgeInsets.all(16),
               child: Text("تخط"),
             ),
             
            ],
          ),
        ),
      ],
    );
  }
}