import 'package:jaspr/jaspr.dart';
import 'package:my_website/components/common/size_box_component.dart';
import 'package:my_website/components/common/title_icon_home.dart';
import 'package:my_website/components/home_page/case_studies_block.dart';
import 'package:my_website/components/home_page/contact_us_block.dart';
import 'package:my_website/components/home_page/cta_block.dart';
import 'package:my_website/components/home_page/footer_block.dart';
import 'package:my_website/components/home_page/group_of_card.dart';
import 'package:my_website/components/home_page/header_home_page.dart';
import 'package:my_website/components/home_page/item_services.dart';
import 'package:my_website/components/home_page/list_logo.dart';
import 'package:my_website/components/home_page/our_service.dart';
import 'package:my_website/components/home_page/process_block.dart';
import 'package:my_website/constants/app_colors.dart';
import 'package:my_website/constants/image_constant.dart';

import '../components/counter.dart';

// By using the @client annotation this component will be automatically compiled to javascript and mounted
// on the client. Therefore:
// - this file and any imported file must be compilable for both server and client environments.
// - this component and any child components will be built once on the server during pre-rendering and then
//   again on the client during normal rendering.
@client
class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    // Run code depending on the rendering environment.
    if (kIsWeb) {
      print("Hello client");
      // When using @client components there is no default `main()` function on the client where you would normally
      // run any client-side initialization logic. Instead you can put it here, considering this component is only
      // mounted once at the root of your client-side component tree.
    } else {
      print("Hello server");
    }
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        // classes: ,
        [
          HeaderHomePage(),
          ListLogo(),
          TitleIconHome(
              title: "Service gg",
              content:
                  "Explore Real-Life Examples of Our Proven Digital Marketing Success through Our Case Studies "),
          OurService(),
          CtaBlock(),
          TitleIconHome(
              title: 'Case Studies',
              content:
                  'Explore Real-Life Examples of Our Proven Digital Marketing Success through Our Case Studies'),
          CaseStudiesBlock(),
          TitleIconHome(
              title: 'Our Working Process ',
              content: 'Step-by-Step Guide to Achieving Your Business Goals'),
          ProcessBlock(),
          TitleIconHome(
              title: 'Team',
              content: 'Meet the skilled and experienced team behind our successful digital marketing strategies'),
          GroupOfCard(),
          TitleIconHome(
              title: 'Contact Us',
              content: '''Connect with Us: Let's Discuss Your Digital Marketing Needs'''),
          ContactUsBlock(),
          SizeBoxComponent(height: 140),
          FooterBlock(),



        ]);
  }
}
