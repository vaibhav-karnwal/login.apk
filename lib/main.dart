import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './app_screens/home.dart';


void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: new Theme(
          data: new ThemeData(
            hintColor: Colors.yellow
          ),
        child:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: new ColorFilter.mode(Colors.redAccent.withOpacity(0.4), BlendMode.color),
                image: AssetImage("assets/images/1.jpg"), fit: BoxFit.cover),
          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child:TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder:OutlineInputBorder(borderSide: new BorderSide(color: Colors.grey,width: 2)),
                      labelText:'Email',labelStyle: TextStyle(color: Colors.grey,fontSize: 20),
                      fillColor: Colors.white,
                      hintText:'Enter valid email id as example@gmail.com',hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0, right:15.0, top:15.0, bottom:0),
                child:TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder:OutlineInputBorder(borderSide: new BorderSide(color: Colors.grey,width: 2)),
                      labelText: 'Password',labelStyle: TextStyle(color: Colors.grey,fontSize: 20),
                      fillColor: Colors.white,
                      hintText:'Enter secure password',hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                //Forget password screen wil show here
              },
                child: Text(
                  'Forget Password',
                  style:TextStyle(
                      color:Colors.white,
                      fontSize:15),
                ),
              ),
              Container(
                height:50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20),),
                child:ElevatedButton(
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
                height:20,
              ),
              Text('New User? Create Account',style: TextStyle(color: Colors.red[100]),)
            ],
          ),
        ),
        ),
      );
  }

}