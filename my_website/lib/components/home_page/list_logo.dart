import 'package:jaspr/jaspr.dart';
import 'package:my_website/constants/image_constant.dart';

class ListLogo extends StatelessComponent {
  const ListLogo({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'list-logo-container', [
      div(classes: 'list-logo-content', [
        img(src: Images.amazonIcon),
        img(src: Images.drillbleIcon),
        img(src: Images.hubspotIcon),
        img(src: Images.notionIcon),
        img(src: Images.netflixIcon),
        img(src: Images.zoomIcon),
      ])
    ]);
  }

  @css
  static final styles = [
    css('.list-logo-container').styles(
        display: Display.flex,
        width: 100.vw,
        height: 48.px,
        overflow: Overflow.hidden),
    css('.list-logo-content').styles(
        display: Display.flex,
        width: 100.percent,
        height: 48.px,
        padding: Padding.symmetric(horizontal: 100.px),
        flexDirection: FlexDirection.row,
        justifyContent: JustifyContent.spaceBetween),
    css('.list-logo-content img').styles(
      maxWidth: 100.px,
      maxHeight: 100.percent,
    )
  ];
}
