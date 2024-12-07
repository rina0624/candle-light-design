import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  final ValueNotifier<bool> _dark = ValueNotifier<bool>(true);
  final ValueNotifier<double> _widthFactor = ValueNotifier<double>(1.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ValueListenableBuilder<bool>(
            valueListenable: _dark,
            builder: (context, color, child) {
              return ValueListenableBuilder<double>(
                valueListenable: _widthFactor,
                builder: (context, factor, child) {
                  return Scaffold(
                      backgroundColor:
                          _dark.value ? Colors.black : Colors.white,
                      appBar: AppBar(
                        actions: [
                          Switch(
                            value: _dark.value,
                            onChanged: (value) {
                              _dark.value = value;
                            },
                          ),
                          DropdownButton<double>(
                            value: _widthFactor.value,
                            onChanged: (value) {
                              _widthFactor.value = value!;
                            },
                            items: [
                              DropdownMenuItem<double>(
                                value: 0.5,
                                child: Text('Size: 50%'),
                              ),
                              DropdownMenuItem<double>(
                                value: 0.75,
                                child: Text('Size: 75%'),
                              ),
                              DropdownMenuItem<double>(
                                value: 1.0,
                                child: Text('Size: 100%'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      body: Center(
                          child: Container(
                        width: MediaQuery.of(context).size.width *
                            _widthFactor.value,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Frame111(),
                          ],
                        ),
                      )));
                },
              );
            }));
  }
}

class Frame111 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 216,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 360,
                  height: 180,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                left: 82,
                top: 50,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 30,
                              child: Container(
                                width: 60,
                                height: 48,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 60,
                                        height: 48,
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      left: 19,
                                      top: 3,
                                      child: Text(
                                        '3',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF111111),
                                          fontSize: 36,
                                          fontFamily: 'Pretendard',
                                          height: 0,
                                          letterSpacing: -0.90,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 78,
                              child: Container(
                                width: 60,
                                height: 30,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 60,
                                        height: 30,
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      left: 24,
                                      top: 4,
                                      child: Text(
                                        '4',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 18,
                                          fontFamily: 'Pretendard',
                                          height: 0,
                                          letterSpacing: -0.45,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 60,
                                height: 30,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 60,
                                        height: 30,
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      left: 25,
                                      top: 5,
                                      child: Text(
                                        '2',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 18,
                                          fontFamily: 'Pretendard',
                                          height: 0,
                                          letterSpacing: -0.45,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 60,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 30,
                              child: Container(
                                width: 60,
                                height: 48,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 60,
                                        height: 48,
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      left: 20,
                                      top: 3,
                                      child: Text(
                                        '7',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF111111),
                                          fontSize: 36,
                                          fontFamily: 'Pretendard',
                                          height: 0,
                                          letterSpacing: -0.90,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 78,
                              child: Container(
                                width: 60,
                                height: 30,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 60,
                                        height: 30,
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      left: 25,
                                      top: 4,
                                      child: Text(
                                        '8',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 18,
                                          fontFamily: 'Pretendard',
                                          height: 0,
                                          letterSpacing: -0.45,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 60,
                                height: 30,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 60,
                                        height: 30,
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      left: 24,
                                      top: 5,
                                      child: Text(
                                        '6',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 18,
                                          fontFamily: 'Pretendard',
                                          height: 0,
                                          letterSpacing: -0.45,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: 60,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 30,
                              child: Container(
                                width: 60,
                                height: 48,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 60,
                                        height: 48,
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      left: 19,
                                      top: 3,
                                      child: Text(
                                        '8',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF111111),
                                          fontSize: 36,
                                          fontFamily: 'Pretendard',
                                          height: 0,
                                          letterSpacing: -0.90,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 78,
                              child: Container(
                                width: 60,
                                height: 30,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 60,
                                        height: 30,
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      left: 24,
                                      top: 4,
                                      child: Text(
                                        '9',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 18,
                                          fontFamily: 'Pretendard',
                                          height: 0,
                                          letterSpacing: -0.45,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 60,
                                height: 30,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 60,
                                        height: 30,
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      left: 25,
                                      top: 5,
                                      child: Text(
                                        '7',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 18,
                                          fontFamily: 'Pretendard',
                                          height: 0,
                                          letterSpacing: -0.45,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 360,
                  height: 40,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(width: 360, height: 40),
                      ),
                      Positioned(
                        left: 192,
                        top: 8,
                        child: Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(1.57),
                          child: Container(
                            width: 24,
                            height: 24,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Transform(
                                    transform: Matrix4.identity()
                                      ..translate(0.0, 0.0)
                                      ..rotateZ(1.57),
                                    child: Container(width: 24, height: 24),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 180,
                child: Container(
                  width: 360,
                  height: 36,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 360,
                          height: 36,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                      Positioned(
                        left: 130,
                        top: 14,
                        child: Container(
                          width: 100,
                          height: 8,
                          decoration: ShapeDecoration(
                            color: Color(0xFF111111),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
