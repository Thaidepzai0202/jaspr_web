import 'package:jaspr/jaspr.dart';
import 'package:my_website/components/common/button_primary_black.dart';
import 'package:my_website/components/common/size_box_component.dart';
import 'package:my_website/constants/app_colors.dart';
import 'package:my_website/constants/image_constant.dart';

class CaseStudiesBlock extends StatelessComponent {
  const CaseStudiesBlock({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles(
            // width: 100.vw,
            // height: 330.px,
            padding: Padding.symmetric(horizontal: 100.px)),
        [
          div(
              styles: Styles(
                  // width: 100.percent,
                  // height: 190.px,
                  display: Display.flex,
                  flexDirection: FlexDirection.row,
                  justifyContent: JustifyContent.spaceBetween,
                  padding:
                      Padding.symmetric(horizontal: 60.px, vertical: 70.px),
                  // padding: Padding.only(top: 70.px, right: 70.px, left: 70.px),
                  backgroundColor: AppColors.primaryColor,
                  radius: BorderRadius.circular(45.px)),
              [
                _item(
                    content:
                        "For a local restaurant, we implemented a targeted PPC campaign that resulted in a 50% increase in website traffic and a 25% increase in sales."),
                _line(),
                _item(
                    content:
                        'For a B2B software company, we developed an SEO strategy that resulted in a first page ranking for key keywords and a 200% increase in organic traffic.'),
                _line(),
                _item(
                    content:
                        'For a national retail chain, we created a social media marketing campaign that increased followers by 25% and generated a 20% increase in online sales.')
              ])
        ]);
  }

  Component _item({required String content}) {
    return div(
        styles: Styles(
          display: Display.flex,
          flexDirection: FlexDirection.column,
        ),
        [
          div(
              styles: Styles(
                  fontSize: 18.px,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white),
              [Text(content)]),
          SizeBoxComponent(height: 20),
          div(
              styles: Styles(
                  display: Display.flex, flexDirection: FlexDirection.row),
              [
                div(
                    styles: Styles(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greenPrimary),
                    [
                      Text("Learn more"),
                    ]),
                SizeBoxComponent(width: 15),
                img(src: Images.learnMoreGreenIcon, width: 18, height: 18)
              ])
        ]);
  }

  Component _line() {
    return div(
        styles: Styles(
            width: 1.px,
            margin: Margin.symmetric(horizontal: 64.px),
            backgroundColor: AppColors.white,
            radius: BorderRadius.circular(2.px)),
      [

    ]);
  }
}
