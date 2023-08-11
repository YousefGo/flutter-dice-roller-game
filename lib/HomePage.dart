import 'package:flutter/material.dart';
import 'dart:math';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one =  AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");


  late AssetImage diceImage  ;
  late AssetImage secenDiceImage;
   @override
   void initState(){
     super.initState();
     setState(() {
       diceImage=one;
       secenDiceImage=two;
     });
   }
   void rollDice(){
     int random = (1+Random().nextInt(6));
     int random2 = (1+Random().nextInt(6));

     late AssetImage newImage;
    late AssetImage secendNewImage;

     switch(random){
       case 1 :
         newImage =one;
         break ;
       case 2 :
         newImage =two;
         break ;
       case 3 :
         newImage =three;
         break ;
       case 4 :
         newImage =four;
         break ;
       case 5 :
         newImage =five;
         break ;
       case 6 :
         newImage =six;
         break ;
     }
     switch(random2){
       case 1 :
         secendNewImage =one;
         break ;
       case 2 :
         secendNewImage =two;
         break ;
       case 3 :
         secendNewImage =three;
         break ;
       case 4 :
         secendNewImage =four;
         break ;
       case 5 :
         secendNewImage  =five;
         break ;
       case 6 :
         secendNewImage =six;
         break ;
     }
     setState(() {
       diceImage = newImage ;
       secenDiceImage=secendNewImage;
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Dice Roller'),
      ) ,
      body: Container(
        child:  Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:<Widget> [
              Image(
                image:diceImage,
                width:100.0 ,
                height:200.0,
               ),
              Image(
                image:secenDiceImage,
                width:100.0 ,
                height:200.0,
              ),
            Container(
             margin:EdgeInsets.only(top:100.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Adjust the radius as needed
                  ),
                ),
                onPressed: rollDice,
                child: Text("Roll the dice!",style:TextStyle(fontSize:30.0 )),

              ) ,

           )
            ],
          ),
        ),
      ),
    );
  }
}
