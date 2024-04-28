import 'package:flutter/material.dart';

import '../../../../core/responsive/responsive.dart';
import '../../../global/widgets/un_focus_keyboard_w.dart';
import 'widgets/chat_bar_w.dart';
import 'widgets/chat_input_w.dart';
import 'widgets/my_message_w.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive(context);

    return Scaffold(
      appBar: ChatBarW.chatbar(
        responsive: responsive,
        name: 'Christian Campodonico',
      ),
      body: UnFocusKeyboardW(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                padding: EdgeInsets.only(
                  right: responsive.bwh(2),
                ),
                itemCount: 100,
                itemBuilder: (context, index) {
                  return MyMessageW(
                    responsive: responsive,
                    message: 'Hola soy el que lo llamo para ver la casa',
                    estate: index % 2 == 0,
                  );
                },
              ),
            ),
            ChatInputW(
              responsive: responsive,
            ),
          ],
        ),
      ),
    );
  }
}
