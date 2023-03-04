import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int counterA = 0;
  int counterB = 0;

  increamentA(){
    setState(() {
      counterA++;
    });
  }
  increamentB(){
    setState(() {
      counterB++;
    });
  }

  decreamentA(){
    setState(() {
      counterA--;
    });
  }
  decreamentB(){
    setState(() {
      counterB--;
    });
  }

  reset(){
    setState(() {
      counterA = 0;
      counterB = 0;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Score Counter App"),),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: Text("Score Counter", style: TextStyle(color: Colors.black, fontSize: 30),),
            ),
            // title name
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Team A", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text("Team B", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
              ],
            ),
            const SizedBox(height: 10,),
            // counter result
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 150,
                  height: 200,
                  decoration:  BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("$counterA", style: const TextStyle(fontSize: 80, color: Colors.white),)),
                ),
                Container(
                  width: 150,
                  height: 200,
                  decoration:  BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("$counterB", style: const TextStyle(fontSize: 80, color: Colors.white),)),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            // button +1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: increamentA, style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 30)
                ), child: const Text("+1"),),
                ElevatedButton(onPressed: increamentB, style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 30),
                  backgroundColor: Colors.amber
                ), child: const Text("+1"),),
              ],
            ),
            // button -1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: decreamentA, style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 30)
                ), child: const Text("-1"),),
                ElevatedButton(onPressed: decreamentB, style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 30),
                  backgroundColor: Colors.amber
                ), child: const Text("-1"),),
              ],
            ),
            // reset
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 22),
              width: double.infinity,
              child: ElevatedButton(onPressed: reset, style: ElevatedButton.styleFrom(backgroundColor: Colors.red), child: const Text("Reset"),))
          ],
        )
      ),
    );
  }
}