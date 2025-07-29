import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';

class ELoginDivider extends StatelessWidget {
  const ELoginDivider({
    super.key,
    required this.isDark,
    required this.text ,
  });

  final dynamic isDark;
  final String text ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: isDark ? EColors.darkGrey : EColors.grey, thickness: 0.7,indent: 60, endIndent: 5,)),
        Text(text , style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: isDark ? EColors.darkGrey : EColors.grey, thickness: 0.7,indent: 5, endIndent: 60,)),
      ],
    );
  }
}