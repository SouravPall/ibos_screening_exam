import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../widgets/my_drawer_header.dart';
import '../widgets/my_drawer_list.dart';

class EmployeeProfilePage extends StatefulWidget {
  static const routeName = '/employee-page';
  const EmployeeProfilePage({Key? key}) : super(key: key);

  @override
  State<EmployeeProfilePage> createState() => _EmployeeProfilePageState();
}

class _EmployeeProfilePageState extends State<EmployeeProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Employee Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      //___________ Drawer Button ____________
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              MyHeaderDrawer(),
              MyDrawerList(),
            ],
          ),
        ),
      ),
      //_________Profile Body_______
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                maxRadius: 50,
                                minRadius: 50,
                                backgroundColor: Colors.grey,
                                backgroundImage:
                                    AssetImage('assets/images/img.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(top: 4.0),
                                      child: Text(
                                        'Darlene Robertson',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          fontStyle: FontStyle.normal,
                                          color:
                                              Color.fromARGB(255, 52, 64, 84),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 6.0),
                                      child: Text(
                                        'Senior UX Designer',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 52, 64, 84)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 4.0),
                                      child: Text(
                                        'ID43178',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(
                                                255, 52, 64, 84)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Column(
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: const Color.fromARGB(255, 41, 150, 71),
                                backgroundColor: const Color.fromARGB(255, 230, 249, 233),
                                shape: const StadiumBorder(),
                              ),
                              onPressed: () {
                                if (kDebugMode) {
                                  print('Pressed');
                                }
                              },
                              child: const Text('Active',style: TextStyle(
                                fontSize: 16,
                              ),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 242, 242, 247),
                    height: 1,
                    thickness: 1,
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.business_center,
                      color: Color.fromARGB(255, 50, 50, 50),
                    ),
                    title: Text(
                      'Human Resource',
                      style: TextStyle(
                        color: Color.fromARGB(255, 52, 64, 84),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Department',
                      style: TextStyle(
                          color: Color.fromARGB(255, 102, 112, 113),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 242, 242, 247),
                    height: 1,
                    thickness: 1,
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.cake_rounded,
                      color: Color.fromARGB(255, 50, 50, 50),
                    ),
                    title: Text(
                      '28 September, 1990',
                      style: TextStyle(
                        color: Color.fromARGB(255, 52, 64, 84),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Date of Birth',
                      style: TextStyle(
                          color: Color.fromARGB(255, 102, 112, 113),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 242, 242, 247),
                    height: 1,
                    thickness: 1,
                  ),
                  const SizedBox(height: 6,),
                  Column(
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          children: const [
                            Expanded(
                                child: ListTile(
                                  leading: Icon(
                                    Icons.person,
                                    color: Color.fromARGB(255, 50, 50, 50),
                                  ),
                                  title: Text(
                                    'Female',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 52, 64, 84),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Gender',
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 102, 112, 113),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                            ),
                            VerticalDivider(
                              color: Color.fromARGB(255, 242, 242, 247),
                              thickness: 1,
                            ),
                            Expanded(
                                child: ListTile(
                                  title: Text(
                                    'Islam',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 52, 64, 84),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Religion',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 102, 112, 113),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color.fromARGB(255, 242, 242, 247), width: 10.0),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
                  child: Text(
                      'Employee Application',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                       children:[
                         ElevatedButton(
                           onPressed: () {},
                           style: ElevatedButton.styleFrom(
                             shape: const CircleBorder(),
                             padding: const EdgeInsets.all(20),
                             primary: const Color.fromARGB(255, 212, 68, 241),
                           ),
                           child: const Icon(
                             Icons.luggage,
                             color: Color.fromARGB(255, 255, 255, 255),
                             size: 44,
                           ),
                         ),
                         const SizedBox(
                           height: 10,
                         ),
                         const Text(
                           'Leave', style: TextStyle(
                           fontWeight: FontWeight.w400,
                           fontSize: 23,
                           color: Color.fromARGB(255, 29, 41, 57),
                         ),
                         ),
                       ],
                      ),
                      Column(
                        children:[
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(20),
                              primary: const Color.fromARGB(255, 46, 144, 250),
                            ),
                            child: const Icon(
                              Icons.directions_car,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 44,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Movement', style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 23,
                            color: Color.fromARGB(255, 29, 41, 57),
                          ),
                          ),
                        ],
                      ),
                      Column(
                        children:[
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(20),
                              primary: const Color.fromARGB(255, 246, 61, 104),
                            ),
                            child: const Icon(
                              Icons.person_pin_circle,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 44,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Remote', style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 23,
                            color: Color.fromARGB(255, 29, 41, 57),
                          ),
                          ),
                        ],
                      ),
                      Column(
                        children:[
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(20),
                              primary: const Color.fromARGB(255, 247, 144, 9),
                            ),
                            child: const Icon(
                              Icons.request_page,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 44,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'IOU', style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 23,
                            color: Color.fromARGB(255, 29, 41, 57),
                          ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children:[
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(20),
                              primary: const Color.fromARGB(255, 102, 159, 42),
                            ),
                            child: const Icon(
                              Icons.receipt,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 44,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Loan', style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 23,
                            color: Color.fromARGB(255, 29, 41, 57),
                          ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children:[
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(20),
                              primary: const Color.fromARGB(255, 135, 91, 247),
                            ),
                            child: const Icon(
                              Icons.schedule_send,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 44,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Overtime', style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 23,
                            color: Color.fromARGB(255, 29, 41, 57),
                          ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color.fromARGB(255, 242, 242, 247), width: 10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
