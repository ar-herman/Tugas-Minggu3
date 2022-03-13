import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController bukuController = new TextEditingController();
  TextEditingController penulisController = new TextEditingController();

  TextEditingController bukuEditController = new TextEditingController();
  TextEditingController penulisEditController = new TextEditingController();

  List<Map<String, dynamic>> myData = [];

  void _showDialogEdit(int index, Map<String, dynamic> data) {
    bukuEditController.text = data["buku"];
    penulisEditController.text = data["penulis"];
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.blueGrey.shade900,
            title: Text(
              "Edit Data",
              style: TextStyle(
                color: Colors.orange,
              ),
              textAlign: TextAlign.center,
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: bukuEditController,
                  decoration: InputDecoration(
                    labelText: "Buku : ",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: penulisEditController,
                  decoration: InputDecoration(
                    labelText: "Penulis : ",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            actions: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {
                    // String name = nameEditController.text;
                    // String skill = skillEditController.text;

                    String buku = bukuEditController.text;
                    String penulis = penulisEditController.text;

                    myData[index]["buku"] = buku;
                    myData[index]["penulis"] = penulis;
                    bukuEditController.text = "";
                    penulisEditController.text = "";
                    setState(() {});
                    Navigator.of(context).pop();
                  },
                  child: Text("Edit")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancel"))
            ],
          );
        });
  }

  void _showDialogAdd() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.blueGrey.shade900,
            title: Text(
              "Tambah Data",
              style: TextStyle(
                color: Colors.orange,
              ),
              textAlign: TextAlign.center,
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: bukuController,
                  decoration: InputDecoration(
                    labelText: "Buku : ",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: penulisController,
                  decoration: InputDecoration(
                    labelText: "Penulis : ",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            actions: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {
                    String buku = bukuController.text;
                    String penulis = penulisController.text;

                    myData.add({"buku": buku, "penulis": penulis});
                    bukuController.text = "";
                    penulisController.text = "";
                    setState(() {});
                    Navigator.of(context).pop();
                  },
                  child: Text("Tambah")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Batal"))
            ],
          );
        });
  }

  void _removeData(int index) {
    setState(() {
      myData.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: Text(
          "Tugas Week 3",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _showDialogAdd,
            icon: Icon(
              Icons.add_task,
              color: Colors.orange,
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Ini adalah Tugas untuk memahami List yang bersifat CRUD.",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Expanded(
                child: ListView.builder(
                    itemCount: myData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 130,
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nama Buku : ${myData[index]["buku"]}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Nama Penulis : ${myData[index]["penulis"]}",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    _removeData(index);
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.delete,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        "Hapus",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                TextButton(
                                  onPressed: () {
                                    _showDialogEdit(index, myData[index]);
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.mode_edit,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        "Edit",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
