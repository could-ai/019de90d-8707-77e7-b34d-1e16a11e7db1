import 'package:flutter/material.dart';
import '../models/models.dart';

class AppProvider with ChangeNotifier {
  // Mock Data
  Patient? currentUser;

  final List<ClinicService> services = [
    ClinicService(id: 's1', name: 'General Consultation', iconData: 'stethoscope', description: 'Basic health checkup and consultation.'),
    ClinicService(id: 's2', name: 'Cardiology', iconData: 'heart', description: 'Heart and cardiovascular services.'),
    ClinicService(id: 's3', name: 'Dental Care', iconData: 'smile', description: 'Teeth cleaning, extraction, and oral health.'),
    ClinicService(id: 's4', name: 'Pediatrics', iconData: 'baby', description: 'Infant and child care.'),
  ];

  final List<Doctor> doctors = [
    Doctor(
      id: 'd1',
      name: 'Dr. Sarah Jenkins',
      specialty: 'Cardiologist',
      imageUrl: 'https://i.pravatar.cc/150?img=5',
      bio: 'Over 15 years of experience in cardiovascular care. Board-certified and dedicated to patient health.',
      liveLocationUrl: 'Room 101, Cardiology Wing',
      services: ['Cardiology', 'General Consultation'],
    ),
    Doctor(
      id: 'd2',
      name: 'Dr. Michael Chen',
      specialty: 'Dentist',
      imageUrl: 'https://i.pravatar.cc/150?img=11',
      bio: 'Specializing in cosmetic and general dentistry. Gentle and family-friendly approach.',
      liveLocationUrl: 'Room 205, Dental Care Unit',
      services: ['Dental Care'],
    ),
    Doctor(
      id: 'd3',
      name: 'Dr. Emily Stone',
      specialty: 'Pediatrician',
      imageUrl: 'https://i.pravatar.cc/150?img=9',
      bio: 'Expert in child development and care. Making hospital visits fun for kids.',
      liveLocationUrl: 'Room 302, Pediatrics',
      services: ['Pediatrics', 'General Consultation'],
    ),
  ];

  final List<Report> reports = [
    Report(
      id: 'r1',
      title: 'Blood Test Results',
      date: DateTime.now().subtract(const Duration(days: 5)),
      doctorId: 'd1',
      patientId: 'p1',
      contentUrl: 'Detailed report showing normal cholesterol levels.',
      doctorName: 'Dr. Sarah Jenkins',
    ),
    Report(
      id: 'r2',
      title: 'Dental X-Ray',
      date: DateTime.now().subtract(const Duration(days: 12)),
      doctorId: 'd2',
      patientId: 'p1',
      contentUrl: 'X-Ray indicates no cavities. Routine cleaning recommended.',
      doctorName: 'Dr. Michael Chen',
    ),
  ];

  // Actions
  void registerPatient({
    required String name,
    required String nic,
    required DateTime dob,
    required String address,
    required String contact,
  }) {
    currentUser = Patient(
      id: 'p1', // Mock ID
      name: name,
      nic: nic,
      dob: dob,
      address: address,
      contact: contact,
    );
    notifyListeners();
  }

  void logout() {
    currentUser = null;
    notifyListeners();
  }
}
