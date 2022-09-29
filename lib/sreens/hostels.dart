import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proj/remotedatasource/firestorehelper.dart';

class Hostels extends StatelessWidget {
  const Hostels({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOSTELS'),
        centerTitle: true,
      ),
      body: ListView(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/dreamworld.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Dreamworld Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () async {
                            Navigator.pushNamed(context, '/details');
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {
                            Navigator.pushNamed(context, '/locationscreen');
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/aryan.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Aryan Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/jj.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'JJ Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/nakiyinji.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Nakiyinji Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/douglasvilla.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Douglas Villa Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/olympia.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Olympia Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/braetd.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Braetd Girls Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/akwataempola.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Akwata Empola Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/nalikka.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Nalikka Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/muhika.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Muhika Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/kann.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Kann Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/frama.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Frama Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/nana.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'New Nana Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/prince.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Prince Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/juliana.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Julianna Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/kare.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Kare Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/gardencourts.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Makerere Garden Courts Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/internationalstudents.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Makerere International Students Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/sunways.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Sunways Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/baskon.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Baskon Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/edithhetty.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Edity Hetty's Hostel",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/God is able.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'God is Able Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Ink.image(
                      image: AssetImage('assets/helican.jpg'),
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Helican Hostel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        ElevatedButton(
                          child: Text('View details'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          child: Text('Location'),
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}