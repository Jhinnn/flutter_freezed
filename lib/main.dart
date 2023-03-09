import 'package:flutter/material.dart';
import 'package:flutter_freezed/message.dart';
import 'package:flutter_freezed/person.dart';
import 'package:flutter_freezed/user_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'flutter_freezed'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Person smith;
  late Person zcy;

  late Message message1;
  late Message message2;
  late Map<String, dynamic> personMap;
  @override
  void initState() {
    super.initState();

    smith = Person(firstName: 'John', lastName: 'Smith', age: 26);

    personMap = {"firstName": "zhang", "lastName": "chaoyang", "age": 19};

    zcy = Person.fromJson(personMap);

    message1 = Message(
      msgId: '1',
      content: '你快来啊',
      type: 0,
    );
    message2 = Message(msgId: '2', content: '我马上就来了', type: 1, status: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
                child: Column(
              children: [
                const Text(
                  'John Smith Message',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  "firstName:${smith.firstName} lastName:${smith.lastName} age:${smith.age}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 10),
                Text(
                  smith.toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 10),
                Text(
                  smith.toJson().toString(),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.normal),
                ),
                const Divider(
                  color: Colors.red,
                ),
                const Text(
                  'zhangchaoyang Message',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  "firstName:${zcy.firstName} lastName:${zcy.lastName} age:${zcy.age}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.normal),
                ),
                const Divider(
                  color: Colors.red,
                ),
                const Text(
                  'Message',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  "msgId:${message1.msgId} content:${message1.content} age:${message1.status}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.normal),
                ),
              ],
            )),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        var person = Person(
                            firstName: 'John', lastName: 'Richard', age: 26);
                        person.lastName = 'Smith';
                        // person.age = 10; age为final无法使用set
                        print(person.toString());

                        print(person.copyWith(firstName: 'lisa'));

                        print(person == smith); //person可变 因此两个对象无法用==来比较
                      },
                      child: Row(
                        children: const [
                          Text(
                            'unfreezed',
                            textScaleFactor: 1.2,
                            style: TextStyle(color: Colors.red),
                          ),
                          Icon(
                            Icons.hot_tub,
                            size: 30,
                            color: Colors.red,
                          ),
                        ],
                      )),
                  TextButton(
                      onPressed: () {
                        Message message = Message(
                          msgId: '1',
                          content: '你快来啊',
                          type: 0,
                        );

                        // message.content = '我已经来了'; 不可变 无法使用set
                        print(message1 == message);
                      },
                      child: Row(
                        children: const [
                          Text(
                            'freezed',
                            textScaleFactor: 1.2,
                            style: TextStyle(color: Colors.black),
                          ),
                          Icon(
                            Icons.icecream,
                            size: 30,
                            color: Colors.black,
                          ),
                        ],
                      )),
                  TextButton(
                      onPressed: () {
                        UserList userList = UserList([]);
                        userList.list.add(10);
                        print(userList.list);
                      },
                      child: Row(
                        children: const [
                          Text(
                            'list/set/map',
                            textScaleFactor: 1.2,
                            style: TextStyle(color: Colors.black),
                          ),
                          Icon(
                            Icons.list,
                            size: 30,
                            color: Colors.black,
                          ),
                        ],
                      )),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
