import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:score_counter_app/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
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
                  child: Center(child: Text("${counterProvider.countA}", style: const TextStyle(fontSize: 80, color: Colors.white),)),
                ),
                Container(
                  width: 150,
                  height: 200,
                  decoration:  BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("${counterProvider.countB}", style: const TextStyle(fontSize: 80, color: Colors.white),)),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            // button +1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () => counterProvider.increamentA(), style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 30)
                ), child: const Text("+1"),),
                ElevatedButton(onPressed: () => counterProvider.increamentB(), style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 30),
                  backgroundColor: Colors.amber
                ), child: const Text("+1"),),
              ],
            ),
            // button -1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () => counterProvider.decreamentA(), style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 30)
                ), child: const Text("-1"),),
                ElevatedButton(onPressed: () => counterProvider.decreamentB(), style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 30),
                  backgroundColor: Colors.amber
                ), child: const Text("-1"),),
              ],
            ),
            // reset
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 22),
              width: double.infinity,
              child: ElevatedButton(onPressed: () => counterProvider.reset(), style: ElevatedButton.styleFrom(backgroundColor: Colors.red), child: const Text("Reset"),))
          ],
        )
      ),
    );
  }
}