import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

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

          title: const Text('Watch',style: TextStyle(color: Colors.white),),
          backgroundColor:  Color(0xff426FA3),

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
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff434B7A),
                      Color(0xff3E568C),
                      Color(0xff2984D7),
                    ]

                ),),
              alignment: Alignment.center,
              child: Container(
                height:65,
                width: 220,
                decoration: BoxDecoration(

                  color:Colors.white,
                  border: Border.all(color: Colors.white,width: 0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  gradient: const LinearGradient(
                      colors: [

                        Color(0xff4C78AC),
                        Color(0xff426FA3),
                      ]
                  ),
                  boxShadow:const  [
                    BoxShadow(
                        color: Color(0xff3065A5) ,
                        offset: Offset(1,1),
                        spreadRadius: 2,
                        blurRadius: 21
                    )
                  ],


                ),
                alignment: Alignment.center,
                child: const Text('Flutter',style: TextStyle(
                    fontSize:25,
                    color:Colors.white
                ),),

              ),

            ),
          ),

        ),
      ),



    );
  }
}

