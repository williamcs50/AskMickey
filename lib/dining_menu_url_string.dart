/*
 Project: AskMickey
 File: dining_menu_url_string.dart
 Last Revised: September 05, 2024

 This file contains a constant string that stores a collection of restaurant
 information for Disney World's EPCOT park. Each entry includes the restaurant's
 name and a direct link to its menu on the official Disney World website.

 The [DiningMenuUrl] constant is a multi-line string that contains JSON-like
 data structures for each restaurant. This data is used throughout the AskMickey
 application to provide users with accurate and up-to-date menu information.

 ## Key Components:
 - DiningMenuUrl: A constant string containing restaurant data

 ## Data Structure:
 Each restaurant entry is formatted as a JSON object with two fields:
 - "restaurant": The name of the restaurant
 - "menu_link": The URL to the restaurant's menu on the Disney World website

 ## Relationships with Other Files:
 - menu.dart: Uses this data to fetch and provide menu information to users
 - dining.dart: Utilizes this information for general dining-related queries
 - prompt_category.dart: Indirectly uses this data when processing dining-related prompts
 - main_conversation_screen.dart: Accesses this data through menu and dining functionalities
 - url_launcher.dart: Used in conjunction with the menu_link URLs to open menus in a browser
*/

// Constant string containing restaurant and menu URL information

const String diningMenuUrl = '''
[
  {
    "restaurant": "Rose & Crown Dining Room",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/rose-and-crown-dining-room/menus/"
  },
  {
    "restaurant": "50's Prime Time Café",
    "menu_link": "https://disneyworld.disney.go.com/dining/hollywood-studios/50s-prime-time-cafe/menus"
  },
  {
    "restaurant": "Coral Reef Restaurant",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/coral-reef-restaurant/menus"
  },
  {
    "restaurant": "Teppan Edo",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/teppan-edo/menus"
  },
  {
    "restaurant": "Rose & Crown Dining Pub",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/rose-and-crown-pub/menus/"
  },
  {
    "restaurant": "Akershus Royal Banquet Hall",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/akershus-royal-banquet-hall/menus"
  },
  {
    "restaurant": "La Hacienda de San Angel",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/hacienda-de-san-angel/menus"
  },
  {
    "restaurant": "Connections Eatery",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/connections-eatery/menus"
  },
  {
    "restaurant": "Space 220 Restaurant",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/space-220/menus"
  },
  {
    "restaurant": "Les Halles Boulangerie-Patisserie",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/les-halles-boulangerie-patisserie/menus"
  },
  {
    "restaurant": "San Angel Inn Restaurantee",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/san-angel-inn-restaurante/menus"
  },
  {
    "restaurant": "Regal Eagle Smokehouse",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/regal-eagle-smokehouse/menus"
  },
  {
    "restaurant": "La Cantina de San Angel",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/cantina-de-san-angel/menus"
  },
  {
    "restaurant": "Lotus Blossom Café",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/lotus-blossom-cafe/menus"
  },
  {
    "restaurant": "Takumi-Tei",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/takumi-tei-restaurant/menus"
  },
  {
    "restaurant": "Fife & Drum Tavern",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/fife-and-drum-tavern/menus"
  },
  {
    "restaurant": "Katsura Grill",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/katsura-grill/menus"
  },
  {
    "restaurant": "Chefs de France",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/chefs-de-france/menus"
  },
  {
    "restaurant": "Via Napoli Ristorante e Pizzeria",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/via-napoli/menus"
  },
  {
    "restaurant": "Biergarten Restaurant",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/biergarten-restaurant/menus"
  },
  {
    "restaurant": "Sunshine Seasons",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/sunshine-seasons/menus"
  },
  {
    "restaurant": "Shiki-Sai: Sushi Izakaya",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/shiki-sai-izakaya-and-sushi/menus"
  },
  {
    "restaurant": "Kringla Bakeri Og Kafe",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/kringla-bakeri-og-kafe/menus"
  },
  {
    "restaurant": "Nine Dragons Restaurant",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/nine-dragons-restaurant/menus"
  },
  {
    "restaurant": "Monsieur Paul",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/monsieur-paul/menus"
  },
  {
    "restaurant": "Le Cellier Steakhouse",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/le-cellier-steakhouse/menus"
  },
  {
    "restaurant": "Tutto Italia Ristorante",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/tutto-italia-ristorante/menus"
  },
  {
    "restaurant": "La Crêperie de Paris",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/creperie-de-paris/menus"
  },
  {
    "restaurant": "Yorkshire County Fish Shop",
    "menu_link": "https://disneyworld.disney.go.com/dining/epcot/yorkshire-county-fish-shop/menus"
  }
]


''';