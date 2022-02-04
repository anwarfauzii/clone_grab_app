import 'package:clone_grab/ui/shared/theme.dart';
import 'package:flutter/material.dart';

class CardPromo extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String expiredPromo;
  const CardPromo({Key? key, required this.imageUrl, required this.title, required this.expiredPromo
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child:
              Image.asset(imageUrl, width: 169, height: 171),
        ),
        const SizedBox(height: 10),
        Text(title, style: sanomatBlack),
        const SizedBox(height: 4),
        Row(
          children: [
            const Icon(Icons.calendar_today),
            const SizedBox(width: 5),
            Text(
              expiredPromo,
              style: sanomatBlack.copyWith(fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
