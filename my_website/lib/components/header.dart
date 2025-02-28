import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:my_website/constants/app_colors.dart';
import 'package:my_website/constants/image_constant.dart';

import '../constants/theme.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var activePath = context.url;

    yield header([
      div(classes: 'header-container', [
        div(classes: 'head_padding', [
          img(
            src: Images.imagePrimary,
            styles: Styles(width: Unit.pixels(36), height: Unit.pixels(36)),
          ),

          // Navigation bên phải
          nav(classes: 'nav-menu', [
            for (var route in [
              (label: 'About us', path: '/'),
              (label: 'Services', path: '/'),
              (label: 'Contact', path: '/'),
              (label: 'Careers', path: '/'),
            ])
              div([
                Link(to: route.path, child: text(route.label)),
              ]),
            div(classes: "language-header", [
              Link(to: '/about', child: text("English")),
            ]),
          ]),
        ])
      ]),
    ]);
  }

  @css
  static final styles = [
    css.import(
        "https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;700&display=swap"),

    css('.header-container', [
      css('&').styles(
        width: Unit.vw(100),
      ),
    ]),
    css('.head_padding').styles(
      display: Display.flex,
      height: 68.px,
      // width: Unit.vw(100),
      padding: Padding.only(top: 66.px, left: 100.px, right: 100.px),
      flexDirection: FlexDirection.row,
      justifyContent: JustifyContent.spaceBetween,
      alignItems: AlignItems.center,
    ),
    // Style cho menu
    css('.nav-menu a', [
      css('&').styles(
          margin: Margin.symmetric(horizontal: 20.px),
          color: Colors.black,
          fontFamily: FontFamily.list(
              [FontFamily("Space Grotesk"), FontFamilies.andaleMono]),
          fontSize: 20.px,
          fontWeight: FontWeight.w400,
          textDecoration: TextDecoration.none),
    ]),
    css('.nav-menu ', [
      css('&').styles(
        display: Display.flex,
      ),
    ]),
    css('.language-header', [
      css('&').styles(
        display: Display.flex,
        height: 68.px,
        padding: Padding.symmetric(horizontal: 15.px),
        border:
            Border.all(BorderSide(color: AppColors.primaryColor, width: 1.px)),
        radius: BorderRadius.circular(14.px),
        alignItems: AlignItems.center,
        color: AppColors.primaryColor,
        fontFamily: FontFamily.list(
            [FontFamily("Space Grotesk"), FontFamilies.andaleMono]),
        fontSize: 20.px,
        fontWeight: FontWeight.w400,
        textDecoration: TextDecoration.none,
      )
    ]),
    css('.nav-menu div', [
      css('&').styles(display: Display.flex, alignItems: AlignItems.center),
    ]),
  ];
}
