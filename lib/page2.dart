import 'package:flutter/material.dart';


class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
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

                  Text("Normal ",
                    style: TextStyle(color:Color(0xff09FF7A) ,
                        fontSize: 40,
                        fontWeight: FontWeight.bold ),),


                  SizedBox(height: 90,),


                  Text("19.5",
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
