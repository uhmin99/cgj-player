import "package:flutter/material.dart";

class MusicImage extends StatelessWidget {
  MusicImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(alignment: AlignmentDirectional.center, children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset(
                      "resource/img/LP.png",
                    ),
                  )
                ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset("resource/img/joohomin_profile.png"),
                )
              ],
            )
          ])
        ]);
  }
}
