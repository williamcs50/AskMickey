/*
 Project: AskMickey
 File: dining.dart
 Last Revised: September 09, 2024

 This file contains the Dining class, which handles dining-related queries
 in the AskMickey application. It processes user prompts about specific menu items,
 searches through dining information, and generates responses using a language model.

 The Dining class interacts with the GeminiService for natural language processing
 and utilizes various string constants and dining information data.

 ## Key Components:
 - Dining: Main class handling dining-related functionality
 - GeminiService: Language model service for generating responses
 - PromptResult: Data structure for returning query results

 ## Key Methods:
 - execute: Main method for processing dining queries
 - _extractSpecificItem: Extracts specific menu items from user prompts
 - _searchDiningInformation: Searches dining data for relevant information
 - _buildBlock: Constructs information blocks containing dining details

 ## Needle in Haystack Functionality:
 This module implements several "needle in haystack" search functions to efficiently
 locate and extract specific dining information from a large dataset:

 1. Specific Item Extraction (_extractSpecificItem):
    - Acts as an initial "needle in haystack" search
    - Uses the GeminiService to intelligently extract the specific menu item
      from the user's original prompt
    - Crucial for focusing subsequent searches on relevant information

 2. Dining Information Search (_searchDiningInformation):
    - Performs a case-insensitive search for the extracted specific item
      within the entire dining information database
    - Iterates through each line of the database, identifying all occurrences
      of the specific item
    - For each match found, it triggers the block building process

 3. Context Block Building (_buildBlock):
    - For each match found, this function performs two "needle in haystack" searches:
      a. Backward search for the nearest "restaurant" keyword
      b. Forward search to include relevant lines after the match
    - Constructs an information block that includes:
      - Up to 5 lines before the "restaurant" keyword
      - All lines between the "restaurant" keyword and the matching item
      - The line containing the matching item
      - Up to 3 lines after the matching item
    - This ensures that each block contains both the restaurant context and
      the specific item details

 4. Block Aggregation and Formatting:
    - Combines all constructed blocks into a single string
    - Adds headers to each block indicating its sequence number and the total
      number of blocks found

 These "needle in haystack" functions work together to efficiently extract and
 structure relevant dining information from a large dataset, enabling the
 application to provide accurate and context-rich responses to user queries.

 ## Relationships with Other Files:
 - llm_gemini.dart: Provides the GeminiService for language model interactions
 - string_constants.dart: Contains constant strings used in prompts
 - dining_information_string.dart: Stores the dining information database
 - prompt_category.dart: Defines the PromptResult structure

 ## Overall Functionality:
 - Processes user queries about specific menu items
 - Extracts relevant information from a dining information database
 - Generates context-aware responses using a language model
 - Formats dining information into structured blocks for easier processing
 - Handles cases where restaurant information might be separated from menu items

 This module is crucial for providing accurate and relevant dining information
 to users of the AskMickey application, enhancing their Disney World experience.
 The implemented "needle in haystack" functions ensure efficient and precise
 information retrieval, even from large and complex datasets.
*/

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'llm_gemini.dart';
import 'string_constants.dart';
import 'dining_information_string.dart';
import 'prompt_category.dart';
import 'dart:math';

class Dining {
  // Initialize the GeminiService for language model interactions
  final GeminiService _llm = GeminiService();

  // Constants for constructing the prompt to extract the specific item
  static const String nIHprepend = '''You are an intelligent, friendly, useful, informative host to guests of DisneyWorld in Orlando, Florida who has the voice and personality of Mickey Mouse. You take sufficient time in planning your responses and fact-checking all information. You just received a guest prompt which we have categorized as related to Dining Information where the guest is looking for information about a specific menu item. Please review the prompt and extract this specific item and return it in your response to this query. respond with only the specific item. Your response will be utilized by software so respond only with the specific item and no additional narrative. The original prompt is as follows: "''';

  static const String nIHpostpend = '''". Importantly, the specific item we are looking for is : ''';

