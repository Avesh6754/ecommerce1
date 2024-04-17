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
          title:const  Text('Dark Shadow Button ',style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.red,
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
                  color: Colors.black,
                  border: Border.all(color: Colors.red,width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow:const [BoxShadow(
                    color: Colors.red,
                    offset: Offset(1,2),
                    spreadRadius:2,
                    blurRadius: 22,
                  )]
              ),
              alignment: Alignment.center,
              child: const Text('Tap',style: TextStyle(
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

