import 'package:clock_app/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class AlarmScreen extends StatefulWidget {
  const AlarmScreen({Key? key}) : super(key: key);

  @override
  State<AlarmScreen> createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  DateTime _dateTime = DateTime.now();
  bool forImage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leadingWidth: 100,
        centerTitle: true,
        leading: TextButton(
            onPressed: () {},
            child: const Text(
              "Cancel",
              style: TextStyle(
                color: greenColor,
              ),
            )),
        title: const Text("Set Alarm"),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Save",
                style: TextStyle(
                  color: greenColor,
                ),
              )),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    "Alarm Name  ",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TimePickerSpinner(
                time: _dateTime,
                is24HourMode: false,
                normalTextStyle:
                    const TextStyle(fontSize: 15, color: Colors.grey),
                highlightedTextStyle: const TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                spacing: 20,
                itemHeight: 40,
                isForce2Digits: true,
                secondsInterval: 4,
                minutesInterval: 1,
                onTimeChange: (time) {
                  setState(() {
                    _dateTime = time;
                  });
                },
              ),
              ExpansionTile(
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                title: const Text(
                  "Repeat",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                            child: Text(
                          "Mon",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      Container(
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                            child: Text(
                          "Tue",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      Container(
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                            child: Text(
                          "Wed",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      Container(
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                            child: Text(
                          "Thr",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      Container(
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                            child: Text(
                          "Fri",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      Container(
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                            child: Text(
                          "Sat",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      Container(
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                            child: Text(
                          "Sun",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sound",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Bluebird",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Donation Per Snooze",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "More Info",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "",
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        fillColor: Colors.grey.shade800,
                        iconColor: Colors.white,
                        prefix: Icon(
                          Icons.attach_money,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Vibrate",
                    style: TextStyle(color: Colors.white),
                  ),
                  Switch(
                    trackColor: MaterialStateProperty.all(greenColor),
                    activeColor: Colors.white.withOpacity(0.4),
                    inactiveThumbColor: Colors.grey.withOpacity(0.4),
                    value: forImage,
                    onChanged: (value) => setState(() => forImage = value),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Preview Alarm",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
