import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(Icons.notifications),
                        onPressed: () {
                          print('pressed');
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.extension),
                        onPressed: () {
                          print('pressed');
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 37.0,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Welcome,',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: ' Hardik',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    style: TextStyle(fontSize: 50.0),
                  ),
                  SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 18,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Text(
                    'Saved Places',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10.0),
                  SizedBox(
                    height: 300.0,
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.491,
                      // physics: NeverScrollableScrollPhysics(),
                      children: [
                        for (var country in countries)
                          Image.asset('assets/images/$country.png')
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final countries = [
  'GREECE',
  'BARCELONA',
  'JAPAN',
  'Rome',
  'GREECE',
  'BARCELONA',
  'JAPAN',
  'Rome'
];
