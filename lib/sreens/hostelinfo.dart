import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:proj/shared/loading.dart';

class HostelInfo extends StatefulWidget {
  @override
  _HostelInfoState createState() => _HostelInfoState();
}

class _HostelInfoState extends State<HostelInfo> {
  bool loading = false;
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('hostels').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Loading();
        }

        return Scaffold(
          backgroundColor: Colors.cyan,
          appBar: AppBar(
            title: Text('HOSTEL DETAILS'),
            centerTitle: true,
            backgroundColor: Colors.cyan,
          ),
          body: ListView(
            children: snapshot.data.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data() as Map<String, dynamic>;
              return Padding(
                padding: const EdgeInsets.all(15),
                child: Card(
                  color: Colors.cyan[100],
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "${data['hostelname']}",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'No. of single rooms available currently',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("${data['singlerooms']}"),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Price of a single room per semester',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "UGX.${data['pricesingleroom']}",
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Booking fee for a single room',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "UGX.${data['bookingfeesingle']}",
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'No. of double rooms currently available',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${data['doublerooms']}",
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Price of a double room per semester',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "UGX.${data['pricedoubleroom']}",
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Booking fee for a double room',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "UGX.${data['bookingfeedouble']}",
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Services offered at the hostel',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${data['servicesoffered']}",
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Hostel Custodian's contacts",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${data['contacts']}",
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
