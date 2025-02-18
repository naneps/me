import 'package:flutter/material.dart';
import 'package:me/shared/widgets/gemini_service.dart';

class ChatProvider extends ChangeNotifier {
  final TextEditingController controller = TextEditingController();
  final List<String> _messages = [
    "Hi, I'm Nande 👋",
    "Ask me anything about Nande!",
  ];
  final GeminiService _geminiService;

  ChatProvider(this._geminiService); // Inject GeminiService

  List<String> get messages => _messages;

  Future<void> sendMessage() async {
    if (controller.text.isNotEmpty) {
      String userMessage = "You: ${controller.text}";
      _messages.add(userMessage);
      notifyListeners();

      String? response = await _geminiService.sendMessage(controller.text);
      String botMessage = "Nande: ${response ?? "I'm not sure about that."}";

      _messages.add(botMessage);
      controller.clear();
      notifyListeners();
    }
  }
}
