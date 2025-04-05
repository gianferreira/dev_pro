import 'package:aprovacao/features/certifications/list/domain/entities/certification_entity.dart';
import 'package:aprovacao/features/certifications/list/presentation/widgets/certification_button.dart';
import 'package:aprovacao/features/user/signup/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';

class CertificationItem extends StatelessWidget {
  const CertificationItem({
    super.key,
    required this.certification,
    required this.user,
  });

  final CertificationEntity certification;
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            top: 24.0,
            left: 16.0,
            right: 16.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              border: Border(
                left: BorderSide(color: Colors.white, width: 0.5),
                right: BorderSide(color: Colors.white, width: 0.5),
                top: BorderSide(color: Colors.white, width: 0.5),
              ),
              color: Colors.transparent,
            ),
            child: Column(
              children: <Widget>[
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight:  Radius.circular(12.0),
                      ),
                      child: Image.asset(
                        'assets/cea.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          const SizedBox(height: 70.0),
                          Text(
                            certification.subtitle,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 18.0,
                              height: 1.0,
                              fontFamily: 'MyriadProRegular',
                              fontWeight: FontWeight.bold,
                              decorationColor: Colors.black,
                              decorationThickness: 2.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            certification.title,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 72.0,
                              height: 1.2,
                              fontFamily: 'MyriadProRegular',
                              fontWeight: FontWeight.bold,
                              decorationColor: Colors.black,
                              decorationThickness: 2.0,
                              color: Colors.white
                            ),
                          ),
                          const SizedBox(height: 12.0),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 24.0,
          ),
          child: CertificationButton(
            text: 'Acessar Módulos',
            onPressed: () {
              print('vrau');
            },
          ),
        ),
      ],
    );
  }
}
