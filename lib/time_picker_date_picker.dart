import 'package:flutter/material.dart';

class TimePickerDatePicker extends StatefulWidget {
  const TimePickerDatePicker({Key? key}) : super(key: key);

  @override
  State<TimePickerDatePicker> createState() => _TimePickerDatePickerState();
}

class _TimePickerDatePickerState extends State<TimePickerDatePicker> {
  DateTime dateTime = DateTime(
    2023,
    12,
    24,
  );
  TimeOfDay time = const TimeOfDay(hour: 12, minute: 60);

  @override
  Widget build(BuildContext context) {
    //final hours = dateTime.hour.toString().padLeft(2, "0");
    //final minutes = dateTime.minute.toString().padLeft(2, "0");
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "time\$date",
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const Text(
                "Date",
                style: TextStyle(fontSize: 32),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () async {
                  final date = await pickDate();
                  if (date == null) return; //press "cancel
                  setState(() => dateTime = date); //pressed ohk
                },
                child:
                    Text("${dateTime.year}/${dateTime.month}/${dateTime.day}"),
              ),
              const Text(
                "select Time",
                style: TextStyle(fontSize: 32),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () async {
                  TimeOfDay? newTime =
                      await showTimePicker(context: context, initialTime: time);
                  if (newTime == null) return;
                  setState(() => time = newTime);
                },
                child: Text("${time.hour}:${time.minute}"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<DateTime?> pickDate() => showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100));
}
