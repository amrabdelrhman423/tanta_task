import 'package:flutter/material.dart';
import 'package:tanta_task_app/components/default_drobdownlist.dart';

class ManpowerFilter extends StatelessWidget {
  bool isManPower;
  ManpowerFilter(this.isManPower);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7),
                child: Text(
                  "Certification",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              isManPower
                  ? buildDropdownButton([
                      "Job/Certification Title",
                      "Job/Certification 2",
                      "Job/Certification3"
                    ], "Job/Certification Title")
                  : buildDropdownButton([
                      "Equipment Type",
                      "Job/Certification 2",
                      "Job/Certification3"
                    ], "Equipment Type")
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7),
                child: Text(
                  "Certified By",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              buildDropdownButton(
                  ["Certified By", "Certified By2", "Certified By3"],
                  "Certified By")
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7),
                child: Text(
                  "Location",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              buildDropdownButton(["Emarat", "Emarat2", "Emarat3"], "Emarat")
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7),
                child: Text(
                  "Certificate Validity",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              buildDropdownButton([
                "Certificate Validity",
                "Certificate Validity2",
                "Certificate Validity3"
              ], "Certificate Validity")
            ],
          ),
        )
      ],
    );
  }
}
