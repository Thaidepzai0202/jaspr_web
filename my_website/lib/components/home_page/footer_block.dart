import 'package:jaspr/jaspr.dart';
import 'package:my_website/components/home_page/member_card.dart';
import 'package:my_website/constants/app_colors.dart';
import 'package:my_website/constants/image_constant.dart';

import '../common/button_primary_black.dart';
import '../common/size_box_component.dart';

class FooterBlock extends StatelessComponent {
  const FooterBlock({
    super.key,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        styles: Styles(
            display: Display.flex,
            height: 400.px,
            padding: Padding.symmetric(horizontal: 60.px, vertical: 50.px),
            margin: Margin.symmetric(horizontal: 100.px),
            radius: BorderRadius.only(
                topLeft: Radius.circular(45.px),
                topRight: Radius.circular(45.px)),
            flexDirection: FlexDirection.column,
            justifyContent: JustifyContent.spaceBetween,
            backgroundColor: AppColors.primaryColor),
        [_header(), _body(), _footer()]);
  }

  Component _header() {
    return div(
        styles: Styles(
            display: Display.flex,
            flexDirection: FlexDirection.row,
            justifyContent: JustifyContent.spaceBetween),
        [
          div(
              styles: Styles(
                  display: Display.flex,
                  flexDirection: FlexDirection.row,
                  alignItems: AlignItems.center),
              [
                img(
                    width: 30,
                    height: 30,
                    styles: Styles(raw: {"filter": "invert(1)"}),
                    src: Images.imagePrimary),
                SizeBoxComponent(width: 6),
                div(
                    styles: Styles(
                        color: AppColors.white,
                        fontSize: 30.px,
                        fontWeight: FontWeight.w500),
                    [Text("Positives")])
              ]),
          div(
              styles: Styles(
                  display: Display.flex,
                  flexDirection: FlexDirection.row,
                  color: AppColors.white,
                  fontSize: 18.px,
                  fontWeight: FontWeight.w400,
                  textDecoration:
                      TextDecoration(line: TextDecorationLine.underline)),
              [
                Text("About us"),
                SizeBoxComponent(width: 40),
                Text("Services"),
                SizeBoxComponent(width: 40),
                Text("User Case"),
                SizeBoxComponent(width: 40),
                Text("Pricing"),
              ]),
          div(
              styles: Styles(
                  display: Display.flex, flexDirection: FlexDirection.row),
              [
                img(src: Images.instagramIcon, height: 30, width: 30),
                SizeBoxComponent(width: 20),
                img(src: Images.facebookIcon, height: 30, width: 30),
                SizeBoxComponent(width: 20),
                img(src: Images.twitterIcon, height: 30, width: 30),
              ])
        ]);
  }

  Component _body() {
    return div(
        styles: Styles(
            display: Display.flex,
            height: 185.px,
            flexDirection: FlexDirection.row,
            justifyContent: JustifyContent.spaceBetween),
        [
          _contentUs(),
          _inputEmail(),
        ]);
  }

  Component _contentUs() {
    return div(
        styles: Styles(
            display: Display.flex,
            width: 30.percent,
            height: 100.percent,
            flexDirection: FlexDirection.column,
            justifyContent: JustifyContent.spaceBetween,
            color: AppColors.white,
            fontSize: 18.px,
            fontWeight: FontWeight.w400),
        [
          div([Text("Contact us")]),
          div([Text("Email: info@crosstech.com")]),
          div([Text("Phone: 555-567-8901")]),
          div([
            Text("Address: 1234 Main St Moonstone City, Stardust State 12345")
          ]),
        ]);
  }

  Component _inputEmail() {
    return div(
        styles: Styles(
            display: Display.flex,
            width: 60.percent,
            height: 100.percent,
            padding: Padding.symmetric(horizontal: 40.px),
            radius: BorderRadius.circular(14.px),
            flexDirection: FlexDirection.row,
            justifyContent: JustifyContent.spaceBetween,
            alignItems: AlignItems.center,
            backgroundColor: AppColors.background292A32),
        [
          textarea(
              placeholder: "Email",
              styles: Styles(
                width: 100.percent,
                height: 22.px,
                padding: Padding.symmetric(horizontal: 30.px, vertical: 22.px),
                border: Border(color: AppColors.white, width: 2.px),
                radius: BorderRadius.circular(14.px),
                alignItems: AlignItems.center,
                color: Colors.white,
                fontSize: 18.px,
                fontWeight: FontWeight.w400,
                backgroundColor: Colors.transparent,
                raw: {
                  'resize': 'none',
                  "white-space": "nowrap",
                  "overflow": "hidden"
                },
              ),
              []),
          SizeBoxComponent(width: 20),
          div(
              styles: Styles(
                  width: 320.px,
                  padding: Padding.symmetric(vertical: 20.px, horizontal: 35.px),
                  radius: BorderRadius.circular(14.px),
                  justifyContent: JustifyContent.center,
                  alignItems: AlignItems.center,
                  fontSize: 20.px,
                  fontWeight: FontWeight.w400,
                  backgroundColor: AppColors.greenPrimary),
              [Text("Subscribe to news")])
        ]);
  }

  Component _footer() {
    return div(
        styles: Styles(
            display: Display.flex,
            padding: Padding.only(top: 50.px),
            border: Border.only(
                top: BorderSide(width: 1.px, color: AppColors.white)),
            color: AppColors.white),
        [
          Text("© 2024 Crosstech. All Rights Reserved."),
          SizeBoxComponent(width: 40),
          Text("Privacy Policy")
        ]);
  }
}
