import 'package:flutter/material.dart';
import 'package:flutter_demo/lesson_one/widget/gradient_text.dart';

const loginPageRoutes = '/second';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _remember = true;

  @override
  Widget build(BuildContext context) {
    //-->
    return WillPopScope(
      child: Scaffold(
        body: SingleChildScrollView(
          child: _createLoginScreen(),
        ),
      ),
      onWillPop: _onBackPressed,
    );
  }

  Future<bool> _onBackPressed() async {
    Navigator.of(context).pop(true);
    return true;
  }

  final Shader linearGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[Color(0xFFff7b43), Color(0xFFf4326f)],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  void onCheckChanged(bool changed) {}

  Widget _createLoginScreen() {
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFfc7f3f), Color(0xFFff2a6b)],
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Image.asset(
                      'assets/images/connexion.png',
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.3,
                    ),
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
                      ),
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
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: const Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: 'varela',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: const TextField(
                    style: TextStyle(
                      fontFamily: 'aria',
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.start,
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                      fillColor: Colors.white,
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0x99FFFFFF))),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0x99FFFFFF))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0x99FFFFFF))),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 24.0),
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: const TextField(
                    style: TextStyle(
                      fontFamily: 'aria',
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.start,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: Colors.white,
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0x99FFFFFF))),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0x99FFFFFF))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0x99FFFFFF))),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Text(''),
                      ),
                      Theme(
                        data: Theme.of(context)
                            .copyWith(unselectedWidgetColor: Colors.white),
                        child: Checkbox(
                          value: _remember,
                          onChanged: (bool? newValue) {
                            setState(() {
                              _remember = newValue ?? true;
                            });
                          },
                          activeColor: const Color(0xFFfc7f3f),
                          focusColor: Colors.white,
                          hoverColor: Colors.white,
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                        ),
                      ),
                      const Text(
                        'Remember Password',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'aria',
                            color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.width * 0.07),
                              side: const BorderSide(color: Colors.white),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {},
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.14,
                          width: MediaQuery.of(context).size.width * 0.6,
                          alignment: Alignment.center,
                          child: const GradientText(
                            'GET STARTED',
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xFFf4326f), Color(0xFFff7b43)],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.8,
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 1,
                              child: Text(''),
                            ),
                            RawMaterialButton(
                              shape: const CircleBorder(),
                              onPressed: () {},
                              fillColor: Colors.white,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.width * 0.14,
                                width: MediaQuery.of(context).size.width * 0.14,
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/images/ic_fb.png',
                                  width: 36.0,
                                  height: 36.0,
                                ),
                              ),
                            ),
                            RawMaterialButton(
                              shape: const CircleBorder(),
                              onPressed: () {},
                              fillColor: Colors.white,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.width * 0.14,
                                width: MediaQuery.of(context).size.width * 0.14,
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'assets/images/ic_tw.png',
                                  width: 36.0,
                                  height: 36.0,
                                ),
                              ),
                            ),
                            const Expanded(
                              flex: 1,
                              child: SizedBox(),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'FORGOT PASSWORD?',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'aria',
                            decoration: TextDecoration.underline,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(color: Color(0xff660000)),
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(bottom: bottomPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        flex: 1,
                        child: SizedBox(),
                      ),
                      const Text(
                        'DONT HAVE ACCOUNT ? ',
                        style: TextStyle(
                          color: Color(0xFFfc7f3f),
                          fontFamily: 'varela',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'varela',
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: SizedBox(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
