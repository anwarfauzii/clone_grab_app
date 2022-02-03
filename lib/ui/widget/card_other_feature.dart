import '../shared/theme.dart';
import 'package:flutter/material.dart';

class CardOtherFeature extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;
  const CardOtherFeature(
      {Key? key,
      required this.title,
      required this.content,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: bgGreyColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Column(
              children: [
                Text(title, style: sanomatBlack),
                const SizedBox(height: 5),
                Text(
                  content,
                  style: sanomatBlack.copyWith(fontWeight: medium),
                ),
              ],
            ),
            const SizedBox(width: 30),
            Image.asset(imageUrl, width: 25, height: 25, fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
