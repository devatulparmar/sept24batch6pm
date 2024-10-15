import 'package:flutter/material.dart';

class MyImageScreen extends StatefulWidget {
  const MyImageScreen({super.key});

  @override
  State<MyImageScreen> createState() => _MyImageScreenState();
}

class _MyImageScreenState extends State<MyImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(
            height: 300,
            width: 150,
            image: AssetImage("images/image1.jpg"),
          ),
          Image(
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
                backgroundImage: AssetImage("images/image2.jpeg",),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image.network(
                  "https://4.img-dpreview.com/files/p/E~TS590x0~articles/3925134721/0266554465.jpeg",
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                  errorBuilder: (BuildContext context, Object obj, StackTrace? s) {
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
