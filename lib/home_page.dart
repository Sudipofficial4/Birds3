import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Introduction',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 20),
              Text(
                textAlign: TextAlign.justify,
                'The BIRDS-3 project, led by the Kyushu Institute of Technology in Japan, was a multinational initiative involving students from Nepal, Sri Lanka, Bhutan, and Japan. The project aimed to assist countries in developing their first satellites, resulting in the creation of three identical 1U CubeSats: NepaliSat-1 (Nepal), Raavana-1 (Sri Lanka), and Uguisu (Japan).',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              Text(
                'BIRDS-3 Missions',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 10),
              Text(
                textAlign: TextAlign.justify,
                'June 23, 2019\n\n'
                'BIRDS-3 has 4 main missions in total: LoRa Demonstration Mission (LDM), Imaging Mission (CAM), '
                'Attitude Determination and Control Mission (ADCS), and Software Configurable Backplane Mission (BPB).\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'LoRa Demonstration Mission (LDM)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                textAlign: TextAlign.justify,
                'The mission uses two RFM95W LoRa transceivers connected via RF cable to communicate internally. '
                'No antennas are connected, and a 50db attenuator ensures no RF leakage outside the satellite.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Imaging Mission (CAM)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                textAlign: TextAlign.justify,
                'Captures images from space for media, outreach, and education. Images of landmass and stars '
                'from a 400 km orbit are used to promote satellite awareness in participating countries.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Attitude Determination and Control Mission (ADCS)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                textAlign: TextAlign.justify,
                'This mission aims to stabilize satellite orientation using 3-axis Magnetorquers (MTQ) mounted '
                'on different panels. It is the first step toward active attitude control in future missions.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Software Configurable Backplane Mission (BPB)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                textAlign: TextAlign.justify,
                'Conducted only by Uguisu (Japan), this mission demonstrates a reprogrammable backplane to reduce '
                'development cost and time, supporting mission flexibility until end-of-life.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
