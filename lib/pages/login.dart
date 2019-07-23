import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:
            BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _LoginHeader(),
            _LoginBody(),
          ],
        ),
      ),
    );
  }

  Widget _LoginHeader() {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Theme.of(context).primaryColorDark),
        height: 200,
        child: Icon(
          FontAwesomeIcons.facebook,
          color: Colors.white,
          size: 70,
        ));
  }

  Widget _LoginBody() {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _LoginForm(),
            _CreateNewAccount(),
          ],
        ),
      ),
    );
  }

  Widget _LoginForm() {
    return Container(
      //decoration: BoxDecoration(color: Colors.pink),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                hintText: 'Phone number or email address',
                border: OutlineInputBorder(),
                disabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).backgroundColor),
                )),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
                disabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).backgroundColor),
                )),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: FlatButton(
              onPressed: () {},
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                'Log In',
                style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: FlatButton(
              child: Text(
                'Forgotten Password ?',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              splashColor: Colors.transparent,
              onPressed: () {},
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: FlatButton(
              child: Text(
                'Back',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              splashColor: Colors.transparent,
              onPressed: () {},
            ),
          ),
        ],
      ),
      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
    );
  }

  Widget _CreateNewAccount() {
    return Container(
      //decoration: BoxDecoration(color: Colors.green),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 50.0, right: 20.0),
                      child: Divider(
                        color: Theme.of(context).dividerColor,
                        height: 36,
                      )),
                ),
                Text("OR"),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 50.0),
                      child: Divider(
                        color: Theme.of(context).dividerColor,
                        height: 36,
                      )),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 10, right: 10),
            child: FlatButton(
              onPressed: () {},
              color: Theme.of(context).primaryColorLight,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                'Create New Account',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom:40),)
        ],
      ),
    );
  }
}
