import 'package:flutter/material.dart';
import 'package:flutter_demo/lesson_one/login/screen_agrument.dart';
import 'package:flutter_demo/lesson_one/widget/gradient_text.dart';

const homePageRoutes = '/';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: _createHomeScreen(),
      ),
    );
  }

  final Shader linearGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[Color(0xFFff7b43), Color(0xFFf4326f)],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  Widget _createHomeScreen() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFfc7f3f),
            Color(0xFFff2a6b),
          ],
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/connexion.png',
                    width: 148.0,
                    height: 148.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'CONNECT',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Color(0xFFff2f83),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'aria'),
                      ),
                      Text(
                        'EXION',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'aria'),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: const Text(
                      'Find and Meet people around\nyou to find LOVE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'aria',
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                          side: const BorderSide(color: Colors.white),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 56.0,
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 4.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/ic_fb.png',
                            width: 24.0,
                            height: 24.0,
                          ),
                          const VerticalDivider(
                            indent: 6.0,
                            endIndent: 6.0,
                            thickness: 1.0,
                            color: Color(0xFFff6666),
                          ),
                          const GradientText(
                            'Sign in with Facebook',
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFff7b43), Color(0xFFf4326f)],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                          side: const BorderSide(color: Colors.white),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 56.0,
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 4.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/ic_tw.png',
                            width: 24.0,
                            height: 24.0,
                          ),
                          const VerticalDivider(
                            indent: 6.0,
                            endIndent: 6.0,
                            thickness: 1.0,
                            color: Color(0xFFff6666),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 8.0),
                            child: const GradientText(
                              'Sign in with Twitter',
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFFff7b43), Color(0xFFf4326f)],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                          side: const BorderSide(color: Colors.white),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 56.0,
                      alignment: Alignment.center,
                      child: const GradientText(
                        'Sign up',
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFff7b43), Color(0xFFf4326f)],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // via router
                      Navigator.pushNamed(context, '/second',
                          arguments: ScreenArgument('title', 'message'));
                    },
                    child: const Text(
                      'ALREADY REGISTERED? SIGN IN',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'fonts/aria-rounded-bold.ttf',
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          )
        ],
      ),
    );
  }
}
