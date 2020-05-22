import 'package:flutter/material.dart';
import 'package:shopping/pages/signup.page.dart';

class LoginPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, top: 80, right: 20, bottom: 40),
          child: Column(
            children: <Widget>[
              Container(
                height: 480,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black12,
                      offset: new Offset(1, 2.0),
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 60),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  "Welcome",
                                  style: Theme.of(context).textTheme.display2,
                                ),
                                Text(
                                  "Sign in to continue",
                                  style: Theme.of(context).textTheme.subhead,
                                ),
                              ],
                            ),
                            FlatButton(
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupPage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        TextFormField(
                          //autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          style: TextStyle(fontSize: 20),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Invalid Email';
                            }
                            return null;
                          },
                          onSaved: (input) => _email = input,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          //autofocus: true,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                          style: TextStyle(fontSize: 20),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Invalid Password';
                            }
                            return null;
                          },
                          onSaved: (input) => _password = input,
                        ),
                        Container(
                          height: 40,
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            child: Text(
                              "Forgot your password?",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: FlatButton(
                            child: Text(
                              "Sign in",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              if (_formkey.currentState.validate()) {
                                _formkey.currentState.save();
                                print(_email);
                                print(_password);

                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Welcome, $_email',
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  '- OR -',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: FlatButton(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          "assets/facebook.png",
                        ),
                      ),
                      Text('Sign in with Facebook'),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: FlatButton(
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 24,
                        width: 100,
                        child: Image.asset(
                          "assets/google.png",
                        ),
                      ),
                      Text('Sign in with Google'),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
