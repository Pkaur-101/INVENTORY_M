import 'package:flutter/material.dart';

class ExcessInventoryScreen extends StatelessWidget {
  const ExcessInventoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analysis Graphs'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  'ANALYSIS GRAPHS',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Image.asset('assets/graph3.jpeg'),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text('Quantity Left Over Each month'),
                ),
                const SizedBox(height: 20),
                Image.asset('assets/graph4.jpeg'),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text('Quantity bought Each month'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the next page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const NextPage(), // Replace with your next page
                    ),
                  );
                },
                child: const Text('Next'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text(
          'This is the next page.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
