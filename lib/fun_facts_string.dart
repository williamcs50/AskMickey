/*
 Project: AskMickey
 File: fun_facts_string.dart
 Last Revised: September 05, 2024

 This file contains a constant string that stores a collection of fun facts
 about Walt Disney World. These facts cover various aspects of the parks,
 including operations, attractions, and interesting trivia.

 The [FunFacts] constant is a multi-line string that provides entertaining
 and informative tidbits about Disney World. This data is used throughout
 the AskMickey application to enhance user engagement and provide interesting
 responses to general queries about the parks.

 ## Key Components:
 - FunFacts: A constant string containing various fun facts about Disney World

 ## Data Structure:
 The fun facts are stored as a series of text entries, each containing a brief
 title or category followed by the fact itself.

 ## Relationships with Other Files:
 - fun_facts.dart: Uses this data to provide responses to fun fact requests
 - main_conversation_screen.dart: Accesses these facts for general Disney World queries
 - prompt_category.dart: Utilizes this information when processing general knowledge prompts
 - llm_gemini.dart: May incorporate these facts into AI-generated responses
 - string_constants.dart: Ensures consistent naming and referencing of this constant
*/

// Constant string containing fun facts about Walt Disney World

const String $FunFacts = '''
Fireworks Usage: The Walt Disney Company is the largest consumer of fireworks in the world and the second-largest consumer of explosive devices, behind the U.S. Department of Defense.
Trash Management: At Disney World, trash bins are strategically placed no more than 30 steps apart. Walt Disney himself determined this distance by observing how long people would hold onto trash before dropping it.
Cinderella Castle Construction: Despite its grand appearance, Cinderella Castle in Magic Kingdom contains no stones. The entire structure is made of fiberglass.
Size and Employment: Walt Disney World Resort covers nearly 40 square miles, roughly the size of San Francisco or two Manhattan islands. It employs over 70,000 cast members, making it the largest single-site employer in the United States.
Laundry Operations: The laundry facilities at Walt Disney World handle an enormous volume, washing and drying as much laundry in a single day as a household would in 52 years. This includes an average of 285,000 pounds of laundry and 30,000 to 32,000 garments dry-cleaned daily.
Haunted Mansion Wait Time: If the wait time for the Haunted Mansion is listed as 13 minutes, it means there is no wait. This is a playful joke from the attraction's "ghostly" residents.
Alcohol Policy: Magic Kingdom was once alcohol-free but began serving beer and wine at the Be Our Guest Restaurant in 2012. As of 2023, alcohol is available at all table service restaurants in Magic Kingdom, though it cannot be carried around the park.
Hidden Mickey: When Disney's Hollywood Studios opened in 1989, the entire park was designed to form a giant Hidden Mickey, visible from above.
Christmas Decorations: Walt Disney World uses over 700,000 LED lights for its Christmas decorations, which would stretch for 96 miles if laid end to end, using only a tenth of the power of traditional incandescent bulbs.
Expedition Everest: The tallest attraction at Walt Disney World is Expedition Everest at Disney’s Animal Kingdom, standing just under 200 feet tall.
Massive and Magical: Spanning nearly 40 square miles, Walt Disney World is roughly the size of San Francisco! That's a lot of space for castles, rides, and adventures.
Hidden Mickeys: Keep your eyes peeled for Mickey Mouse silhouettes hidden throughout the parks. They're everywhere, from windows to landscaping!
Massive and Magical: Spanning nearly 40 square miles, Walt Disney World is roughly the size of San Francisco! That's a lot of space for castles, rides, and adventures.
Hidden Mickeys: Keep your eyes peeled for Mickey Mouse silhouettes hidden throughout the parks. They're everywhere, from windows to landscaping!
Subterranean Secrets: There's a whole network of tunnels under the Magic Kingdom. These secret passageways allow Cast Members (Disney employees) to move around efficiently without interrupting guests' fun.
Never Thirsty (or Hungry): You're never more than 30 feet from a trash bin or a food vendor at Disney World. Staying hydrated and fueled for a day of magic is easy!
International Flags (Almost): The American flags you see lining the streets are actually not real US flags! They have less than 50 stars because real flags can't be altered.
Camo Cast Members: Disney has a special color called "Go Away Green" that they use to blend things into the background. It's a sneaky way to make some elements disappear from sight!
Feline Fun Fact: Though not seen by guests, Disney actually employs around 100 cats to help with pest control! They keep the parks rodent-free in a meow-gical way.
Ears for Everyone: Every year, Disney sells enough Mickey Mouse ear hats to stretch for 175 miles! That's a lot of headwear for happy Disney fans.
A Cast of Thousands: With over 70,000 Cast Members, Disney World is the largest single-site employer in the United States. It takes a huge team to create the magic!
Hollywood Forever: When you walk down Hollywood Boulevard at Disney's Hollywood Studios, you're actually walking on a slant. The buildings are built with a forced perspective technique, making them appear larger at the back of the street.
''';