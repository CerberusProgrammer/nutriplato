import 'dart:io';

import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: constraints.maxHeight / 4,
                  child: Card(
                    color: Colors.purple,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            child: CircleAvatar(
                              radius: constraints.maxHeight / 10,
                              child: const Text('JJ'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Jacqueline Juárez',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (Platform.isAndroid) {
                          const url =
                              'https://www.instagram.com/jacqueline_juarezc/';
                          const intent = AndroidIntent(
                            action: 'action_view',
                            data: url,
                          );
                          intent.launch();
                        }
                      },
                      icon: const Icon(Icons.camera),
                    ),
                    IconButton(
                        onPressed: () {
                          const url =
                              'https://api.whatsapp.com/send?phone=526865438402';
                          const intent = AndroidIntent(
                            action: 'action_view',
                            data: url,
                          );
                          intent.launch();
                        },
                        icon: const Icon(Icons.phone)),
                  ],
                ),
              ],
            );
          },
        ));
  }
}
