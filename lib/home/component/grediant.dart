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
        backgroundColor: const Color(0xff48416A),
        appBar: AppBar(
          title:const  Text('Gredient Button ',style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: const Color(0xff48416A),
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
              height: 65,
              width: 220,
              decoration: BoxDecoration(
                gradient:const  LinearGradient(
                    colors: [
                      Color(0xff873ABB),
                      Color(0xff615CD0),
                      Color(0xff298EEE),
                    ]
                ),
                border: Border.all(color: Colors.white,width: 1),
                borderRadius:const  BorderRadius.all(Radius.circular(50)),

              ),
              alignment: Alignment.center,
              child: const Text('Flutter',style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold

              ),),

            ),
          ),

        ),
      ),
    );
  }
}

