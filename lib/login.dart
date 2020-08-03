import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(0, 64, 96, 1),
                Color.fromRGBO(0, 32, 50, 1),
              ]),
            ),
            child: Center(
              child: Container(
                width: 150,
                child: Image.asset('inter-logo-branco.png'),
              ),
            ),
          ),
          Center(
            child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  color: Color(0XFFF6F7FB),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0XFFD1D5E4),
                          child:
                              Text('CC', style: TextStyle(color: Colors.white)),
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Text('TEXTO 1'),
                                  Text('TEXTO 2')
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
