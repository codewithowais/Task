import 'package:flutter/material.dart';
import 'package:gari/screens/allproducts.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_left, color: Colors.blue[800])),
        title: Center(
            child: Text(
          "T-Shirt",
          style: TextStyle(color: Colors.blue[800]),
        )),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.all(0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/images1.jpg",
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [Icon(Icons.share)],
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      "lorem Product",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text("Dallas "),
                    trailing: Text("2 week ago"),
                  ),
                  const Divider(),
                  const ListTile(
                    title: Text(
                      "Description Product",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text(
                        "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum "),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/images1.jpg"),
                    ),
                    title: const Text(
                      "lkaris ",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Row(children: const [
                      Text("Dallas "),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                      ),
                      Icon(
                        Icons.star,
                        size: 12,
                      )
                    ]),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red),
                            onPressed: () {},
                            icon: const Icon(Icons.chat),
                            label: const Text("Chat")),
                        ElevatedButton.icon(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red),
                            onPressed: () {},
                            icon: const Icon(Icons.call),
                            label: const Text("Call")),
                        ElevatedButton.icon(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red),
                            onPressed: () {},
                            icon: const Icon(Icons.mail),
                            label: const Text("Email"))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
