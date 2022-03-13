import 'package:app_chat/pages/chat_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Home Screen"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "Chats",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Divider(thickness: 1, color: Colors.orange),
            Container(
              child: Expanded(
                child: Container(
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatScreen(),
                              ));
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/indiana.jpg"),
                          ),
                          title: Text("Indianapolis"),
                          subtitle: Text("holla"),
                          trailing: Text("19.03"),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 60,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/prof.jpg"),
                        ),
                        title: Text("Profesor"),
                        subtitle: Text("How are you today ?"),
                        trailing: Text("17.45"),
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 60,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/coppen.jpg"),
                        ),
                        title: Text("Coppenhagen"),
                        subtitle: Text("Pratice makes your perfect"),
                        trailing: Text("08.30"),
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 60,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