  // Main method to process dining queries
  Future<PromptResult> execute(String originalPrompt) async {
    debugPrint('Original prompt: $originalPrompt');

    // Extract the specific menu item from the original prompt
    String specificItem = await _extractSpecificItem(originalPrompt);
    debugPrint('Extracted specific item: $specificItem');

    // Search for matching information blocks in the dining database
    String matchingBlocks = _searchDiningInformation(specificItem);
    debugPrint('Matching blocks: $matchingBlocks');

    // Constant string to ensure all relevant information is included in the response
    const String checkAgain = '''Since it is critical all specific items mentioned in the original prompt are found, make sure to include information from each of the following matching blocks before you respond: ''';

    // Construct the combined prompt for the language model
    String combinedPrompt = '$DiningPrepend $originalPrompt $DiningPostpend $matchingBlocks $diningInformation $checkAgain $matchingBlocks';   

    // Generate a response using the language model
    String initialResponse = await _llm.generateResponse(combinedPrompt, numberOfLLMIterations: 3);
    debugPrint('Generated initial response: $initialResponse');

    // Constant string to add additional search information
    String addSearchInfo = '''Respond utilizing only the following information which has been verified to be accurate. Take the aforementioned query result then, maintaining a consistent tone, and combine information specifically pertaining to the intial query's specific search item "$specificItem" from the following information derived from word search to produce a cohesive well structured response.''';

    // Combine the initial response with the additional search information
    String finalPrompt = '$initialResponse $addSearchInfo $matchingBlocks';
    debugPrint('******Final prompt with addSearchInfo: $finalPrompt');

    // Generate the final response using the language model
    String finalResponse = await _llm.generateResponse(finalPrompt, numberOfLLMIterations: 1);
    debugPrint('Generated final response: $finalResponse');
    
    // Set additional properties for the PromptResult
    bool showButtons = false;
    String? url;

    // Return the final result
    return PromptResult(response: finalResponse, showButtons: showButtons, url: url);
  }

  // Method to extract the specific menu item from the original prompt
  Future<String> _extractSpecificItem(String originalPrompt) async {
    // Construct the prompt for the language model
    String nihPrompt = '$nIHprepend $originalPrompt $nIHpostpend';
    debugPrint('NIH prompt: $nihPrompt');

    // Use the language model to extract the specific item
    String specificItem = await _llm.generateResponse(nihPrompt, numberOfLLMIterations: 1);
    return specificItem.trim();
  }

  // Method to search for the specific item in the dining information database
  String _searchDiningInformation(String specificItem) {
    debugPrint('Searching for specific item: $specificItem');
    // Split the dining information into lines
    List<String> lines = diningInformation.split(RegExp(r'\n|\\n'));
    List<String> matchingBlocks = [];

    // Iterate through each line of the dining information
    for (int i = 0; i < lines.length; i++) {
      // Perform a case-insensitive search for the specific item
      if (lines[i].toLowerCase().contains(specificItem.toLowerCase())) {
        debugPrint('Match found on line ${i + 1}: ${lines[i]}');
        // Build an information block for each match
        String block = _buildBlock(lines, i);
        if (block.isNotEmpty) {
          matchingBlocks.add(block);
        }
      }
    }

    // Construct the result string with numbered blocks
    int totalBlocks = matchingBlocks.length;
    String result = '';
    for (int i = 0; i < totalBlocks; i++) {
      result += 'Built block ${i + 1} of a total of $totalBlocks blocks of information containing requested item:\n';
      result += '${matchingBlocks[i]}\n\n';
    }

    debugPrint('Number of matching blocks found: $totalBlocks');
    return result;
  }

  // Method to build an information block around a matched item
 String _buildBlock(List<String> lines, int matchIndex) {
  // Search backwards for the nearest "restaurant" line
  int restaurantIndex = matchIndex;
  while (restaurantIndex >= 0 && !lines[restaurantIndex].toLowerCase().contains('restaurant')) {
    restaurantIndex--;
  }

  // If no restaurant line is found, return an empty string
  if (restaurantIndex < 0) {
    debugPrint('Warning: No "restaurant" line found for match at line ${matchIndex + 1}');
    return ''; 
  }

  // Calculate the start index for the restaurant section
  int restaurantStartIndex = max(0, restaurantIndex - 5);
  
  // Calculate the end index for the restaurant section
  int restaurantEndIndex = min(lines.length, restaurantIndex + 11);

  // Calculate the start index for the match section
  int matchStartIndex = max(0, matchIndex - 10);
  
  // Calculate the end index for the match section to include 4 lines after the match
  int matchEndIndex = min(lines.length, matchIndex + 5); // 4 lines after the match + 1 for the match line itself

  // Extract the restaurant section
  List<String> restaurantSection = lines.sublist(restaurantStartIndex, restaurantEndIndex);
  
  // Extract the match section
  List<String> matchSection = lines.sublist(matchStartIndex, matchEndIndex); // Updated to use matchEndIndex

  // Combine the sections with a separator
  String block = '${restaurantSection.join('\n')}\n...\n${matchSection.join('\n')}';
  
  debugPrint('Built block of information containing requested item:\n$block');
  return block;
}
}