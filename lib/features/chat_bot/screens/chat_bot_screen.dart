import 'package:flutter/material.dart';
import 'package:me/providers/chat_bot_provider.dart';
import 'package:me/providers/core_provider.dart';
import 'package:me/shared/widgets/gemini_service.dart';
import 'package:provider/provider.dart';

class ChatBotScreen extends StatelessWidget {
  const ChatBotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ChatProvider(context.read<GeminiService>()),
      child: Container(
        width: 350,
        height: 400,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          border: Border.all(color: Theme.of(context).dividerColor),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Consumer<ChatProvider>(
          builder: (context, chatProvider, child) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(radius: 20),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hey, I'm Nande 👋",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Text(
                            "Ask me anything ma bosss",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Provider.of<CoreProvider>(context).toggleChat();
                      },
                    ),
                  ],
                ),
                Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: chatProvider.messages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Align(
                          alignment:
                              chatProvider.messages[index].startsWith("You:")
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  chatProvider.messages[index].startsWith(
                                        "You:",
                                      )
                                      ? Theme.of(context).colorScheme.surface
                                      : Theme.of(context).colorScheme.onSurface,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              chatProvider.messages[index],
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium?.copyWith(
                                color:
                                    chatProvider.messages[index].startsWith(
                                          "You:",
                                        )
                                        ? Theme.of(
                                          context,
                                        ).colorScheme.onSurface
                                        : Theme.of(context).colorScheme.surface,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: chatProvider.controller,
                        decoration: InputDecoration(
                          hintText: "Ask me something...",
                          hintStyle: TextStyle(color: Colors.grey[500]),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          filled: true,
                          fillColor:
                              Theme.of(
                                context,
                              ).colorScheme.surfaceContainerHighest,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      onPressed: chatProvider.sendMessage,
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
