import 'package:flutter/material.dart';
import 'dart:math' as math;

class Page2 extends StatelessWidget {
   Page2({required this.age,required this.weight,required this.height});

   final int age;
   final int weight;
   final double height;

  double bmi=0;
  Color fontcolor=Colors.green;

  String calculate(){
    bmi=weight/math.pow(height/100, 2);

    if(bmi<18.5){
      fontcolor =Colors.orange;
      return "underweight";
    } else if(bmi>18.5&&bmi<20){
      fontcolor =Colors.orange;
      return "underweight";
    }else if(bmi>20&&bmi<25){
      fontcolor =Colors.green;
      return "normal";

    }else if(bmi>25&&bmi<30){
      fontcolor =Colors.redAccent;
      return "overweight";
    }else{
      fontcolor =Colors.red;
      return "obese";
    }
  }

  @override
  Widget build(BuildContext context) {

    final result=calculate();

    return Scaffold(
      backgroundColor: Color(0xff0A0E21),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(

          children: [

            SizedBox(height: 80,),

            Align(
              alignment: Alignment.topLeft,

              child: Text("Your Result : ",
                style: TextStyle(color: Colors.white ,
                    fontSize: 40,
                    fontWeight: FontWeight.bold ),),
            ),

            Align(
              alignment: Alignment.topLeft,
              child: IconButton(onPressed: () {
              Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 50,)),
            ),

            SizedBox(height: 10,),

            Container(
                width:383,
                height: 535,
                decoration: BoxDecoration(
                color: Color(0xff1A1F38),
             borderRadius: BorderRadius.circular(25)
                ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  SizedBox(height: 20,),

                  Text(result,
                    style: TextStyle(color:fontcolor ,
                        fontSize: 40,
                        fontWeight: FontWeight.bold ),),


                  SizedBox(height: 90,),


                  Text(bmi.toStringAsFixed(2),
                    style: TextStyle(color: Colors.white ,
                        fontSize: 40,
                        fontWeight: FontWeight.bold ),),


                  SizedBox(height: 200,),


                  Text("culees badan malihide is daji",
                    style: TextStyle(color: Colors.white ,
                        fontSize: 20,),),




                ],),
            )





          ],
        ),
      ),
    );
  }
}
