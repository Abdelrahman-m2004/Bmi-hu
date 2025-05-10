import 'package:flutter/material.dart';
import 'package:hussien/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  double SliderValue = 170;
  int  weight = 80;
  int  age = 20;
  bool isMale = true;

  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Color(0xff0A0E21),
      appBar: AppBar(
        backgroundColor: Color(0xff1A1F38),
        centerTitle: true,
        title: Text("BMI calculator",style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),),
      ),


      body: Column(
        children: [

          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [


              GestureDetector(
                onTap: () {
                  setState(() {

                  });
               isMale=false;
                },
                child: Container(
                  height: 159,
                  width: 136,
                  decoration: BoxDecoration(
                    color: isMale==false?Colors.red: Color(0xff1A1F38) ,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Image.asset("assets/images/Vector.png",
                       height: 68,width:62 ,),
                      SizedBox(height: 15,),
                      Text("Female",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),)
                    ],
                  ),
                ),
              ),


              GestureDetector(
                onTap: () {
                  setState(() {

                  });
                  isMale=true;
                },
                child: Container(
                  height: 159,
                  width: 136,
                  decoration: BoxDecoration(
                    color: isMale ==true ?Colors.blue:Color(0xff1A1F38),
                    borderRadius: BorderRadius.circular(15),
                  ),

                 child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/mars.png",
                        height: 68,width:62 ,),


                      SizedBox(height: 15,),


                      Text("Male",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),)
                    ],
                  ),
                ),
              ),




            ],
          ),

          SizedBox(height: 50,),

          Container(
            height: 190,
            width: 334,
            decoration: BoxDecoration(
              color: Color(0xff1A1F38),
              borderRadius: BorderRadius.circular(15),
            ),

            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("Height ${SliderValue.toInt()} cm",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),),



                Slider(
                  value:SliderValue ,
                  max: 200,
                  onChanged: (value) {
                    setState(() {
                      SliderValue=value;
                    });
                  },
                )







              ],
            ),
          ),



          SizedBox(height: 50,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [


              Container(
                height: 159,
                width: 136,
                decoration: BoxDecoration(
                    color: Color(0xff1A1F38),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("Weight",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),),

                    Text("$weight",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: () {
                   setState(() {
                 if(weight>0)  weight--;
                      });
                        }, icon: Icon(Icons.remove_circle,color: Colors.white,)),
                        IconButton(onPressed: () {
                          setState(() {
                             weight++;
                              });
                        }, icon: Icon(Icons.add_circle,color: Colors.white,)),
                      ],
                    )


                  ],
                ),
              ),


              Container(
                height: 159,
                width: 136,
                decoration: BoxDecoration(
                  color: Color(0xff1A1F38),
                  borderRadius: BorderRadius.circular(15),
                ),

                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [



                    Text("Age",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),),


                    Text("$age",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: () {
                           setState(() {
                             if(age>0)age--;
                           });
                        }, icon: Icon(Icons.remove_circle,color: Colors.white,)),
                        IconButton(onPressed: () {
                       setState(() {
                         age++;
                       });
                        }, icon: Icon(Icons.add_circle,color: Colors.white,)),
                      ],
                    )

                  ],
                ),
              ),




            ],
          ),

          SizedBox(height: 40,),


          GestureDetector(
            onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) =>Page2(weight: weight,age: age,height: SliderValue,) ,));
            },
            child: Container(
              height: 50,
              width:300 ,
              decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text("Calculate",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
            )
                ))),
          )
        ],
      ),

    );
  }
}

