import 'package:jaspr/jaspr.dart';
import 'package:my_website/components/common/button_primary_black.dart';
import 'package:my_website/components/common/size_box_component.dart';
import 'package:my_website/constants/image_constant.dart';

class HeaderHomePage extends StatefulComponent {
  const HeaderHomePage({super.key});

  @override
  State<HeaderHomePage> createState() => HeaderHomePageState();
}

class HeaderHomePageState extends State<HeaderHomePage> {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'header-web', [
      div(classes: 'header-web-padding', [
        div(classes: 'text-header-web', [
          div(
              classes: 'w500-60-custom',
              [text('Innovating the Future of Cross Tech')]),
          SizeBoxComponent(height: 35),
          div(classes: 'w400-20-custom', [
            text(
                'We empower businesses with cutting-edge solutions to thrive in a digital world.')
          ]),
          SizeBoxComponent(height: 35),
          ButtonPrimaryBlack(text: 'Discover Our Solutions'),
        ]),
        img(src: Images.imageHeader, styles: Styles(height: 515.px))
      ])
    ]);
  }

  @css
  static final styles = [
    css.import(
        "https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;700&display=swap"),
    css('.header-web', [
      css('&').styles(
        display: Display.flex,
        width: 100.vw,
      ),
    ]),
    css('.header-web-padding', [
      css('&').styles(
        display: Display.flex,
        width: 100.percent,
        padding: Padding.symmetric(horizontal: 100.px, vertical: 70.px),
        flexDirection: FlexDirection.row,
        justifyContent: JustifyContent.spaceBetween,
        alignItems: AlignItems.start,
      ),
    ]),
    css('.text-header-web', [
      css('&').styles(
          display: Display.flex,
          width: 40.percent,
          flexDirection: FlexDirection.column)
    ]),
    css('.w500-60-custom', [
      css('&').styles(
          fontFamily: FontFamily.list(
              [FontFamily("Space Grotesk"), FontFamilies.andaleMono]),
          fontSize: 60.px,
          fontWeight: FontWeight.w500)
    ]),
    css('.w400-20-custom', [
      css('&').styles(
          fontFamily: FontFamily.list(
              [FontFamily("Space Grotesk"), FontFamilies.andaleMono]),
          fontSize: 20.px,
          fontWeight: FontWeight.w400)
    ]),
  ];
}
