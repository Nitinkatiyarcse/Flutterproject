import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'About',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: 1.0, left: 6.0, right: 2.0),
                          child: Text(
                            'The Hospital is one of the largest teaching\n'
                            'hospital trusts in England, serving a local,\n'
                            'regional, national, and international\n'
                            'population. We employ around 65,000\n'
                            'colleagues, and are committed to investing\n'
                            'in our staff, their personal and professional\n'
                            'development, health and well-being and\n'
                            'future careers.\n\n\n'
                            'We see and treat more patients every year\n'
                            'across our  hospital sites and through our\n'
                            'community services and clinics. We are a\n'
                            'regional centre for cancer, trauma, renal\n'
                            'dialysis, burns and plastics, as well as\n'
                            'respiratory conditions like cystic fibrosis. We\n'
                            'also have expertise in premature baby care,\n'
                            'bone marrow transplants and thoracic surgery\n'
                            'and have the largest solid organ transplantation\n'
                            'programme. We provide a series of highly\n'
                            'specialist cardiac, liver and neurosurgery\n'
                            'services to patients from across the UK.\n'
                            'The Hospital is a Major Trauma Centre \n'
                            'treating the most severely injured casualties\n'
                            'from across the region. The hospital’s single\n'
                            'site critical care unit is the largest.\n\n'
                            'But it’s not just our patients we invest in\n'
                            'at UHB; we also invest in our staff. In fact,\n'
                            'we believe we are defined by our people, not by\n'
                            'the state-of-the-art equipment or facilities we \n'
                            'work out of. We have high standards and we want\n'
                            'to build healthier lives for patients and our\n'
                            'teams, wanting colleagues to enjoy their jobs,\n'
                            'and flourish in them.\n'
                            'Kind: the kindness that people show to each\n'
                            'other every day Connected: the connections\n'
                            'we build with everyone around us',
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
