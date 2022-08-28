import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/img.png'),
              ),
            ),
          ),
          const Text('Darlene Robertson', style:  TextStyle(color: Colors.white, fontSize: 20),),
          Text('Senior UX Designer', style: TextStyle(color: Colors.grey.shade200, fontSize: 14),),
          Text('ID43178',style: TextStyle(color: Colors.grey.shade200, fontSize: 14),)
        ],
      ),
    );
  }
}
