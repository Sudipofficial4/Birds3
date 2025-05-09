import 'package:flutter/material.dart';

class SatelliteInfoPage extends StatelessWidget {
  const SatelliteInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ✅ wrap in Scaffold for safe area, proper padding
      // appBar: AppBar(title: const Text('Satellite Information')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'SATELLITE DETAILS',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              _buildInfoCard(),

              const SizedBox(height: 20),

              // 🔥 You can easily add more sections here
              // Example:
              _buildAnotherSection(),
            ],
          ),
        ),
      ),
    );
  }

  // 🌟 Satellite Details Card
  Widget _buildInfoCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'NAME:- Birds-3 Satellite',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 10),
          const Text(
            'DATE OF CREATION: 17th April 2019',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            'SPECIFICATION',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Satellite Name: NepaliSat-1, Raavana-1, Uguisu',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          const Text('Form Factor → 1U CubeSat (10 × 10 × 10 cm)'),
          const Text('Launch Vehicle → Northrop Grumman Antares rocket'),
          const Text(
            'Launch Site → Mid-Atlantic Regional Spaceport, Virginia, USA',
          ),
          const Text(
            'Deployment → From the International Space Station (ISS) on June 17, 2019',
          ),
          const Text('Orbit Altitude → Approximately 400 km'),
          const Text(
            'Mission Duration → Operational until reentry on October 3, 2021',
          ),
          const SizedBox(height: 20),
          const Text('Image', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(image: AssetImage('assets/Himalayan.jpg')),
            ),
          ),
          const SizedBox(height: 20),
          const Text('Features', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('Open Source'),
          const Text('Deployment from ISS'),
          const SizedBox(height: 20),
          const Text(
            'MAJOR COMPONENTS',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text('Structure'),
          const Text('On-Board Computer (OBC)'),
          const Text('Power System'),
          const Text('Communication System'),
          const Text('Antenna Deployment System'),
          const Text('Camera Module'),
          const Text('Attitude Determination and Control System (ADCS)'),
          const Text('Rear Access Board (RAB)'),
          const Text('Software Configurable Backplane (BPB)'),
          const Text('Beacon System'),
          SizedBox(height: 30),
          Text(
            'Applications',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '🌍 Earth Imaging & Remote Sensing\n\n'
            'Captures low-resolution images of Earth for educational and media outreach.\n'
            'Used to identify landmasses and stars from a 400 km orbit.\n\n'
            '📡 Communication Technology Testing\n\n'
            'Demonstrated on-orbit functionality of LoRa (Long Range) communication in space.\n'
            'Helped validate the use of low-power IoT communication protocols for future space missions.\n\n'
            '🛰️ Attitude Control Demonstration\n\n'
            'Successfully tested a 3-axis Magnetorquer-based stabilization system, paving the way for active attitude control in nanosatellites.\n\n'
            '💻 Space Systems Development Training\n\n'
            'Provided hands-on satellite design, development, and operation experience to engineers and students from non-spacefaring countries (Nepal, Sri Lanka, Bhutan).\n\n'
            '🧪 In-orbit Technology Validation\n\n'
            'Validated the Software Configurable Backplane in orbit (by Uguisu), enabling faster and cheaper CubeSat development in the future.\n\n'
            '📚 Education and Outreach\n\n'
            'Stimulated interest in space science and STEM education through national media and academic use of satellite data and images.\n'
            'Promoted awareness of the role of small satellites in emerging countries.\n\n'
            '🌐 International Collaboration\n\n'
            'Strengthened international cooperation between Japan and participating countries.\n'
            'Acted as a model for other countries aiming to enter the space sector via academic collaboration.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  // 🌟 Example for another section
  Widget _buildAnotherSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.lightBlue[50],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        'COPYRIGHT'
        '                                                    The Nepal Academy of Science and Technology (NAST), Nepal Arthur C. Clarke Institute for Modern Technologies (ACCIMT) in Sri Lanka LaSEINE, Kyushu Institute of Technology (Kyutech) in Japan',
        style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
      ),
    );
  }
}
