import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class First_Page extends StatefulWidget {
  const First_Page({super.key});

  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {

  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text('Demo')),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(a.toString(),style: const TextStyle(fontSize: 100),),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    setState(() {
                      a++;
                    });
                  },
                  child: const Icon(CupertinoIcons.add),
                ),
              ),
              Padding(
                padding:  const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    setState((){
                      if(a>0){
                        a--;
                      }
                    });
                  },
                  child: const Icon(CupertinoIcons.minus),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
