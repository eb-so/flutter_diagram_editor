import 'package:flutter/material.dart';

import 'app_consts.dart';

class TestsuiteRect extends StatelessWidget {
  final String title;
  final bool isHighlight;
  const TestsuiteRect({
    Key? key,
    required this.title,
    this.isHighlight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: kTestsuiteRectHeight,
      decoration: BoxDecoration(
          border:
              isHighlight ? Border.all(color: kcPrimaryPurple, width: 3) : null,
          color: kcSidePanelBackground,
          borderRadius: BorderRadius.all(Radius.circular(12.0))),
      child: Text(title, maxLines: 1, style: tsMediumLarge()),
    );
  }
}
