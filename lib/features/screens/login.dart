import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reviewapp/firebase/auth/auth_services.dart';


import '../../cofig/app_routes/routes.dart';
import '../../core/utilies/app_colors.dart';
import '../../state/provider/auth_provider.dart';
import '../widgets/fluttertoast.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = new GlobalKey<FormState>();

  String _firstName = "";
  String _lastName = "";
  String _phoneNumber = "";
  String _email = "";
  String _password = "";
  //this is an error
  String error = '';
  bool loading = false;



  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    var tProvider = Provider.of<AuthProvider>(context,listen: true);
    var fProvider = Provider.of<AuthProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Login",style: TextStyle(color: AppColors.accentColor),),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Form(
            key: formKey,
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Email',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Color(0xff8F5F43)),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextFormField(
                      controller: fProvider.emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(hintText: 'Email'),
                      validator: (val) {
                        if (val!.isEmpty || !val.contains('@')) {
                          return 'Please enter valid email';
                        }
                        return null;
                      },
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Password',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Color(0xff8F5F43)),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextFormField(
                      obscureText: _isHidePassword,
                      autofocus: false,
                      controller: fProvider.passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: GestureDetector(
                            onTap: () {
                              _togglePasswordVisibility();
                            },
                            child: Icon(
                              _isHidePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: _isHidePassword
                                  ? Color(0xfff9811e)
                                  : Color(0xff16071e),
                            ),
                          )),
                      validator: (val) => val!.length < 6
                          ? 'Enter password 6+ chars long'
                          : null,
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 30.0),
                    ButtonTheme(
                      minWidth: 400.0,
                      height: 50.0,
                      child: tProvider.isLoading? const CircularProgressIndicator(): MaterialButton(
                        color: AppColors.primaryColor,
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),

                        ),
                        child: Text(
                          '  Sign in  ',
                          style:
                          TextStyle(color: AppColors.accentColor, fontSize: 17),
                        ),
                        onPressed: (){
                          fProvider.login(email:fProvider.emailController.text,password: fProvider.passwordController.text ).then((value){
                            Navigator.of(context).pushNamed(RouteGenerator.shopHomeScreen);

                            BuildToast.showToast(text: "Successfully sign in", state: ToastState.Success, context: context);

                          }).catchError((onError){
                            BuildToast.showToast(text: "something went wrong", state: ToastState.Error, context: context);

                          });
                        },
                      ),
                    ),
                    Text(
                      error,
                      style:
                      TextStyle(color: Color(0xFFDA2C2C), fontSize: 14.0),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
