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
                            Frame109(),
                          ],
                        ),
                      )));
                },
              );
            }));
  }
}

class Frame109 extends StatelessWidget {
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
                        left: 54,
                        top: 60,
                        child: Container(
                          width: 252,
                          height: 67,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 108,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'long candle',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Pretendard',
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    Container(
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 36,
                                            height: 36,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Container(
                                                    width: 36,
                                                    height: 36,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.only(
                                                        topLeft: Radius.circular(8),
                                                        bottomLeft: Radius.circular(8),
                                                      ),
                                                      border: Border.only(
                                                        left: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                          color: Color(0xFF111111),
                                                        ),
                                                        top: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                          color: Color(0xFF111111),
                                                        ),
                                                        right: BorderSide(
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                          color: Color(0xFF111111),
                                                        ),
                                                        bottom: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                          color: Color(0xFF111111),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 6,
                                                  top: 6,
                                                  child: Container(
                                                    width: 24,
                                                    height: 24,
                                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                                    clipBehavior: Clip.antiAlias,
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.min,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                      ,
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 36,
                                            height: 36,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Container(
                                                    width: 36,
                                                    height: 36,
                                                    decoration: BoxDecoration(
                                                      border: Border.only(
                                                        left: BorderSide(
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                        top: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                        right: BorderSide(
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                        bottom: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 12,
                                                  top: 7,
                                                  child: Text(
                                                    '3',
                                                    style: TextStyle(
                                                      color: Colors.black,
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
                                          Container(
                                            width: 36,
                                            height: 36,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Container(
                                                    width: 36,
                                                    height: 36,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.only(
                                                        topRight: Radius.circular(8),
                                                        bottomRight: Radius.circular(8),
                                                      ),
                                                      border: Border.only(
                                                        left: BorderSide(
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                        top: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                        right: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                        bottom: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 8,
                                                  top: 8,
                                                  child: Container(
                                                    width: 20,
                                                    height: 20,
                                                    clipBehavior: Clip.antiAlias,
                                                    decoration: BoxDecoration(),
                                                    child: Stack(children: [
                                                    ,
                                                    ]),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 36),
                              Container(
                                width: 108,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'short candle',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Pretendard',
                                          height: 0,
                                          letterSpacing: -0.40,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 12),
                                    Container(
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 36,
                                            height: 36,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Container(
                                                    width: 36,
                                                    height: 36,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.only(
                                                        topLeft: Radius.circular(8),
                                                        bottomLeft: Radius.circular(8),
                                                      ),
                                                      border: Border.only(
                                                        left: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                          color: Color(0xFF111111),
                                                        ),
                                                        top: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                          color: Color(0xFF111111),
                                                        ),
                                                        right: BorderSide(
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                          color: Color(0xFF111111),
                                                        ),
                                                        bottom: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                          color: Color(0xFF111111),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 6,
                                                  top: 6,
                                                  child: Container(
                                                    width: 24,
                                                    height: 24,
                                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                                    clipBehavior: Clip.antiAlias,
                                                    decoration: BoxDecoration(),
                                                    child: Row(
                                                      mainAxisSize: MainAxisSize.min,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                      ,
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 36,
                                            height: 36,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Container(
                                                    width: 36,
                                                    height: 36,
                                                    decoration: BoxDecoration(
                                                      border: Border.only(
                                                        left: BorderSide(
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                        top: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                        right: BorderSide(
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                        bottom: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 13,
                                                  top: 7,
                                                  child: Text(
                                                    '0',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
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
                                          Container(
                                            width: 36,
                                            height: 36,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Container(
                                                    width: 36,
                                                    height: 36,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.only(
                                                        topRight: Radius.circular(8),
                                                        bottomRight: Radius.circular(8),
                                                      ),
                                                      border: Border.only(
                                                        left: BorderSide(
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                        top: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                        right: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                        bottom: BorderSide(
                                                          width: 1,
                                                          strokeAlign: BorderSide.strokeAlignCenter,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 8,
                                                  top: 8,
                                                  child: Container(
                                                    width: 20,
                                                    height: 20,
                                                    clipBehavior: Clip.antiAlias,
                                                    decoration: BoxDecoration(),
                                                    child: Stack(children: [
                                                    ,
                                                    ]),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
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
                                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
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
              Positioned(
                left: 333,
                top: 90,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 24,
                    height: 24,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Transform(
                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
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
      ],
    );
  }
}