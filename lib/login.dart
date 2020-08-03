import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          _buildLogo(context),
          _buildFirstSquare(),
          _buildSecondSquare(context),
          Column(
            children: <Widget>[_buildInfo(context)],
          )
        ],
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.centerLeft,
          colors: [Color(0xFF002032), Color(0xFF004768)],
        ),
      ),
      child: Center(
        child: Container(
          width: 150,
          child: Image.asset('inter-logo-branco.png'),
        ),
      ),
    );
  }

  Widget _buildFirstSquare() {
    return Align(
      alignment: Alignment(0, -0.4),
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        height: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFF6F7FB),
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                _buildOperador(context),
                _buildTrocarButton(context),
              ],
            ),
            SizedBox(height: 80),
            _buildEntrarButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildOperador(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: SizedBox(
              height: 48,
              width: 48,
              child: CircleAvatar(
                backgroundColor: Color(0xFFD1D5E4),
                child: Text('CC', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Operador',
                style: TextStyle(
                  color: Color(0XFF65656E),
                  fontSize: 12,
                ),
              ),
              Text(
                '123456-89',
                style: TextStyle(
                  color: Color(0XFF65656E),
                  fontSize: 12,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTrocarButton(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {},
        child: Text(
          'TROCAR',
          style: TextStyle(
            color: Color(0XFF65656E),
            fontSize: 12,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(
            color: Color(0xFFB1B1BB),
          ),
        ),
      ),
    );
  }

  Widget _buildEntrarButton(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      padding: EdgeInsets.zero,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xFF002032), Color(0xFF004768)],
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
        child:
            Text('ENTRAR', style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }

  Widget _buildSecondSquare(BuildContext context) {
    return Align(
      alignment: Alignment(0, 0.3),
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        height: 125,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFF6F7FB),
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                _buildISafeImage(context),
                _buildGerarButton(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildISafeImage(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Image.asset('inter-isafe.png', width: 100),
      ),
    );
  }

  Widget _buildGerarButton(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              child: Material(
                color: Colors.white,
                child: InkWell(
                  splashColor: Colors.grey,
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(
                        Icons.more_horiz,
                        color: Color(0xFFFE8A51),
                      )),
                  onTap: () {},
                ),
              ),
            ),
            SizedBox(height: 10),
            Text('Gerar',
                style: TextStyle(fontSize: 12, color: Color(0xFFB1B1BB)))
          ],
        ),
      ),
    );
  }

  Widget _buildInfo(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 625),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Em caso de dúvidas entre em contato',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Capitais e região metropolitana:'),
                Text(
                  '3003-4070',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Demais localidades:'),
                Text(
                  '0800 9640 0007',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
