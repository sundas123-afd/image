import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterWidgetsDemo());
}

class FlutterWidgetsDemo extends StatefulWidget {
  const FlutterWidgetsDemo({super.key});

  @override
  State<FlutterWidgetsDemo> createState() => _FlutterWidgetsDemoState();
}

class _FlutterWidgetsDemoState extends State<FlutterWidgetsDemo> {
  bool isChecked = false;
  String selectedOption = "A";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Widgets Demo"),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // ✅ Image from assets folder
                Image.asset(
                  'assets/images/myimage.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                const SizedBox(height: 20),

                const Text(
                  "Example of Checkbox and Radio Button",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                // ✅ Checkbox
                CheckboxListTile(
                  title: const Text("Check me"),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() => isChecked = value ?? false);
                  },
                ),

                // ✅ Radio Buttons
                RadioListTile<String>(
                  title: const Text("Option A"),
                  value: "A",
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() => selectedOption = value!);
                  },
                ),
                RadioListTile<String>(
                  title: const Text("Option B"),
                  value: "B",
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() => selectedOption = value!);
                  },
                ),

                const SizedBox(height: 20),

                const Text(
                  "ListView Example",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                // ✅ ListView (Horizontal)
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Card(
                        color: Colors.lightBlueAccent,
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Text("Apple"),
                        ),
                      ),
                      Card(
                        color: Colors.orangeAccent,
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Text("Banana"),
                        ),
                      ),
                      Card(
                        color: Colors.pinkAccent,
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Text("Cherry"),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "GridView Example",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                // ✅ GridView (Static size)
                SizedBox(
                  height: 200,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: const [
                      Card(child: Center(child: Text("1"))),
                      Card(child: Center(child: Text("2"))),
                      Card(child: Center(child: Text("3"))),
                      Card(child: Center(child: Text("4"))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
