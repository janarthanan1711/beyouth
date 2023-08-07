import 'package:beyouth/Modals/categorymodels.dart';
import 'package:flutter/material.dart';

import '../Views/products_page.dart';
class ProductDesignWidget extends StatelessWidget {
   ProductDesignWidget({super.key,required this.titles,required this.images,required this.height,required this.width});

  String? images;
  String? titles;
  double? width;
  double? height;
  @override
  Widget build(BuildContext context) {
    return  Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductPage()));
            },
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(images!),fit: BoxFit.fill)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 220,
                    height: 20,
                    color: Colors.transparent.withOpacity(0.500),
                    child: Center(child: Text(titles!,style: const TextStyle(
                      color: Colors.white,
                    ),)),
                  )
                ],
              ),
            ),
          ),

        );

  }
}
