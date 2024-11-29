import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.iconPath,
  });

  final String title;
  final String imagePath;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 110,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                SizedBox(width: 15),
                Text("4",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                      imagePath, width: 60, height: 60, fit: BoxFit.cover),
                ),
                SizedBox(width: 10),
                // Text and Value
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "3768",
                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      // Replaced Icon with Image.asset()
                      Image.asset(
                        iconPath,
                        width: 18,
                        height: 18,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
