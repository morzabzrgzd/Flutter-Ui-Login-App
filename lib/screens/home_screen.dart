import 'package:flutter/material.dart';
import 'package:login_ui/Screens/login_screen.dart';
import 'package:login_ui/Screens/sign_up_screen.dart';
import 'package:login_ui/constant.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: kBackgroundColor,
          body: Column(
            children: [
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: TabBar(
                            labelColor: kTextColor,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: kTextColor,
                            unselectedLabelColor: kLableTextColor,
                            labelStyle: TextStyle(
                              fontSize: size.width * 0.035,
                              fontWeight: FontWeight.w700,
                            ),
                            tabs: [
                              Tab(
                                text: 'Login',
                              ),
                              Tab(
                                text: 'Sign Up',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.only(right: size.width * 0.04),
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: kButton2Color,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 15,
                                    offset: Offset(-2, 2))
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.account_circle_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 12,
                child: Container(
                  child: TabBarView(
                    children: [
                      LoginScreen(),
                      SignUpScreen(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
