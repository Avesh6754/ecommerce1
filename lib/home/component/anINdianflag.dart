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

          title:const  Text('An Indian Flag',style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.blue,
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
              height: double.infinity,
              width: double.infinity,
              decoration:const  BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [

                      Color(0xff2885E4),
                      Color(0xff3A5BBE),
                    ]

                ),),
              alignment: Alignment.center,
              child: Container(
                height: 150,
                width: 250,
                decoration: BoxDecoration(

                    color:Colors.white,
                    shape: BoxShape.rectangle,

                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.red,
                          Colors.white,
                          Colors.green.shade800
                        ]
                    )
                ),
                alignment: Alignment.center,
                child: const Padding(
                  padding:  EdgeInsets.only(top:19),
                  child: Text(

                    '*',style: TextStyle(
                    fontSize:60,
                    color: Color(0xff00008B),
                  ),
                  ),
                ),

              ),

            ),
          ),

        ),
      ),



    );
  }
}

