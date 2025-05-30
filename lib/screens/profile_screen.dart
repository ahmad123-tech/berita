import 'package:flutter/material.dart';
import '../widgets/bottom_navigation.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade300,
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 60,
                        color: Colors.grey,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                        child: const Icon(
                          Icons.edit,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              _buildProfileItem('Username', 'Fajar Puniman'),
              _buildProfileItem('Email', 'fajar@gmail.com'),
              _buildProfileItem('Alamat', 'Jl.pembangunan no.14 garut'),
              _buildProfileItem('Password', '••••••••'),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/welcome');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade400,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(currentIndex: 3),
    );
  }

  Widget _buildProfileItem(String label, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (label != 'Password')
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.grey,
                ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(),
        ],
      ),
    );
  }
}
