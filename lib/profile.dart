import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool tematerang = true;

  void gantitema() {
    setState(() {
      tematerang = !tematerang;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tematerang ? Colors.white : Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Center(child: Text("Profile")),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.brightness_6),
              color: tematerang ? Colors.black : Colors.white,
              onPressed: gantitema,
            ),
          ),
          Column(
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      "Jaehyun",
                      style: TextStyle(
                        fontSize: 20,
                        color: tematerang ? Colors.black : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/jaehyun.jpg'),
              ),
              const SizedBox(height: 30),
              Text("USERNAME", style: TextStyle(color: tematerang ? Colors.black : Colors.white)),
              Text("@jeongjh", style: TextStyle(color: tematerang ? Colors.black : Colors.white)),
              const SizedBox(height: 30),
              Text("FULLNAME:", style: TextStyle(color: tematerang ? Colors.black : Colors.white)),
              Text("JUNG JAEHYUN", style: TextStyle(color: tematerang ? Colors.black : Colors.white)),
              const SizedBox(height: 30),
              Text("EMAIL ADDRESS:", style: TextStyle(color: tematerang ? Colors.black : Colors.white)),
              Text("jaehyunnct127@gmail.com", style: TextStyle(color: tematerang ? Colors.black : Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
