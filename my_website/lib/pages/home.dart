import 'package:jaspr/jaspr.dart';
import 'package:my_website/components/common/title_icon_home.dart';
import 'package:my_website/components/home_page/header_home_page.dart';
import 'package:my_website/components/home_page/list_logo.dart';

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
          TitleIconHome(title: "Service gg",content: "Explore Real-Life Examples of Our Proven Digital Marketing Success through Our Case Studies Explore Real-Life Examples of Our Proven Digital Marketing Success through Our Case Studies"),
          div(styles: Styles(height: 1000.px), []),
          img(src: 'images/logo.svg', width: 80),
          h1([text('Welcome')]),
          p([text('You successfully create a new Jaspr site.')]),
          const Counter(),
          div(styles: Styles(height: 100.px), []),
          const Counter(),
          div(styles: Styles(height: 100.px), []),
          const Counter(),
          div(styles: Styles(height: 100.px), []),
          const Counter(),
          div(styles: Styles(height: 100.px), []),
          const Counter(),
          div(styles: Styles(height: 100.px), []),
          const Counter(),
          div(styles: Styles(height: 100.px), []),
          const Counter(),
          div(styles: Styles(height: 100.px), []),
        ]);
  }
}
