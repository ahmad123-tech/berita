import 'package:flutter/material.dart';
import '../widgets/bottom_navigation.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildSettingItem(
              context,
              'Profil',
              Icons.person_outline,
              () => Navigator.pushNamed(context, '/profile'),
            ),
            _buildSettingItem(
              context,
              'Notifikasi',
              Icons.notifications_none,
              () {},
            ),
            _buildSettingItem(
              context,
              'Bahasa',
              Icons.language,
              () {},
            ),
            _buildSettingItem(
              context,
              'About',
              Icons.info_outline,
              () {},
            ),
            _buildSettingItem(
              context,
              'Logout',
              Icons.logout,
              () => Navigator.pushReplacementNamed(context, '/welcome'),
              isLogout: true,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(currentIndex: 3),
    );
  }

  Widget _buildSettingItem(
    BuildContext context,
    String title,
    IconData icon,
    VoidCallback onTap, {
    bool isLogout = false,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24,
              color: isLogout ? Colors.red : Colors.grey.shade700,
            ),
            const SizedBox(width: 16),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isLogout ? Colors.red : Colors.black,
              ),
            ),
            const Spacer(),
            if (!isLogout)
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.grey.shade600,
              ),
          ],
        ),
      ),
    );
  }
}
