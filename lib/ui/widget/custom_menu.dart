import '../shared/theme.dart';
import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {
  final String imageUrl;
  final String title;
  const CustomMenu({Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Image.asset(imageUrl, width: 65, height: 65, fit: BoxFit.cover),
          const SizedBox(height: 9),
          Text(title, style: sanomatBlack),
        ],
      ),
    );
  }
}
