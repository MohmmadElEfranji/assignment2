import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      body: Container(
        child: isLandscape
            ? buildScaffoldLandscape(context)
            : buildScaffoldPortrait(context),
      ),
    );
  }

  Scaffold buildScaffoldPortrait(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text('Second Assignment'),
        backgroundColor: Colors.purpleAccent,
      ),
      drawer: Drawer(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(200, 239, 204, 204),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 55.0,
                  child: DrawerHeader(
                    child: Text('', style: TextStyle(color: Colors.white)),
                    margin: EdgeInsets.all(0.0),
                    padding: EdgeInsets.all(0.0),
                    decoration: BoxDecoration(color: Colors.transparent),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                buildMenuItem(context, text: "FIRST ELEMENT"),
                buildMenuItem(context, text: "SECOND ELEMENT"),
                buildMenuItem(context, text: "THIRD ELEMENT"),
                buildMenuItem(context, text: "FORTH ELEMENT"),
                buildMenuItem(context, text: "FIFTH ELEMENT"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Scaffold buildScaffoldLandscape(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text('Second Assignment'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          height: double.infinity,
          width: MediaQuery.of(context).size.width / 2,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 35),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "FIRST ELEMENT",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "SECOND ELEMENT",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "THIRD ELEMENT",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "FORTH ELEMENT",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(BuildContext context, {required String text}) {
    const color = Colors.black;

    return ListTile(
      title: (Text(
        text,
        style: const TextStyle(
            color: color, fontSize: 20, fontWeight: FontWeight.w400),
      )),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
