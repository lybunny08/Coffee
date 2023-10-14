import 'package:flutter/material.dart';

import '../Mediaquery.dart';
import 'offre.dart';

class Offre extends StatelessWidget {
  Offre({
    super.key,
    required this.offres,
  });
  final CustomSize _size = CustomSize();
  final Offres offres;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.only(left: 15),
          width: _size.width(context),
          height: _size.height(context) / 5,
          decoration: BoxDecoration(
              color: Colors.grey[900], borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: _size.width(context) / 3,
                      height: _size.height(context) / 5.9,
                      child: AspectRatio(
                        aspectRatio: 1.02,
                        child: Image.asset(
                          offres.image,
                          width: _size.width(context),
                          height: _size.height(context),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          offres.title,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Limited-time Coffee for you!",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(255, 224, 178, 1)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            "Lorem opusem \nLorem opusemLorem\nopusemLorem opusem Lorem",
                            style: TextStyle(
                                fontSize: 11.5, color: Colors.white54),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
