import 'package:flutter/material.dart';
import 'package:flutter_zth_first/models/personal_model.dart';

class PersonalDetailScreen extends StatelessWidget {
  // final String name;
  // final String? email;
  const PersonalDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final Map<String, dynamic> value =
    //     ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    // final name = value['name'];
    // final email = value['email'];

    final value = ModalRoute.of(context)?.settings.arguments;

    final personal = value is PersonalModel
        ? value
        : PersonalModel(id: 0, name: 'unknown', email: 'unknown');

    final name = personal.name ?? '';
    final email = personal.email ?? '';

    return Scaffold(
      appBar: AppBar(title: const Text("Personal Details"), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Avatar
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?cs=srgb&dl=pexels-sulimansallehi-1704488.jpg&fm=jpg',
              ), // replace with your image
            ),
            const SizedBox(height: 16),

            // Name
            Text(
              name,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // Email
            Text(
              email,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
            ),
            const SizedBox(height: 24),

            // Details Section
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _buildDetailRow(Icons.phone, "Phone", "+855 123 456 789"),
                    const Divider(),
                    _buildDetailRow(Icons.cake, "Birthday", "12 Aug 2000"),
                    const Divider(),
                    _buildDetailRow(
                      Icons.location_on,
                      "Address",
                      "Phnom Penh, Cambodia",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.edit),
                  label: const Text("Edit"),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.logout),
                  label: const Text("Logout"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Text(value, style: const TextStyle(color: Colors.black87)),
            ],
          ),
        ),
      ],
    );
  }
}
