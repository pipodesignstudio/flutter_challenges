import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FitnessProductScreen extends StatefulWidget {
  const FitnessProductScreen({super.key});

  @override
  State<FitnessProductScreen> createState() => _FitnessProductScreenState();
}

class _FitnessProductScreenState extends State<FitnessProductScreen> {
  int selectedFlavour = 0;
  int selectedWeight = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_left)),
        backgroundColor: const Color(0xFFF1F1F1),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border_outlined))],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              height: height * 0.6,
              decoration: const BoxDecoration(color: Color(0xFFF1F1F1)),
              child: FadeInUp(
                child: Center(
                    child: Container(
                        margin: const EdgeInsets.only(bottom: 80),
                        height: 450,
                        width: double.infinity,
                        child: _ProductImage(selectedFlavour: selectedFlavour))),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * .4,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  SizedBox(
                    height: height * .32,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                      child: ListView(
                        children: [
                          Text(selectedWeight == 0 ? '30€' : '48€', style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.grey, fontSize: 16))),
                          Text('Whey Protein 100%', style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold))),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Text('1️⃣ Flavour:', style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black87, fontSize: 14))),
                              Text(
                                selectedFlavour == 1 ? ' Dark choco' : selectedFlavour == 2 ? ' Delicious Strawberry' : ' Creamy Vainilla' 
                                , style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold))),
                            ],
                          ), 
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedFlavour = 1;
                                  });
                                },
                                child: Container(
                                  width: 42,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80),
                                    border: Border.all(color: selectedFlavour == 1 ? Colors.blueAccent.shade700 : Colors.transparent, width: 2)
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 34,
                                      height: 34,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF532e15),
                                        borderRadius: BorderRadius.circular(40)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedFlavour = 2;
                                  });
                                },
                                child: Container(
                                  width: 42,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80),
                                    border: Border.all(color: selectedFlavour == 2 ? Colors.blueAccent.shade700 : Colors.transparent, width: 2)
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 34,
                                      height: 34,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF9B9B7),
                                        borderRadius: BorderRadius.circular(40)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedFlavour = 3;
                                  });
                                },
                                child: Container(
                                  width: 42,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80),
                                    border: Border.all(color: selectedFlavour == 3 ? Colors.blueAccent.shade700 : Colors.transparent, width: 2)
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 34,
                                      height: 34,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF5D491),
                                        borderRadius: BorderRadius.circular(40)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Text('2️⃣ Weight:', style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black87, fontSize: 14))), 
                          const SizedBox(height: 15),
                          Row(children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectedWeight = 0;
                                });
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(width: 2, color: selectedWeight == 0 ? Colors.black : Colors.grey.shade200)
                                ),
                                child: Center(
                                  child: Text('1kg', style: GoogleFonts.poppins(textStyle: TextStyle(color: selectedWeight == 0 ? Colors.black : Colors.grey.shade200, fontWeight: FontWeight.bold)),
                                ),
                              ),
                            )),
                            const SizedBox(width: 8),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectedWeight = 1;
                                });
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(width: 2, color: selectedWeight == 1 ? Colors.black : Colors.grey.shade200)
                                ),
                                child: Center(
                                  child: Text('2kg', style: GoogleFonts.poppins(textStyle: TextStyle(color: selectedWeight == 1 ? Colors.black : Colors.grey.shade200, fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ))
                          ]),
                          const SizedBox(height: 10),
                          Text('About our great product', style: GoogleFonts.poppins(textStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold))),
                          const SizedBox(height: 10),
                          const Text('Whey protein shakes offer a range of benefits, especially for those engaged in regular exercise or looking to support their overall health and fitness goals')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                      height: height * .08,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Row(
                          children: [
                            const SizedBox(width: 25),
                            Expanded(
                              child: ElevatedButton.icon(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                                  backgroundColor: MaterialStateProperty.all(selectedFlavour == 0 ? Colors.grey.shade400 : Colors.blueAccent.shade700), foregroundColor: MaterialStateProperty.all(Colors.white)),
                                onPressed: () {}, icon: const Icon(Icons.credit_card), label: const Text('Buy now'),),
                            ),
                            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_basket, color: selectedFlavour == 0 ? Colors.grey.shade500 : Colors.blueAccent.shade700)),
                            const SizedBox(width: 25),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ProductImage extends StatelessWidget {
  final int selectedFlavour;
  const _ProductImage({
    required this.selectedFlavour,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      selectedFlavour == 0 
      ? 'assets/img/01/unselected_flavour.png'
      : selectedFlavour == 1 
        ? 'assets/img/01/choco_flavour.png'
        : selectedFlavour == 2 
          ? 'assets/img/01/strawberry_flavour.png'
          : 'assets/img/01/vanilla_flavour.png'
      ,
      fit: BoxFit.cover,
    );
  }
}
