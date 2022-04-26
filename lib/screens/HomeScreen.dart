import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

const double fontSize = 30;
double height = 100;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calclutor"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.purple, Colors.blue],
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xff666eab),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(width: 3, color: Colors.purple),
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue, Colors.purple],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male, size: 50),
                          Text("Male", style: TextStyle(fontSize: fontSize)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(width: 3, color: Colors.purple),
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue, Colors.purple],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female, size: 50),
                          Text("Female", style: TextStyle(fontSize: fontSize)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 3, color: Colors.purple),
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue, Colors.purple],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Height", style: TextStyle(fontSize: fontSize)),
                    Text("${height.round()}",
                        style: TextStyle(fontSize: fontSize)),
                    Slider(
                      activeColor: Colors.purple,
                      inactiveColor: Colors.deepPurpleAccent,
                      min: 50,
                      max: 200,
                      value: height,
                      onChanged: (double value) {
                        setState(() {});
                        height = value;
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(width: 3, color: Colors.purple),
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue, Colors.purple],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male, size: 50),
                          Text("Male", style: TextStyle(fontSize: fontSize)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(width: 3, color: Colors.purple),
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blue, Colors.purple],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female, size: 50),
                          Text("Female", style: TextStyle(fontSize: fontSize)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.purple),
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue, Colors.purple],
                  ),
                ),
                child: Text(
                  "calculate",
                  style: TextStyle(fontSize: fontSize),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
