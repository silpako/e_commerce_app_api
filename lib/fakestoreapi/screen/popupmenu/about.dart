import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 104, 42, 118),
        title: Text(
          'About Us',
          style: GoogleFonts.sansita(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text(
              'Herbs have been integral to human culture and cuisine for centuries, offering a myriad of flavors, fragrances, and health benefits. From the robust aroma of basil to the delicate freshness of mint, herbs enrich culinary experiences worldwide. Beyond their culinary uses, many herbs possess medicinal properties, utilized in traditional remedies and modern herbal medicine. Whether its the soothing qualities of chamomile or the immune-boosting effects of echinacea, herbs continue to captivate and contribute to our well-being. With their versatility and abundance, herbs truly stand as natures gift, enhancing both our palates and our health.\tWe are dedicated to providing you with information about various herbs and their benefits. Our goal is to empower you to explore the world of herbs and their uses for health and wellness.',
              style: GoogleFonts.sansita(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
