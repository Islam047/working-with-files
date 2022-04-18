import 'dart:io';
import 'bin1/file.dart';
void main(List<String> arguments) {
      Directory directory = Directory.current;
      print(directory.path);
      Directory bin1 = Directory(directory.path + '/bin/bin1');
      bin1.create();
      File file = File(bin1.path + '/file.dart');
      file.create();
      UserData data = UserData();
      data.add(User(
      firstName: 'Islam',
      lastName: 'Shamurov',
      email: 'shamurovislam8@gmail.com',
      password: 1593));
      data.add(User(
      firstName: 'Axile',
      lastName: 'Kirov',
      email: 'AxileKirv@gmail.com',
      password: 8975));
      String info = file.readAsStringSync();
      // print(info);
      print(UserData.l1[0]);
      // data.getInfo();
}
