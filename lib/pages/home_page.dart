import 'package:awesome_app/utils/constants.dart';
import 'package:flutter/material.dart';
import '../myDrawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  var myText = "change Me";
  var url = "https://jsonplaceholder.typicode.com/photos";
  // ignore: prefer_typing_uninitialized_variables
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    dynamic res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    // ignore: avoid_print
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Awesome App"),
        actions: [
          IconButton(
            onPressed: () {
              Constants.prefs.setBool("loggedIn", false);
              Navigator.pushReplacementNamed(context, "/login");
            },
            icon: const Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListTile(
                      title: Text(data[index]["title"]),
                      subtitle: Text("ID : ${data[index]["id"]}"),
                      leading: Image.network(data[index]["url"]),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : const Center(child: CircularProgressIndicator()),
      ),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
