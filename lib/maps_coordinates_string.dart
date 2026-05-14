/*
 Project: AskMickey
 File: map_coordinates_string.dart
 Last Revised: September 05, 2024

 This file contains a constant string that stores geographical coordinates
 for various attractions and restrooms in EPCOT at Walt Disney World.

 The [MapCoordinates] constant is a multi-line string that provides precise
 latitude and longitude data for key locations within EPCOT. This data is
 crucial for location-based services and mapping functionalities throughout
 the AskMickey application.

 ## Key Components:
 - MapCoordinates: A constant string containing JSON-formatted location data

 ## Data Structure:
 The data is structured as a JSON object with nested arrays for attractions
 and restrooms, each containing objects with name, latitude, and longitude.

 ## Relationships with Other Files:
 - maps.dart: Directly uses this data for generating maps and calculating distances
 - nearest_restroom.dart: Utilizes restroom coordinates to find the closest facilities
 - location_service.dart: Integrates this data with real-time user location information
 - attraction_info.dart: Correlates attraction information with these coordinates
 - main_conversation_screen.dart: Indirectly uses this data for location-based queries
 - prompt_category.dart: Helps in processing location-related prompts
*/

// Constant string containing geographical coordinates for EPCOT attractions and restrooms

const String mapCoordinates = '''
{
  "Epcot": {
    "Attractions": [
      {
        "name": "Spaceship Earth",
        "latitude": 28.375278,
        "longitude": -81.549444
      },
     {
        "name": "Test Track",
        "latitude": 28.37318187821735,
        "longitude": -81.54747145506377
      },
      {
        "name": "Journey into Imagination with Figment",
        "latitude": 28.372858,
        "longitude": -81.551406
      },
      {
        "name": "Mission: Space",
        "latitude": 28.373889,
        "longitude": -81.546667
      },
      {
        "name": "Guardians of the Galaxy: Cosmic Rewind",
        "latitude": 28.374599,
        "longitude": -81.547877
      },
      {
        "name": "Living with the Land",
        "latitude": 28.373881,
        "longitude": -81.552886
      },
      {
        "name": "Soarin'",
        "latitude": 28.37364603499719,
        "longitude": -81.55211952826275
      },
      {
        "name": "The Seas with Nemo & Friends",
        "latitude": 28.37489851,
        "longitude": -81.5506811
      },
      {
        "name": "Turtle Talk with Crush",
        "latitude": 28.37516384,
        "longitude": -81.55055478
      },
      {
        "name": "Gran Fiesta Tour Starring The Three Caballeros",
        "latitude": 28.37203213,
        "longitude": -81.54698942
      },
      {
        "name": "Frozen Ever After",
        "latitude": 28.37071211,
        "longitude": -81.54652563
      },
      {
        "name": "Reflections of China",
        "latitude": 28.36988751,
        "longitude": -81.54628707
      },
      {
        "name": "The American Adventure",
        "latitude": 28.36760156,
        "longitude": -81.54938156
      },
      {
        "name": "Impressions de France",
        "latitude": 28.36875232,
        "longitude": -81.55315816
      },
      {
        "name": "Remy's Ratatouille Adventure",
        "latitude": 28.36826438,
        "longitude": -81.55306842
      },
      {
        "name": "Canada Far and Wide",
        "latitude": 28.37161701,
        "longitude": -81.55158533
      },
      {
        "name": "Luminous: The Symphony of Us",
        "latitude": 28.37006677,
        "longitude": -81.54942805
      },
      {
        "name": "The British Revolution",
        "latitude": 28.37055465,
        "longitude": -81.55239051
      }
    ],
    "Restrooms": [
      {
        "name": "World Nature Restrooms",
        "latitude": 28.37364,
        "longitude": -81.55051
      },
      {
        "name": "Spaceship Earth West Restrooms",
        "latitude": 28.37528,
        "longitude": -81.5498
      },
      {
        "name": "Spaceship Earth East Restrooms",
        "latitude": 28.37528,
        "longitude": -81.54899
      },
      {
        "name": "The Seas with Nemo and Friends Restrooms",
        "latitude": 28.37578,
        "longitude": -81.5516
      },
      {
        "name": "Main Entrance West Restrooms",
        "latitude": 28.37649,
        "longitude": -81.55082
      },
      {
        "name": "Connections Eatery Restrooms",
        "latitude": 28.37449915,
        "longitude": -81.54843441
      },
      {
        "name": "World Discovery Restrooms",
        "latitude": 28.37363303,
        "longitude": -81.54824398
      },
      {
        "name": "The Land 2nd Floor Restrooms",
        "latitude": 28.37380865,
        "longitude": -81.55266566
      },
      {
        "name": "The Land 1st Floor Restrooms",
        "latitude": 28.37361017,
        "longitude": -81.55217689
      },
      {
        "name": "Odyssey Center Restrooms",
        "latitude": 28.37209487,
        "longitude": -81.54789994
      },
      {
        "name": "Norway Restrooms",
        "latitude": 28.37077912,
        "longitude": -81.54699791
      },
      {
        "name": "Germany Restrooms",
        "latitude": 28.36810813,
        "longitude": -81.54730903
      },
      {
        "name": "The American Adventure Restrooms",
        "latitude": 28.36763836,
        "longitude": -81.54976677
      },
      {
        "name": "Morocco Restrooms",
        "latitude": 28.36836596,
        "longitude": -81.55198495
      },
      {
        "name": "France Restrooms",
        "latitude": 28.36867921,
        "longitude": -81.55354307
      },
      {
        "name": "International Gateway Restrooms",
        "latitude": 28.36982658,
        "longitude": -81.55316533
      },
      {
        "name": "United Kingdom Restrooms",
        "latitude": 28.37072818,
        "longitude": -81.55181629
      },
      {
        "name": "Rose Walk Restrooms",
        "latitude": 28.37196722,
        "longitude": -81.55037942
      },
      {
        "name": "Imagination Restrooms",
        "latitude": 28.37293578,
        "longitude": -81.55151003
      }
    ]
  }
}
''';
