import 'package:flutter/material.dart';

void main() {
  //Anynomus class clasName(Attributes)<== constractor
  runApp(BasketBallCounter());
}

class BasketBallCounter extends StatefulWidget {
  @override
  State<BasketBallCounter> createState() => _BasketBallCounterState();
}

class _BasketBallCounterState extends State<BasketBallCounter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'PointsCounter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '$teamApoints',
                        style: TextStyle(fontSize: 200),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamApoints++;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamApoints += 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            child: const Text(
                              'Add 2 point',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamApoints += 3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          child: const Text(
                            'Add 3 point',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 420,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.black,
                      indent: 2,
                      endIndent: 2,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '$teamBpoints',
                        style: TextStyle(fontSize: 200),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints++;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                teamBpoints += 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            child: const Text(
                              'Add 2 point',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints += 3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          child: const Text(
                            'Add 3 point',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      teamApoints = 0;
                      teamBpoints = 0;
                    });
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
