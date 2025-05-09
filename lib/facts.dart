import 'package:flutter/material.dart';

class FactsPage extends StatelessWidget {
  const FactsPage({super.key});

  final List<String> spaceFacts = const [
    '1. First Satellite of World → Sputnik I',
    '2. First Country to launch satellite → USSR',
    '3. First Communication Satellite → Telstar 1',
    '4. First Weather Satellite → TIROS-1',
    '5. First GPS Satellite → Navstar 1',
    '6. Launch Date of Sputnik I → October 4, 1957',
    '7. Oldest Manmade Satellite → Vanguard-1',
    '8. First Human in Space → Yuri Gagarin',
    '9. First Moon Landing → Apollo 11 (1969)',
    '10. First Private Space Launch → SpaceX Falcon 1 (2008)',
    '11. First Indian Satellite → Aryabhata (1975)',
    '12. First Mars Rover → Sojourner (1997)',
    '13. Largest Satellite Constellation → Starlink by SpaceX',
    '14. First Space Telescope → Hubble Space Telescope',
    '15. Longest Time in Space → Valeri Polyakov (437 days)',
    '16. First Woman in Space → Valentina Tereshkova (1963)',
    '17. Fastest Human-made Object → Parker Solar Probe',
    '18. Closest Star System to Earth → Alpha Centauri',
    '19. International Space Station Launch → 1998',
    '20. Voyager 1 → Farthest spacecraft from Earth',
    '21. First Satellite of Nepal → NepaliSat-1',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DO YOU KNOW?',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: spaceFacts.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  spaceFacts[index],
                  style: const TextStyle(fontSize: 16),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
