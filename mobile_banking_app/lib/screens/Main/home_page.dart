import 'package:flutter/material.dart';
import 'package:mobile_banking_app/screens/onboarding.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    void navigate (pageName) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => pageName));
    }

     
   Widget _build_Transaction_History () {
      return 
      GestureDetector(
      onTap: () {
        null;
      },  
      child: 
      Column(children : [
      Container(
        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
        width: screenWidth,
        height: screenHeight * 0.13,
        decoration: BoxDecoration(
        color: const Color.fromARGB(153, 236, 236, 236),  
        borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(children: [
          Container(
          width: screenWidth * 0.15,
          height: screenWidth * 0.15,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.purple,),  
          child: 
          Image.asset('images/Freepik___Create_great_designs__faster-removebg-preview.png',scale: 0.8,)
          ,),
          const SizedBox(
            width: 30.0,
          ),
          Container(
          padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 10.0),  
          child: 
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text("Daniel Sivan",style: TextStyle(fontWeight: FontWeight.w500),),
            const SizedBox(height: 10.0,),
            Text('\$64.00',style: boldBlackStyle,)
          ],)
          ,),],),
          Container(child: 
            IconButton(onPressed: () {}, icon: Icon(Icons.list))
          ,)
        ]),
      ),
      const SizedBox(height : 10.0)
      ])
      ,);
    };


    return
    Scaffold(body: 
    Container(
    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
    width: screenWidth,
    height: screenHeight,
    child:
    SingleChildScrollView(child: 
     Container(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      width: screenWidth,
      height: screenHeight,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(children: [
        Container(
        height: screenHeight * 0.11,
        width: MediaQuery.of(context).size.width,  
        child: 
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(children: [
          CircleAvatar(
          backgroundColor: Color.fromARGB(218, 236, 193, 0),  
          child: Image.asset("images/Freepik___Create_great_designs__faster-removebg-preview.png",scale :0.8),),
          const SizedBox(width: 20.0,),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 10.0,),
            Text('Hi, John smith',style: TextStyle(fontSize: 14.0,color: Colors.black),),
            Text("Good Morning",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),)
          ],),],),
          Container(
          decoration: BoxDecoration(border: Border.all(width: 1.0,color : Color.fromARGB(255, 204, 204, 204)),
          borderRadius: BorderRadius.circular(50.0)
          ),  
          child: 
          IconButton(  
          onPressed: () {
            print('The notification button works!');
          }, icon: const Icon(Icons.notifications))
          ,)
        ])
        ,),
        const SizedBox(height: 20.0,),
        Container(
        padding: const EdgeInsets.fromLTRB(30.0,20.0, 10.0, 20.0),
        width: screenWidth,
        height: screenHeight * 0.28,
        decoration:  BoxDecoration(
        gradient: const LinearGradient(begin: Alignment.topCenter,
        end:Alignment.bottomCenter,
        colors: [ Color.fromARGB(218, 98, 2, 182),Color.fromARGB(246, 107, 19, 183)]
        ),  
        borderRadius: BorderRadius.circular(10.0)),
        child:
        SingleChildScrollView(child: 
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Balance",style:blurStyle),
          Text("\$56,000",style:boldStyle),
          const SizedBox(height : 10.0),
          Container(
          width: screenWidth * 0.5,  
          child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Text("....",style: boldStyle,),
              Text("....",style: boldStyle,),
               Text("....",style: boldStyle,),
                Text("2829",style: boldStyle,),
          ],),),
          const SizedBox(height: 15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Container(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("valid",style: blurStyle,),
                Text("22/24",style: boldStyle,),
            ],),),
            const SizedBox(width: 50.0,),
            Container(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("CVV",style: blurStyle,),
                Text("223",style: boldStyle,),
            ],),)
          ],)
        ]),
        )
        ),
        const SizedBox(height: 30.0,),
        Container(
          width: screenWidth,
          child:  
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            GestureDetector(onTap: () {},
            child: 
            Column(children: [
            Container(  
            width: screenWidth * 0.16,
            height:60.0,
            decoration: BoxDecoration(color: Color.fromARGB(62, 10, 95, 13),borderRadius: BorderRadius.circular(10.0)),
            child: 
            Center(child: Icon(Icons.arrow_upward,size: 30.0,color: const Color.fromARGB(139, 76, 175, 79),),)
            ),
            const SizedBox(height: 10.0,),
            Text("Transfer",style: labelText,)
            ],)
            ),
            GestureDetector(onTap: () {},
            child:
            Column(children: [
            Container(  
            width: screenWidth * 0.16,
            height: 60.0,
            decoration: BoxDecoration(color: Color.fromARGB(42, 255, 123, 0),borderRadius: BorderRadius.circular(10.0)),
            child: 
            const Center(child: Icon(Icons.brightness_auto,size: 30.0,color: Colors.orange,),)
            ),
            const SizedBox(height: 10.0,),
            Text("Voucher",style: labelText,)
            ],),
            ),
            GestureDetector(onTap: () {},
            child: 
            Column(children: [
            Container( 
            width: screenWidth * 0.16,
            height: 60.0, 
            decoration: BoxDecoration(color: const Color.fromARGB(63, 33, 149, 243),borderRadius: BorderRadius.circular(10.0)),
            child: 
            const Center(child: Icon(Icons.insert_drive_file,size: 30.0,color: Colors.blue,),)
            ),
            const SizedBox(height: 10.0,),
            Text("Bill",style: labelText,)
            ],)
            ),
            GestureDetector(onTap: () {},
            child: 
            Column(children: [
            Container(  
            width: screenWidth * 0.16,
            height: 60.0,
             decoration: BoxDecoration(color: const Color.fromARGB(36, 88, 0, 155),borderRadius: BorderRadius.circular(10.0)),
            child: 
            const Center(child: Icon(Icons.apps,size: 30.0,color: Colors.purple,),)
            ),
            const SizedBox(height: 10.0,),
            Text("More",style: labelText,)
            ],)
            )
          ]),
        ),
        const SizedBox(height: 30.0,),
        Container(
        height: MediaQuery.of(context).size.height * 0.35,
        child:
        Column(children: [
        Container(
          width: screenWidth,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const Text('Send Money',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
          TextButton(onPressed: () {
            //Navigate to send money page
          }, child: const Text("View all",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w500),))
        ]),),
       Expanded(
      child:
      SingleChildScrollView(
      child:
       Column(
        children: [
          // Your other widgets...
          _build_Transaction_History(),
          _build_Transaction_History(),
          _build_Transaction_History(),
        ],
      ),
    ),
      )],)
    ),
    ]),)
    )));
    ;
  }
}


TextStyle blurStyle  = const TextStyle(
  color: Color.fromARGB(186, 255, 255, 255),
  fontSize: 15.0,
  fontWeight: FontWeight.w500
);


TextStyle boldStyle = const TextStyle(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.w700
);

TextStyle labelText = const TextStyle(
  color: Colors.black,
  fontSize : 15.0,
  fontWeight: FontWeight.bold
);

TextStyle boldBlackStyle = const TextStyle(
  color: Colors.black,
  fontSize: 20.0,
  fontWeight: FontWeight.bold
);