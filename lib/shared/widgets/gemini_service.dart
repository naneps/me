import 'dart:io';

import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:me/core/bot.dart';

class GeminiService {
  final List<Content> _history = []; // Menyimpan riwayat chat
  late final ChatSession _chat;

  GeminiService(String apiKey) {
    final model = GenerativeModel(
      model: 'gemini-1.5-pro',
      apiKey: apiKey,
      generationConfig: GenerationConfig(
        temperature: 1,
        topK: 40,
        topP: 0.95,
        maxOutputTokens: 10000,
        responseMimeType: 'text/plain',
      ),
      systemInstruction: Content.system(instruction),
    );
    _chat = model.startChat(history: []);
  }

  void clearHistory() {
    _history.clear(); // Hapus riwayat jika ingin reset percakapan
  }

  Future<String?> sendMessage(String message) async {
    try {
      final content = Content.text(message);
      _history.add(content); // Tambahkan pesan ke riwayat
      final response = await _chat.sendMessage(content);

      // Convert GenerateContentResponse to Content
      final responseContent = Content.text(response.text!);
      _history.add(responseContent);

      return response.text;
    } catch (e) {
      stderr.writeln('Error: $e');
      return null;
    }
  }
}
