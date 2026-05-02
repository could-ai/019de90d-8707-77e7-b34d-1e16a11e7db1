import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../providers/app_provider.dart';

class DoctorsListScreen extends StatelessWidget {
  const DoctorsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final doctors = context.watch<AppProvider>().doctors;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Doctors'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          final doctor = doctors[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(doctor.imageUrl),
              ),
              title: Text(doctor.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text(doctor.specialty, style: TextStyle(color: Colors.teal.shade700, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  Text(doctor.bio, maxLines: 2, overflow: TextOverflow.ellipsis),
                ],
              ),
              isThreeLine: true,
              onTap: () {
                context.push('/doctor_detail', extra: doctor.id);
              },
            ),
          );
        },
      ),
    );
  }
}
