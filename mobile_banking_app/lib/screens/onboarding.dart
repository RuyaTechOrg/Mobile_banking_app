import 'package:flutter/material.dart';
import 'package:mobile_banking_app/screens/Main/home_page.dart';
import 'package:mobile_banking_app/screens/authentication/sign_up.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    void navigate (pageName) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => pageName));
    }

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
             Expanded(
              flex: 1,
              child:Container(
                decoration: const BoxDecoration(color: Colors.white),
              ) 
              ),
              Expanded(
                flex:2,
                child: 
                Container(
                width: screenWidth,
                child: 
                Image.asset("images/Freepik___Create_great_designs__faster-removebg-preview.png",scale: 0.4, width: 100,height: 100,)
                )),
                 Expanded(
                flex:1,
                child: 
                Container(
                width: screenWidth,
                child: 
                Column(children: [
                Text("The world Comes for",style: defaultTextStyle,textAlign: TextAlign.center,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Financial",style: highLighted),
                  const SizedBox(width: 10.0,),
                  Text("Advice",style: defaultTextStyle,)
                ],)
                ],)
                )),
                Material(
                color: Colors.purple,  
                borderRadius: BorderRadius.circular(15.0),
                child: 
                InkWell(onTap: () {
                  navigate(const HomePage());
                },
                child: Container(child: 
                const Padding(padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 80.0),
                child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 20.0),),
                )
                ),
                )
                ),
                TextButton(onPressed: () {
                  navigate(const HomePage());
                }, child: Text("skip",style: TextStyle(color: Colors.black.withOpacity(0.5)),)),
                // Expanded(
                // flex: 1,  
                // child: Container())
                ]))
            );
  }
}


TextStyle highLighted = const TextStyle(
  color: Colors.purple,
  fontSize: 24.0,
  fontWeight: FontWeight.bold
);

TextStyle defaultTextStyle = const TextStyle(
  color: Color.fromARGB(255, 11, 11, 11),
  fontSize: 24.0,
  fontWeight: FontWeight.bold
);