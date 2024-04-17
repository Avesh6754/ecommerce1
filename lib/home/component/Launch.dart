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
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Launch Button',style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.green,
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
              height: 220,
              width: 220,
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.white,width: 1),
                  shape: BoxShape.circle,
                  boxShadow:const [BoxShadow(
                    color: Color(0xff0D7309),
                    offset: Offset(0,0),
                    spreadRadius: 12,
                    blurRadius: 22,
                  )]
              ),
              alignment: Alignment.center,
              child: const Text('GO',style: TextStyle(
                  fontSize: 35,
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
