import 'package:currency_converter/common_widgets/custom_container.dart';
import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

double pkrAmount = 0;
TextEditingController _usDollarRate = TextEditingController();
TextEditingController _usDollarAmount = TextEditingController();

class _CurrencyConverterState extends State<CurrencyConverter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Currency Converter App',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
      ),
      backgroundColor: const Color.fromARGB(255, 197, 191, 191),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Center(
          child: Column(
            children: [
              // Header with Icon
              const Icon(
                Icons.monetization_on,
                color: Colors.deepPurpleAccent,
                size: 60,
              ),
              const SizedBox(height: 20),

              // Custom Containers for Input
              CustomContainer(
                conLabelText: 'Please input today\'s USD exchange rate',
                containerController: _usDollarRate,
              ),
              CustomContainer(
                conLabelText: 'Enter the amount to be converted',
                containerController: _usDollarAmount,
              ),

              // Calculate Button with Ripple Effect and Gradient
              InkWell(
                onTap: () {
                  double usdToday = double.parse(_usDollarRate.text);
                  double usdAmount = double.parse(_usDollarAmount.text);
                  pkrAmount = usdToday * usdAmount;
                  setState(() {});
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  height: 50,
                  width: 220,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 157, 122, 240),
                        Color.fromARGB(255, 86, 13, 155),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurpleAccent.withOpacity(0.5),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Convert',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              // Animated PKR Calculation Container
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.fromLTRB(10, 12, 15, 5),
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 157, 122, 240),
                      Color.fromARGB(255, 86, 13, 155),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurpleAccent.withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Amount in PKR: ${pkrAmount.toStringAsFixed(2)}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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
