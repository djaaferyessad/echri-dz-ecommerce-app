
import 'package:flutter/material.dart';

import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class ELoginHeader extends StatelessWidget {
  const ELoginHeader({
    super.key,
    required this.isDark,
  });

  final dynamic isDark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(isDark ? EImages.darklogo : EImages.lightlogo),
          height: 150,
        ),
        Text(ETexts.loginTitle , style: Theme.of(context).textTheme.headlineMedium)  ,
        SizedBox(height: ESizes.sm) ,
        Text(ETexts.loginSubtitle , style:Theme.of(context).textTheme.bodyMedium) ,
      ],
    );
  }
}