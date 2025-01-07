import 'package:cookie_clicker/theme/colors.dart';
import 'package:flutter/material.dart';

class Clicker extends StatelessWidget {
  final int cookiePerClick;
  final String skin;
  final Function onTap;
  const Clicker(
      {super.key,
      required this.cookiePerClick,
      required this.onTap,
      required this.skin});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: kSecondary,
              border: Border.all(
                color: kGreyStroke,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
              child: InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: () {
                  onTap();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Appuie pour avoir des Cookies",
                        style: TextStyle(
                          fontSize: 16,
                          color: kOrange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: kGrey, fontSize: 14),
                          children: [
                            const TextSpan(
                              text: 'Obtiens ',
                            ),
                            TextSpan(
                                text: '$cookiePerClick',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                            const TextSpan(
                              text:
                                  ' cookies par click pour obtenir\ndes points !',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset(
                "assets/$skin",
                width: 150,
                height: 150,
              ),
            ),
          )
        ],
      ),
    );
  }
}
