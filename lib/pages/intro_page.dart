import 'package:flutter/material.dart';
import 'package:mobile_banking_app_flutter/pages/home_page.dart';
import 'package:mobile_banking_app_flutter/utils/color_utils.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.appBlack,
      body: Column(
        children: [
          Image.asset(
            'assets/intro_image.png',
            width: MediaQuery.of(context).size.width * 0.98,
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Get access to your finances ",
                          style: TextStyle(
                            fontSize: 32.0,
                          ),
                        ),
                        TextSpan(
                          text: "Anytime, ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32.0,
                          ),
                        ),
                        TextSpan(
                          text: "Anywhere",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Secure your financial future with our trusted banking services",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: ColorUtils.appGreen,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          const Text(
                            "Swipe to get started",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.chevron_right,
                                    color: ColorUtils.appGreen.withOpacity(0.2),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    color: ColorUtils.appGreen.withOpacity(0.5),
                                  ),
                                  const Icon(
                                    Icons.chevron_right,
                                    color: ColorUtils.appGreen,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).padding.bottom + 12.0,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
