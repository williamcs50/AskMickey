import 'prompt_category.dart';
import 'llm_gemini.dart';

// Handles system administrations tasks 
class SystemAdministration {
  // Instance of GeminiService for AI model interactions and data retrieval
  final GeminiService _llm;

  // Constructor initializes the SystemAdministration with a GeminiService instance
  SystemAdministration(this._llm);


  // Executes system administration commands based on user input
  Future<PromptResult> execute(String input) async {
    switch (input.toLowerCase().trim()) {
      case 'system administration response history':
        return await _getResponseHistory();
      // Add more system administration commands here in the future
      default:
        return PromptResult(response: "Unknown system administration command");
    }
  }
  
  // Retrieves the response history from GeminiService
  Future<PromptResult> _getResponseHistory() async {
    String history = await _llm.getResponseHistory();
    return PromptResult(response: history);
  }
}