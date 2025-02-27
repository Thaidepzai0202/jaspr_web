import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
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
              (label: 'English', path: '/about'),
            ])
              div(classes: activePath == route.path ? 'active' : null, [
                Link(to: route.path, child: text(route.label)),
              ]),
          ]),
        ])
      ]),
    ]);
  }

  @css
  static final styles = [
    css('@import url("https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;700&display=swap");'),

    css('.header-container', [
      css('&').styles(
        width: Unit.vw(100),
      ),
    ]),
    css('.head_padding').styles(
      display: Display.flex,
      // width: Unit.vw(100),
      padding: Padding.symmetric(
          vertical: Unit.pixels(66), horizontal: Unit.pixels(100)),
      flexDirection: FlexDirection.row,
      justifyContent: JustifyContent.spaceBetween,
    ),
    // Style cho menu
    css('.nav-menu', [
      css('&').styles(
        display: Display.flex,
        fontFamily: FontFamily('Space Grotesk'),
        fontSize: 1.2.em,
        fontWeight: FontWeight.w500,
      ),
    ]),

    css('.nav-menu div', [
      css('&').styles(
        padding: Padding.symmetric(horizontal: 1.em),
      ),
    ]),

    // Hiệu ứng khi active
    css('.active', [
      css('&').styles(position: const Position.relative()),
      css('&::before').styles(
        content: '',
        display: Display.block,
        position: Position.absolute(bottom: 0.5.em, left: 20.px, right: 20.px),
        height: 2.px,
        radius: BorderRadius.circular(1.px),
        backgroundColor: Colors.white,
      ),
    ]),
  ];
}
