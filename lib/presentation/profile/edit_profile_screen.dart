import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qmenu/presentation/widgets/phone_icon.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Edit Profile',
          style: TextStyle(
              color: Colors.black, fontFamily: 'JosefinSans', fontSize: 20),
        ),
        actions: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Cancel',
                style: TextStyle(
                    color: Colors.black38,
                    fontFamily: 'JosefinSans',
                    fontSize: 18),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const CircleAvatar(
                radius: 60,
              ),
              const SizedBox(
                height: 60,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'John Williams',
                        prefixIcon: const Icon(
                          Icons.person_outline,
                          color: Color(0xFF5663FF),
                        ),
                        /* const PhoneIcon(
                          color: Color(0xFF5663FF),
                        ), */
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Telefon',
                        prefixIcon: const PhoneIcon(
                          color: Color(0xFF5663FF),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: size.width,
                      height: 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF5663FF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Update')),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
