import 'dart:io';

void main() {
  performtask();
}

void performtask() async {
  task1();
  String string2data = await task2();
  task3(string2data);
}

void task1() {
  String result = 'task 1 data';
  print('task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String result;
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('task 2 complete');
  });
  return result;
}

task3(String task2data) {
  String result = 'task 3 data';
  print('task 3 complete $task2data');
}
