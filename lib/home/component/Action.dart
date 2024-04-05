

import 'package:flutter/cupertino.dart';


import 'package:flutter/material.dart';


void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});
  /////

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
        debugShowCheckedModeBanner: false,
        home:HomeScreen()
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My App',style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.pink,
          leading:const Icon(Icons.menu,color: Colors.white,),
          actions:const  [Padding(padding:EdgeInsets.only(right: 20),
            child: Icon(Icons.search,color: Colors.white,),
          )],
        )  ,
        body: Align(

          alignment: Alignment.center,
          child:GestureDetector(
            onTap: (){
              print("Hello World");
            },
            child: Container(
              height: 50,
              width: 150,

              decoration: const BoxDecoration(

                  gradient: LinearGradient(
                      colors: [
                        Color(0xffD64D92),
                        // Color(0xffF9407E),
                        Color(0xffFF4F6A),
                      ]
                  ),

                  boxShadow: [
                    BoxShadow(
                        color: Colors.pink,
                        offset: Offset(-4, 10),
                        spreadRadius: 2,
                        blurRadius: 50

                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color:Colors.pink

              ),
              alignment: Alignment.center,
              child:const  Text('Call to action',style: TextStyle(
                  fontSize:13,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
              ),),
            ),
          ),

        ),
      ),
    );
  }
}
