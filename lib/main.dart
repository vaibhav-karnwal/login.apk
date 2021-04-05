import 'package:flutter/material.dart';
import './app_screens/home.dart';


void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
    throw UnimplementedError();
  }
}

class Login extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
        backgroundColor:Colors.white,
        appBar: AppBar(
          title:Text("Login Page"),
        ),
        body: SingleChildScrollView(
          child:Column(
            children: <Widget>[
              Padding(
                padding:const EdgeInsets.only(top:60.0),
                child: Center(
                  child:Container(
                      height: 150.0,
                      width: 200.0,
                      child:Image.asset('assets/images/flutter-logo.png'
                      )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child:TextField(
                  decoration: InputDecoration(
                      border:OutlineInputBorder(),
                      labelText:'Email',
                      hintText:'Enter valid email id as example@gmail.com'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0, right:15.0, top:15.0, bottom:0),
                child:TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border:OutlineInputBorder(),
                      labelText: 'Password',
                      hintText:'Enter secure password'
                  ),
                ),
              ),
              FlatButton(onPressed: (){
                //Forget password screen wil show here
              },
                child: Text(
                  'Forget Password',
                  style:TextStyle(
                      color:Colors.blue,
                      fontSize:15),
                ),
              ),
              Container(
                height:50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20),),
                child:FlatButton(
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
                    },
                    child:Text(
                      'Login',
                      style:TextStyle(color:Colors.white,fontSize:25),
                    )
                ),
              ),
              SizedBox(
                height:130,
              ),
              Text('New User? Create Account')
            ],
          ),
        ),
      );
      throw UnimplementedError();
  }

}