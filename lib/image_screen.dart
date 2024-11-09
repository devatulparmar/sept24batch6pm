import 'package:flutter/material.dart';

class MyImageScreen extends StatefulWidget {
  const MyImageScreen({super.key});

  @override
  State<MyImageScreen> createState() => _MyImageScreenState();
}

class _MyImageScreenState extends State<MyImageScreen> {
  GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: const Text('Image Screen'),
        leading: IconButton(
          onPressed: () {
            key.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.open_in_new,
            color: Colors.red,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              key.currentState!.openEndDrawer();
            },
            icon: const Icon(
              Icons.open_in_new,
              color: Colors.red,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              child: CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage(
                  "images/image2.jpeg",
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Orders'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage(
                  "images/image2.jpeg",
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              trailing: const Icon(Icons.arrow_forward_ios),
              title: const Text('Home'),
              subtitle: const Text('Home SubtitleHome SubtitleHome SubtitleHome SubtitleHome SubtitleHome SubtitleHome Subtitle'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
              focusColor: Colors.red,
              tileColor: Colors.cyan,
              selectedColor: Colors.white,
              selectedTileColor: Colors.green,
              enabled: true,
              textColor: Colors.pink,
              iconColor: Colors.yellow,
              minTileHeight: 25,
              titleAlignment: ListTileTitleAlignment.center,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              minLeadingWidth: 10,
              selected: false,
              isThreeLine: true,
              onTap: () {
                print('home click');
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              print('on tap click');
            },
            onDoubleTap: () {
              print('on double tap click');
            },
            onLongPress: () {
              print('on long press click');
            },
            child: const Image(
              height: 300,
              width: 150,
              image: AssetImage("images/image1.jpg"),
            ),
          ),
          InkWell(
            onTap: () {
              print('on tap click');
            },
            child: Image(
              height: 150,
              width: 150,
              image: const NetworkImage(
                "https://4.img-dpreview.com/files/p/E~TS590x0~articles/3925134721/0266554465.jpeg",
              ),
              errorBuilder: (_, __, ___) {
                return const Icon(
                  Icons.image_not_supported,
                  size: 50,
                  color: Colors.red,
                );
              },
            ),
          ),
          Row(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/image1.jpg"),
                  ),
                ),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://4.img-dpreview.com/files/p/E~TS590x0~articles/3925134721/0266554465.jpeg"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  "images/image2.jpeg",
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image.network(
                  "https://4.img-dpreview.com/files/p/E~TS590x0~articles/3925134721/0266554465.jpeg",
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                  errorBuilder:
                      (BuildContext context, Object obj, StackTrace? s) {
                    return const Icon(
                      Icons.image_not_supported,
                      size: 50,
                      color: Colors.red,
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
