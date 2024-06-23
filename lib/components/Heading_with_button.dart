import 'package:flutter/cupertino.dart';
import '../../Constants.dart';
import '../../styles.dart';
import '../text_button.dart';

class HeadingwithButton extends StatelessWidget {
  final String label ;
  const HeadingwithButton({super.key,required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: globalPadding.px_md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,style: TypographyStyle.l2Font.copyWith(fontWeight: FontWeight.w600),),
          CustomTextButton(onpressed: (){}, label: 'See All')
        ],
      ),
    );
  }
}
