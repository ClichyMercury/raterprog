import 'package:flutter/material.dart';

GestureDetector Homebull(
    {IconData? iconmod,
    Color? iconcolor,
    double? iconsize,
    String? Titre,
    Color? titrecolor,
    double? titresize,
    String? desc,
    Color? desccolor,
    double? descsize,
    Color? containercolor,
    Color? boxcolor,
    double? widthcontainer,
    double? heightContainer,
    double? rad,
    Widget? lien,
    context}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context!).pushReplacement(
        MaterialPageRoute(
          builder: (_) => lien!,
        ),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: containercolor,
        border: Border.all(color: boxcolor!),
        borderRadius: BorderRadius.circular(rad!),
      ),
      height: heightContainer,
      width: widthcontainer,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            iconmod,
            color: iconcolor,
            size: iconsize,
          ),
          Visibility(
            visible: Titre == null ? false : true,
            child: Text(
              Titre == null ? '' : Titre,
              style: TextStyle(color: titrecolor, fontWeight: FontWeight.bold),
            ),
          ),
          Visibility(
            visible: Titre == null ? false : true,
            child: Text(
              desc == null ? '' : desc,
              style: TextStyle(color: desccolor, fontSize: descsize),
            ),
          )
        ]),
      ),
    ),
  );
}
