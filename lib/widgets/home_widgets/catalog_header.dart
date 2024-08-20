import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../themes.dart';

class CatalogHeader extends StatefulWidget {
  const CatalogHeader({super.key});
  @override
  State<CatalogHeader> createState() => _CatalogHeaderState();
}

class _CatalogHeaderState extends State<CatalogHeader> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'E - Shop',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: context.theme.colorScheme.secondary,
              ),
            ),
            const ChangeThemeButton()
          ],
        ),
        Text(
          'Trending products',
          style: TextStyle(
            color: context.theme.colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
