import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/ManpowerProfile/components/manpower_certificate.dart';

class ManpowerProfileCertificateList extends StatefulWidget {
  @override
  _ManpowerProfileCertificateListState createState() =>
      _ManpowerProfileCertificateListState();
}

class _ManpowerProfileCertificateListState
    extends State<ManpowerProfileCertificateList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      padding: EdgeInsets.all(0),
      itemBuilder: (context, index) {
        return ManpowerCertificate();
      },
      separatorBuilder: (context, index) => Padding(
        padding: const EdgeInsetsDirectional.only(start: 25.0, end: 25.0),
        child: Container(
          width: double.infinity,
          height: 1.0,
          color: Colors.grey[300],
        ),
      ),
    );
  }
}
