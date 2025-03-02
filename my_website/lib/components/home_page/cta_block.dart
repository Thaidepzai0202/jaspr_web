import 'package:jaspr/jaspr.dart';
import 'package:my_website/components/common/button_primary_black.dart';
import 'package:my_website/constants/app_colors.dart';
import 'package:my_website/constants/image_constant.dart';

class CtaBlock extends StatelessComponent {
  const CtaBlock({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles(
            // width: 100.vw,
            height: 350.px,
            padding: Padding.symmetric(vertical: 60.px, horizontal: 100.px)),
        [
          div(
              styles: Styles(
                  // width: 100.percent,
                  height: 100.percent,
                  display: Display.flex,
                  flexDirection: FlexDirection.row,
                  justifyContent: JustifyContent.spaceBetween,
                  // padding: Padding.symmetric(horizontal: 100.px),
                  backgroundColor: AppColors.backgroundWhite,
                  radius: BorderRadius.circular(45.px)),
              [
                div(
                    styles: Styles(
                        display: Display.flex,
                        width: 40.percent,
                        padding: Padding.all(60.px),
                        flexDirection: FlexDirection.column,
                        justifyContent: JustifyContent.spaceBetween),
                    [
                      div(
                          styles: Styles(
                              fontSize: 30.px,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryColor),
                          [Text('Let’s make things happen')]),
                      div(
                          styles: Styles(
                              fontSize: 18.px,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primaryColor),
                          [
                            Text(
                                'Contact us today to learn more about how our digital marketing services can help your business grow and succeed online.')
                          ]),
                      ButtonPrimaryBlack(text: 'Get your free proposal'),
                    ]),
                div(
                    styles: Styles(
                      width: 55.percent,
                      alignItems: AlignItems.center,
                      display: Display.flex,
                      justifyContent: JustifyContent.center,
                      padding: Padding.only(right:  60.px),
                    ),
                    [img(src: Images.ctaBlockImage,height: 400)])
              ])
        ]);
  }
}
