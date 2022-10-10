import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/screens/Certificates/certificatesdesktop.dart';
import 'package:flutter_portfolio_app/screens/Certificates/certificatesmobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Certificates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CertificatesMobile(),
      tablet: CertificatesMobile(),
      desktop: CertificatesDesktop(),
    );
  }
}
