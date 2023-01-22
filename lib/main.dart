import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  var count = 0;
  Color coloes_ = const Color(0xff000000);

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('HW5'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(22),
          child: Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 179, 167, 167),
                borderRadius: BorderRadius.all(Radius.circular(22))),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 233, 225, 225),
                  borderRadius: BorderRadius.all(Radius.circular(34)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                        child: Text(
                      '$count',
                      style: const TextStyle(fontSize: 32),
                    )),
                    InkWell(
                      onTap: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),

                                // ignore: prefer_const_constructors
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Text('Press'),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    count = 0;
                                  });
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),

                                  // ignore: prefer_const_constructors
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: const Text('Clear'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      indent: 23,
                      endIndent: 23,
                      thickness: 8,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (coloes_ == Colors.black) {
                            coloes_ = Colors.red;
                          } else {
                            coloes_ = Colors.black;
                          }
                        });
                      },
                      child: Icon(
                        Icons.favorite,
                        color: coloes_,
                        size: 80,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
