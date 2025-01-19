import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('lib/assets/images/logo.png'),
        ),
        title: const Text(
          'Coffee Grounds Recycling',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Learn about the impact of recycling coffee grounds on the environment.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              InfoCard(
                imagePath: 'lib/assets/images/recycle_coffee.jpg',
                title: 'Why Recycle Coffee Grounds?',
                description:
                    'Coffee grounds can be used as a natural fertilizer, reducing the need for chemical fertilizers and enriching the soil.',
              ),
              InfoCard(
                imagePath: 'lib/assets/images/save_forests.jpg',
                title: 'Saving Forests',
                description:
                    'Recycling 500 million tons of coffee grounds per year can help save forests by reducing deforestation.',
              ),
              InfoCard(
                imagePath: 'lib/assets/images/clean_water.png',
                title: 'Cleaner Waterways',
                description:
                    'Properly recycled coffee grounds prevent water contamination and improve water quality.',
              ),
              InfoCard(
                imagePath: 'lib/assets/images/energy_savings.jpg',
                title: 'Energy Savings',
                description:
                    'Used coffee grounds can be transformed into biofuels, offering a sustainable energy source.',
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: const Text(
                    'Learn More',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const InfoCard({
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: screenHeight * 0.25, // Dynamic height
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
