# ClinicCare Patient Portal

A comprehensive, cross-platform patient portal built with Flutter. ClinicCare allows patients to easily register, view clinic services, explore doctor details including their schedules, review personal lab reports, and seamlessly handle payments.

## Features

- **Patient Registration**: Securely sign up by entering your full name, National Identity Card (NIC), date of birth, address, and contact number.
- **Home Dashboard**: A modern landing page providing a clear overview of the clinic's core services (General Consultation, Cardiology, Dental, Pediatrics) and quick navigation to your most important records.
- **Doctors & Scheduling**: 
  - Browse a list of top doctors with their specialties and bios.
  - View specific doctor profiles, which include the specific services they offer.
  - Locate doctors easily with displayed clinic locations (e.g., specific hospital wings/rooms).
  - Interact with a real-time calendar to check the doctor's schedule and book appointments.
- **Patient Reports**: Secure access to medical records, such as lab results and X-rays, uploaded by your healthcare provider. Includes summary views and simulated PDF downloads.
- **Flexible Payments**: Complete your medical bills prior to or directly after your visit by choosing between an integrated credit card flow or choosing to pay in cash at the desk.

## Tech Stack

- **Framework**: Flutter (Dart)
- **Routing**: `go_router` for structured, deep-linkable navigation.
- **State Management**: `provider` for robust cross-screen state sharing.
- **UI & Layouts**: Material 3 Design, featuring specialized widgets like `table_calendar` for doctor appointments and `intl` for precise date handling.

## Setup & Run Instructions

1. Ensure you have the [Flutter SDK](https://docs.flutter.dev/get-started/install) installed (version 3.7.2 or above recommended).
2. Clone this repository to your local machine.
3. Open a terminal in the project directory and run:
   ```bash
   flutter pub get
   ```
4. Start the application on your preferred device or emulator:
   ```bash
   flutter run
   ```

---

## About CouldAI
This app was generated with [CouldAI](https://could.ai), an AI app builder for cross-platform apps that turns prompts into real native iOS, Android, Web, and Desktop apps with autonomous AI agents that architect, build, test, deploy, and iterate production-ready applications.
