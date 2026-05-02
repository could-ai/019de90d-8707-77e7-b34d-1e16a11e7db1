class Patient {
  final String id;
  final String name;
  final String nic;
  final DateTime dob;
  final String address;
  final String contact;

  Patient({
    required this.id,
    required this.name,
    required this.nic,
    required this.dob,
    required this.address,
    required this.contact,
  });
}

class Doctor {
  final String id;
  final String name;
  final String specialty;
  final String imageUrl;
  final String bio;
  final String liveLocationUrl;
  final List<String> services;

  Doctor({
    required this.id,
    required this.name,
    required this.specialty,
    required this.imageUrl,
    required this.bio,
    required this.liveLocationUrl,
    required this.services,
  });
}

class Report {
  final String id;
  final String title;
  final DateTime date;
  final String doctorId;
  final String patientId;
  final String contentUrl; // E.g., PDF link or details
  final String doctorName;

  Report({
    required this.id,
    required this.title,
    required this.date,
    required this.doctorId,
    required this.patientId,
    required this.contentUrl,
    required this.doctorName,
  });
}

class ClinicService {
  final String id;
  final String name;
  final String iconData;
  final String description;

  ClinicService({
    required this.id,
    required this.name,
    required this.iconData,
    required this.description,
  });
}
