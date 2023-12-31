import 'package:flutter/material.dart';
import 'package:flutter_reflectable/reflectable_story_book/story_book_mixin.dart';
import 'package:flutter_reflectable/sample_annotation.dart';

class GreenBoxWidget extends StatelessWidget {
  const GreenBoxWidget({Key? key, this.width, this.height}) : super(key: key);

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: width,
      height: height,
    );
  }
}

@sampleWidget
class SampleGreenBoxWidget extends StatelessWidget with StoryBookName {
  const SampleGreenBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const GreenBoxWidget(
      height: 100,
      width: 100,
    );
  }

  @override
  String get name => 'box/green-box';
}
