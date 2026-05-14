/*
 Project: AskMickey
 File: dining_information_string.dart
 Last Revised: September 01, 2024

 This file contains a constant string that stores detailed information about
 dining options at Disney World's EPCOT park. The information includes
 restaurant names, locations, menu items, prices, and other relevant details.

 The [DiningInformation] constant is a multi-line string that provides
 comprehensive data about EPCOT's dining establishments. This data is used
 throughout the AskMickey application to provide users with accurate and
 detailed information about dining options.

 ## Key Components:
 - DiningInformation: A constant string containing detailed dining data

 ## Data Structure:
 The information is structured as a JSON array, with each restaurant represented
 as a JSON object containing nested objects and arrays for menu categories.

 ## Relationships with Other Files:
 - dining.dart: Uses this data to provide detailed responses about EPCOT dining options
 - menu.dart: Accesses specific menu information from this data
 - main_conversation_screen.dart: Utilizes this data through dining-related queries
 - prompt_category.dart: Processes dining-related prompts using this information
 - string_constants.dart: May reference this file for consistent naming conventions
*/

// Note: make sure $ are escaped, i.e. not: $   must be: \$

// Constant string containing detailed information about EPCOT dining options

// Note: make sure $ are escaped, i.e. not: $   must be: \$

const String diningInformation = '''
[
{
  "restaurant": "Rose & Crown Dining Room",
  "location": "EPCOT, World Showcase",
  "type": "Casual Dining",
  "coordinates": "28°22′13″N 81°33′07″W",
  "pricing": "\$ (\$15 to \$34.99 per adult)",
  "menu link": "https://disneyworld.disney.go.com/dining/epcot/rose-and-crown-dining-room/menus",
  "menu": {
    "appetizers": [
      {
        "name": "Coronation Salad",
        "description": "Crisp Salad with Madras Dressing on top of a Crunchy Grain Cracker",
        "price": "\$13.00"
      },
      {
        "name": "Scotch Egg",
        "description": "Golden-fried Hard-boiled Cage-free Egg wrapped in Sausage with Mustard Sauce",
        "price": "\$15.00"
      }
    ],
    "entrees": [
      {
        "name": "Fish and Chips",
        "description": "“Rose & Crown’s Signature Dish” Beer-battered and served with Tartar Sauce",
        "price": "\$28.00"
      },
      {
        "name": "Bangers and Mash",
        "description": "Traditional English Sausage with Colcannon Potatoes, Mushroom, Onion, and Red Wine Demi",
        "price": "\$25.00"
      },
      {
        "name": "Shepherd’s Pie",
        "description": "Ground Beef, Seasonal Vegetables, English Peas, and Mashed Potatoes with Irish Cheddar",
        "price": "\$27.00"
      },
      {
        "name": "Savory Impossible™ Hot Pot",
        "description": "Seasonal Vegetables in a Plant-based Meat Casserole baked with a mashed potato topping (Plant-based)",
        "price": "\$25.00"
      }
    ],
    "desserts": [
      {
        "name": "Sticky Toffee Pudding",
        "description": "Steamed Pudding 'Cake' served with Warm Vanilla Custard and Hot Butter-Rum Sauce",
        "price": "\$9.50"
      },
      {
        "name": "Plant-based Seasonal Gelato",
        "description": "with Seasonal Accompaniment",
        "price": "\$7.75"
      }
    ],
    "kids": {
      "appetizers": [
        {
          "name": "House Salad",
          "description": "with Fat-free Ranch Dressing"
        }
      ],
      "entrees": [
        {
          "name": "Grilled Chicken",
          "description": "Served with Brown Rice, Roasted Carrots and choice of Small Lowfat Milk, Small DASANI® Bottled Water, or Small Minute Maid® Apple Juice",
          "price": "\$15.50"
        },
        {
          "name": "Fish and Chips",
          "description": "Served with choice of Small Lowfat Milk, Small DASANI® Bottled Water, or Small Minute Maid® Apple Juice",
          "price": "\$15.50"
        }
      ],
      "desserts": [
        {
          "name": "Fruit Salad"
        },
        {
          "name": "Plant-based Seasonal Gelato",
          "description": "with Seasonal Accompaniment"
        }
      ]
    },
    "non_alcoholic_beverages": [
      {
        "name": "Specialty Character Drink",
        "description": "Minute Maid® Zero Sugar Lemonade with flavors of Cotton Candy served in a souvenir Character Cup",
        "price": "\$6.50"
      },
      {
        "name": "Assorted Fountain Beverages",
        "description": "Coca-Cola®, Diet Coke®, Coca-Cola® Zero Sugar, Sprite®, Fanta® Orange, Minute Maid® Zero Sugar Lemonade",
        "price": "\$4.79"
      },
      {
        "name": "Iced Tea",
        "price": "\$4.79"
      },
      {
        "name": "Freshly Brewed Joffrey’s Coffee™",
        "price": "\$3.99"
      },
      {
        "name": "Twinings® Hot Tea",
        "price": "\$3.99"
      }
    ],
    "alcoholic_beverages": {
      "ales_lagers_stouts": [
        {
          "name": "Imperial Pint",
          "description": "Bombardier Amber, Smithwick's Ale, Harp Lager, Old Speckled Hen English Pale Ale, Strongbow Hard Cider, or Guinness Stout",
          "price": "\$11.25"
        },
        {
          "name": "Imperial Sampler",
          "description": "Bombardier Amber, Harp Lager, Old Speckled Hen English Pale Ale, and Guinness Stout",
          "price": "\$14.75"
        }
      ],
      "specialty_cocktails": [
        {
          "name": "Indigo Hibiscus",
          "description": "Empress 1908 Gin, Bols Blue Curaçao Liqueur, Minute Maid® Premium Lemonade, Orgeat (Almond), Lemon, and Hibiscus Grenadine",
          "price": "\$16.00"
        },
        {
          "name": "Pimm's Cup",
          "description": "Pimm's No. 1 and Sprite®",
          "price": "\$12.50"
        },
        {
          "name": "Cider and Fireball",
          "description": "Tullamore Dew Irish Whiskey, Fireball Cinnamon Whisky, and Strongbow Cider topped with Ginger Ale",
          "price": "\$15.00"
        },
        {
          "name": "Welsh Dragon",
          "description": "Peach Schnapps Liqueur, Melon Liqueur, Crème de Menthe Liqueur, Orange Juice, and Pineapple Juice",
          "price": "\$13.00"
        },
        {
          "name": "Leaping Leprechaun",
          "description": "Jameson Irish Whiskey, Don Q Cristal Rum, SVEDKA Vodka, Melon Liqueur, and Sweet-and-Sour topped with Sprite®",
          "price": "\$15.00"
        }
      ],
      "flights": [
        {
          "name": "Single Malt Flight",
          "description": "Glenkinchie, Oban, Lagavulin",
          "price": "\$22.50"
        },
        {
          "name": "Johnnie Walker Flight",
          "description": "Black, Gold, 18 yr",
          "price": "\$20.00"
        },
        {
          "name": "The Macallan Flight",
          "description": "12 yr, 15 yr, and 18 yr",
          "price": "\$26.50"
        },
        {
          "name": "Irish Whiskey Flight",
          "description": "Tullamore Dew, Jameson, Bushmills",
          "price": "\$19.00"
        }
      ],
      "scotch_whisky": [
        {
          "name": "Oban 14 yr",
          "price": "\$23.50"
        },
        {
          "name": "The Macallan 12 yr",
          "price": "\$18.50"
        },
        {
          "name": "Lagavulin 16 yr",
          "price": "\$22.50"
        },
        {
          "name": "Glenkinchie 12 yr",
          "price": "\$17.50"
        },
        {
          "name": "The Macallan 18 yr",
          "price": "\$40.50"
        },
        {
          "name": "Johnnie Walker Blue",
          "price": "\$40.50"
        }
      ],
      "cognacs": [
        {
          "name": "Courvoisier VS",
          "price": "\$16.50"
        }
      ],
      "pub_blends": [
        {
          "name": "Golden Imperial Pint",
          "description": "Half Harp Lager and Half Bombardier Amber | Served in a souvenir Stein 16.25",
          "price": "\$11.25"
        },
        {
          "name": "Golden Fox Imperial Pint",
          "description": "Half Old Speckled Hen English Pub Ale and Half Bombardier Amber | Served in a souvenir Stein 16.25",
          "price": "\$11.25"
        },
        {
          "name": "Blacksmith Imperial Pint",
          "description": "Half Smithwick's and Half Guinness Stout | Served in a souvenir Stein 16.25",
          "price": "\$11.25"
        },
        {
          "name": "Half & Half Imperial Pint",
          "description": "Half Harp Lager and Half Guinness Stout | Served in a souvenir Stein 16.25",
          "price": "\$11.25"
        },
        {
          "name": "Bombardier & Guinness Imperial Pint",
          "description": "Half Bombardier Amber and Half Guinness Stout | Served in a souvenir Stein 16.25",
          "price": "\$11.25"
        },
        {
          "name": "Cider & Blackcurrant Imperial Pint",
          "description": "Cider with a shot of Blackcurrant Juice | Served in a souvenir Stein 16.25",
          "price": "\$11.25"
        },
        {
          "name": "Irish Hen Imperial Pint",
          "description": "Half Old Speckled Hen English Pale Ale and Half Guinness Stout | Served in a souvenir Stein 16.25",
          "price": "\$11.25"
        },
        {
          "name": "Shandy Imperial Pint",
          "description": "Half Harp Lager and Half Sprite® | Served in a souvenir Stein 16.25",
          "price": "\$11.25"
        },
        {
          "name": "Snake Bite Imperial Pint

",
          "description": "Half Harp Lager and Half Cider | Served in a souvenir Stein 16.25",
          "price": "\$11.25"
        }
      ]
    }
  }
}
{
  "restaurant": "50's Prime Time Café",
  "location": "Disney's Hollywood Studios",
  "type": "Casual Dining",
  "coordinates": "28°22′13″N 81°33′07″W",
  "pricing": "\$ (\$15 to \$34.99 per adult)",
  "menu link": "https://disneyworld.disney.go.com/dining/hollywood-studios/50s-prime-time-cafe/menus",
  "menu": {
    "appetizers": [
  {
    "section": "Appetizers",
    "items": [
      {
        "name": "Cornbread Skillet",
        "price": "\$10.00",
        "description": "Served with Butter and Honey"
      },
      {
        "name": "Beer-battered Onion Rings",
        "price": "\$13.00",
        "description": "with Horseradish Sauce"
      },
      {
        "name": "Griddled Salmon Cake",
        "price": "\$16.00",
        "description": "Served with Succotash and Dill Sour Cream"
      },
      {
        "name": "Roasted Tomato Soup",
        "price": "\$10.00",
        "description": "Savory Blend of Plum Tomatoes, Onions, Herbs, and garnished with Focaccia Croutons"
      },
      {
        "name": "Cousin Amy's Romaine Wedge Salad",
        "price": "\$12.00",
        "description": "Marinated Tomatoes, Blue Cheese Crumbles, and Roasted Red Pepper Ranch Dressing"
      }
    ]
  },
  {
    "section": "Entrées",
    "items": [
      {
        "name": "Aunt Liz's Golden Fried Chicken",
        "price": "\$26.00",
        "description": "Served with Roasted Garlic Mashed Potatoes, Chicken Gravy, Seasonal Vegetables"
      },
      {
        "name": "Caesar Salad",
        "price": "\$17.00",
        "description": "Romaine tossed with Caesar Dressing and Grated Parmesan. With Chicken \$17 or with Salmon \$19."
      },
      {
        "name": "Sustainable Verlasso Salmon*",
        "price": "\$29.00",
        "description": "Seared Fresh Salmon with Grain Mustard-Beurre Blanc, Fingerling Potatoes with Olive Oil, and Green Beans"
      },
      {
        "name": "Mom's Old-fashioned Pot Roast",
        "price": "\$26.00",
        "description": "Slow-cooked 'til Fork-tender and served with Roasted Garlic-Mashed Potatoes, Brown Gravy, and garnished with Carrots, Celery, and Onions"
      },
      {
        "name": "50's Prime Time Café Blue Plate Special",
        "price": "\$30.00",
        "description": "Seared Pork Chop served with Colcannon Mashed Potatoes and Onion Gravy"
      },
      {
        "name": "A Sampling of Mom's Favorite Recipes",
        "price": "\$30.00",
        "description": "Golden-fried Chicken, Fork Tender Pot Roast, and Traditional Meatloaf with all the fixin's"
      },
      {
        "name": "Cousin Harold's Rigatoni Pasta",
        "price": "\$20.00",
        "description": "Mixed with Vegetables and Chickpeas (Plant-based)"
      },
      {
        "name": "Grandpa Jean's Chicken Pot Pie",
        "price": "\$24.00",
        "description": "A Traditional Pastry Crust Filled with Chicken, Potatoes, Carrots, Celery, Onions, Corn and Peas"
      },
      {
        "name": "Cousin Megan's Traditional Meatloaf",
        "price": "\$24.00",
        "description": "A blend of Beef and Pork topped with Tomato Glaze served with Roasted Garlic-Mashed Potatoes and Green Beans"
      }
    ]
  },
  {
    "section": "Desserts",
    "items": [
      {
        "name": "Dad's Favorite Chocolate-Peanut Butter Layered Cake",
        "price": "\$8.50"
      },
      {
        "name": "Traditional Warm Apple Crisp (Plant-based)",
        "price": "\$8.00"
      },
      {
        "name": "Key Lime Pie",
        "price": "\$9.00",
        "description": "Topped with Whipped Cream and served with a Raspberry Sauce"
      },
      {
        "name": "Grasshopper Bar",
        "price": "\$9.00",
        "description": "Mint white chocolate mousse with chocolate chips on a chocolate chip cookie topped with whip cream and chocolate chips"
      },
      {
        "name": "Dad's Favorite Chocolate-Peanut Butter Layered Cake À la Mode",
        "price": "\$10.50"
      },
      {
        "name": "Traditional Warm Apple Crisp À la Mode",
        "price": "\$10.00"
      },
      {
        "name": "Hummingbird Bundt Cake",
        "price": "\$9.00",
        "description": "Banana, Pineapple, and Pecan Bundt Cake topped with Cream Cheese Icing and served with a Pineapple Compote"
      }
    ]
  },
  {
    "section": "Kids' Appetizers (à la carte)",
    "items": [
      {
        "name": "Garden Salad",
        "price": "\$3.25"
      },
      {
        "name": "Vegetable Platter",
        "price": "\$3.25"
      },
      {
        "name": "Creamy Tomato Soup",
        "price": "\$3.25"
      }
    ]
  },
  {
    "section": "Kids' Create-Your-Own Entrées (choose one)",
    "items": [
      {
        "name": "Goofy's Salmon",
        "price": "\$14.50",
        "description": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice"
      },
      {
        "name": "Grandpa's Grilled Chicken",
        "price": "\$13.50",
        "description": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice"
      },
      {
        "name": "Sloppy Joe Sandwich",
        "price": "\$12.50",
        "description": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice"
      },
      {
        "name": "Aunt Betty's Chicken Strips",
        "price": "\$12.50",
        "description": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice"
      }
    ]
  },
  {
    "section": "Kids' Create-Your-Own Selections (choose two)",
    "items": [
      {
        "name": "Green Beans & Carrots"
      },
      {
        "name": "Stained Glass Dessert"
      }
    ]
  },
  {
    "section": "Non-Alcoholic Specialties",
    "items": [
      {
        "name": "Mickey's Bee Bop Drink",
        "price": "\$8.00",
        "description": "Delicious Cherry-flavored Sprite® with Dad's Glowing Electric Ice Cubes served in a souvenir cup"
      },
      {
        "name": "Flavored Sodas",
        "price": "\$5.29",
        "description": "Coca-Cola® blended with Vanilla or Cherry Flavors. Unlimited Refills!"
      },
      {
        "name": "Freshly Brewed Joffrey's Coffee™™",
        "price": "\$3.99"
      },
      {
        "name": "Chocolate, Vanilla, or Strawberry Milk Shake",
        "price": "\$9.25"
      },
      {
        "name": "Pomegranate Lemonade",
        "price": "\$5.99",
        "description": "Minute Maid® Premium Lemonade with Pomegranate and Lime Juices"
      },
      {
        "name": "Floats",
        "price": "\$7.75",
        "description": "Barq's® Root Beer, Fanta® Orange, or Coca-Cola®"
      },
      {
        "name": "Peanut Butter & Jelly Milk Shake",
        "price": "\$9.25"
      }
    ]
  },
  {
    "section": "From Dad's Liquor Cabinet",
    "items": [
      {
        "name": "Indigo Hibiscus",
        "price": "\$16.00",
        "description": "Empress 1908 Gin, Bols Blue Curaçao Liqueur, Minute Maid® Premium Lemonade, Orgeat (Almond), Lemon, and Hibiscus Grenadine"
      },
      {
        "name": "The Tune-In PBJ Cocktail",
        "price": "\$16.00",
        "description": "Skrewball Peanut Butter Whiskey, Bols Blackberry Brandy, and Baileys Irish Cream Liqueur topped with a Maraschino Cherry"
      },
      {
        "name": "Grandma's Picnic Punch",
        "price": "\$17.00",
        "description": "Grandma concocted a wonderful drink for the family picnic - SVEDKA Vodka, Bols Peach Schnapps Liqueur, Bols Crème de Cassis Liqueur, Minute Maid® Zero Sugar Lemonade, and Pineapple Juice"
      },
      {
        "name": "Dad's Electric Lemonade",
        "price": "\$17.00",
        "description": "Dad whips up an electrifying blue drink with SVEDKA Vodka, Blue Curaçao Liqueur, Sweet-and-Sour, and Sprite®"
      }
    ]
  },
  {
    "section": "Sparkling, Whites, Blush, and Red Wines",
    "items": [
      {
        "name": "Paul Cheneau Lady of Spain Cuvée, Cava, Spain",
        "price": "\$53.00",
        "description": "delicate mousse, hints of apple and apricot and crème with toastiness on the finish."
      },
      {
        "name": "Dr. Loosen, Dr. L. Riesling, Mosel",
        "price": "\$56.00",
        "description": "crisp flavors of white peaches and green apples, bright and refreshing clean finish."
      },
      {
        "name": "Coppo Mocscato d'Asti Moncalvina",
        "price": "\$53.00",
        "description": "Fresh and aromatic on the palate with floral notes along with peach and pear overtones."
      },
      {
        "name": "Benvolio Pinot Grigio, Friuli",
        "price": "\$42.00",
        "description": "light, fresh floral and mineral aromas with refreshing flavors of citrus and green apple, and a clean fresh lemon zest finish."
      },
      {
        "name": "Infamous Goose Sauvignon Blanc, Marlborough",
        "price": "\$49.00",
        "description": "intense aromatics of lime, grapefruit, herbs, fresh apples with racing acidity on the palate."
      },
      {
        "name": "Fess Parker Chardonnay, Santa Barbara County",
        "price": "\$53.00",
        "description": "typical apple and pear aromas with notes of orange blossom and vanilla mingle well with hints of oak."
      },
      {
        "name": "Opici Family White Sangria",
        "price": null,
        "description": "made in La Mancha, Spain from Airen grapes and has flavors of banana, pineapple, and grapefruit with a hint of ginger"
      },
      {
        "name": "Benziger Chardonnay, Carneros",
        "price": "\$49.00",
        "description": "crisp acidity, fresh citrus flavors, and a touch of oak and butterscotch cookie."
      },
      {
        "name": "MacMurray Estate Vineyards Pinot Noir, Russian River Valley",
        "price": "\$70.00",
        "description": "raspberry and cherry cola aromas and flavors are balanced in a silky and long elegant finish."
      },
      {
        "name": "Louis M. Martini Cabernet Sauvignon, Central Coast",
        "price": "\$23.00",
        "description": "layers of red cherry, blackberry, and fresh sage with notes of chocolate and vanilla."
      },
      {
        "name": "Columbia Crest H3 Merlot, Horse Heaven Hills",
        "price": "\$49.00",
        "description": "black cherry and juicy plum notes, balanced with a round velvety texture."
      },
      {
        "name": "Opici Family Red Sangria",
        "price": null,
        "description": "made from 100% natural marriage of Spanish Tempranillo grapes, orange, blood orange, and lemon juice with a touch of natural cinnamon"
      }
    ]
  },
  {
    "section": "Craft and Draft Beer",
    "items": [
      {
        "name": "Bud Light Lager",
        "price": "\$8.75"
      },
      {
        "name": "Miller Lite",
        "price": "\$9.25"
      },
      {
        "name": "Yuengling Traditional Lager - Pottsville, PA",
        "price": "\$9.25"
      },
      {
        "name": "Samuel Adams Seasonal Draft",
        "price": "\$10.50"
      },
      {
        "name": "Cigar City Ja Alai IPA Draft",
        "price": "\$10.50"
      },
      {
        "name": "Stella Artois",
        "price": "\$10.50"
      },
      {
        "name": "Corona Extra",
        "price": "\$9.25"
      },
      {
        "name": "Blue Moon Belgian White",
        "price": "\$9.00"
      }
    ]
  },
  {
    "section": null,
    "items": [
      {
        "name": "Schöfferhofer Grapefruit Hefeweizen 'Loaded'",
        "price": "\$13.25",
        "description": "with a shot of Deep Eddy Ruby Red Grapefruit Vodka"
      },
      {
        "name": "Angry Orchard Crisp Apple Hard Cider",
        "price": "\$10.00"
      },
      {
        "name": "White Claw Black Cherry Hard Seltzer - Chicago, IL",
        "price": "\$10.50"
      },
      {
        "name": "New Belgium Fat Tire",
        "price": "\$10.25"
      },
      {
        "name": "Michelob Ultra Lager - St. Louis, MO",
        "price": "\$9.50"
      }
    ]
  },
  {
    "section": "Allergy-Friendly Appetizers",
    "items": [
      {
        "name": "Griddled Salmon Cake",
        "price": "\$16.00",
        "description": "Served with Succotash and Dill Sour Cream (For Gluten/Wheat, Egg, Peanut/Tree Nut, Sesame, Shellfish Allergies)"
      },
      {
        "name": "Beer-battered Onion Rings",
        "price": "\$13.00",
        "description": "with Horseradish Sauce (For Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies)"
      },
      {
        "name": "Cornbread Skillet",
        "price": "\$10.00",
        "description": "Served with Butter and Honey (For Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame, Soy Allergies)"
      },
      {
        "name": "Cousin Amy's Romaine Wedge Salad",
        "price": "\$12.00",
        "description": "Marinated Tomatoes, Blue Cheese Crumbles, and Roasted Red Pepper Ranch Dressing (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame Allergies)"
      },
      {
        "name": "Roasted Tomato Soup",
        "price": "\$10.00",
        "description": "Savory Blend of Plum Tomatoes, Onions, and Herbs garnished with Herbed Focaccia Croutons (For Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies)"
      }
    ]
  },
  {
    "section": "Allergy-Friendly Entrées",
    "items": [
      {
        "name": "Grandpa Jean's Chicken Pot Pie",
        "price": "\$24.00",
        "description": "A Traditional Pastry Crust Filled with Chicken, Potatoes, Carrots, Celery, Onions, Corn and Peas (For Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies)"
      },
      {
        "name": "Seared Fresh Salmon with Grain Mustard-Beurre Blanc",
        "price": "\$27.00",
        "description": "Crushed Fingerling Potatoes with Olive Oil and Green Beans (For Gluten/Wheat, Egg, Peanut/Tree Nut, Sesame, and Soy Allergies)"
      },
      {
        "name": "Caesar Salad",
        "price": "\$17.00",
        "description": "Romaine Lettuce tossed with Caesar Dressing and Grated Parmesan. With Chicken \$17 or with Salmon \$19. (For Gluten/Wheat, Peanut/Tree Nut, Sesame, Shellfish Allergies)"
      },
      {
        "name": "Cousin Harold's Rigatoni Pasta",
        "price": "\$20.00",
        "description": "Mixed with Vegetables and Chickpeas (For Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, Soy Allergies)"
      },
      {
        "name": "Pot Roast",
        "price": "\$25.00",
        "description": "Slow-cooked 'til fork tender served with Roasted Garlic Mashed Potatoes, Brown Gravy, and garnished with Carrots Celery, and Onions (For Egg, Fish/Shellfish, and Peanut/Tree Nut Allergies)"
      },
      {
        "name": "50's Prime Time Café Blue Plate Special",
        "price": "\$30.00",
        "description": "Seared Pork Chop served with Colcannon Mashed Potatoes and Onion Gravy (For Egg, Fish/Shellfish, Peanut/Tree Nut Allergies)"
      },
      {
        "name": "Cousin Megan's Traditional Meatloaf",
        "price": "\$24.00",
        "description": "Blend of Beef and Pork served with Roasted Garlic Mashed Potatoes, Green Beans, and Tomato Glaze (For Gluten/Wheat, Fish/Shellfish, and Peanut/Tree Nut Allergies)"
      },
      {
        "name": "Aunt Liz's Golden Fried Chicken",
        "price": "\$26.00",
        "description": "Smashed Potatoes and Seasonal Vegetables (For Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)"
      },
      {
        "name": "Mom's Favorite Recipes",
        "price": "\$30.00",
        "description": "Golden-fried Chicken, Fork Tender Pot Roast, and Traditional Meatloaf with Green Beans (For Fish/Shellfish and Peanut/Tree Nut Allergies)"
      }
    ]
  },
  {
    "section": "Allergy-Friendly Desserts",
    "items": [
      {
        "name": "Traditional Warm Apple Crisp",
        "price": "\$8.00",
        "description": "(For Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)"
      },
      {
        "name": "Hummingbird Bundt Cake",
        "price": "\$9.00",
        "description": "Banana, Pineapple, and Pecan Bundt Cake topped with Cream Cheese Icing and served with a Pineapple Compote (For For Fish/Shellfish, and Sesame Allergies)"
      },
      {
        "name": "Key Lime Pie",
        "price": "\$9.00",
        "description": "Topped with Whipped Cream and served with a Raspberry Sauce (For Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies)"
      },
      {
        "name": "Grasshopper Bar",
        "price": "\$9.00",
        "description": "Mint white chocolate mousse with chocolate chips on a chocolate chip cookie topped with whip cream and chocolate chips (For Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies)"
      },
      {
        "name": "Dad's Favorite Chocolate-Peanut Butter Layered Cake",
        "price": "\$8.50",
        "description": "(For Fish/Shellfish Allergies)"
      }
    ]
  },
  {
    "section": "Allergy-Friendly Kids' Appetizers (à la carte)",
    "items": [
      {
        "name": "Garden Salad",
        "price": "\$3.25",
        "description": "(For Gluten/Wheat, Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies)"
      },
      {
        "name": "Creamy Tomato Soup",
        "price": "\$3.25",
        "description": "(For Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies)"
      },
      {
        "name": "Vegetable Platter",
        "price": "\$3.25",
        "description": "(For Gluten/Wheat, Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies)"
      }
    ]
  },
  {
    "section": "Allergy-Friendly Kids' Create-Your-Own Entrées (choose one)",
    "items": [
      {
        "name": "Goofy's Salmon",
        "price": "\$14.50",
        "description": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice (For Gluten/Wheat, Egg, Milk, Peanut/Tree Nut, Sesame, Shellfish, and Soy Allergies)"
      },
      {
        "name": "Sloppy Joe Sandwich",
        "price": "\$12.50",
        "description": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)"
      },
      {
        "name": "Grandpa's Grilled Chicken",
        "price": "\$13.50",
        "description": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)"
      },
      {
        "name": "Aunt Betty's Chicken Strips",
        "price": "\$12.50",
        "description": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)"
      }
    ]
  },
  {
    "section": "Allergy-Friendly Kids' Create-Your-Own Selections (choose two)",
    "items": [
      {
        "name": "Green Beans & Carrots",
        "description": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)"
      },
      {
        "name": "Stained Glass Dessert",
        "description": "Whipped Pineapple fluff studded with cubes of strawberry, lime, and orange gelatin (For Gluten/Wheat, Egg, Fish/Shellfish, Sesame, and Soy Allergies)"
      },
      {
        "name": "Grandma's Macaroni & Cheese",
        "description": "(For Egg, Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies)"
      },
      {
        "name": "Corn",
        "description": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)"
      },
      {
        "name": "Mashed Potatoes",
        "description": "(For Gluten/Wheat, Egg, Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies)"
      },
      {
        "name": "Fruit Salad",
        "description": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)"
      }
    ]
  },
  {
    "section": "Kid's Specialty Drink",
    "items": [
      {
        "name": "Specialty Character Drink",
        "price": "\$6.50",
        "description": "Minute Maid® Zero Sugar Lemonade with flavors of Cotton Candy served in a souvenir Character Cup"
      }
    ]
  }
}




{
  "2024 EPCOT Food & Wine Festival Menus": {
    "Germany": {
      "Food": [
        {
          "name": "Schinkennudeln",
          "description": "Pasta gratin with ham, onions, and cheese",
          "price": 5.25
        },
        {
          "name": "Bratwurst",
          "description": "Bratwurst on a pretzel roll with mustard",
          "price": 6.25
        },
        {
          "name": "Apple Strudel",
          "description": "Apple Strudel with vanilla sauce",
          "price": 4.75
        }
      ],
      "Beverages": [
        {
          "name": "Schöfferhofer Lemon Zest Hefeweizen",
          "description": "New",
          "price": {
            "6oz": 5.75,
            "12oz": 9.75
          }
        },
        {
          "name": "von Trapp Brewing Dunkel Lager",
          "description": "New",
          "price": {
            "6oz": 5.75,
            "12oz": 9.75
          }
        },
        {
          "name": "Selbach-Oster Riesling QbA",
          "price": 9
        },
        {
          "name": "Weihenstephaner Festbier",
          "price": {
            "6oz": 5.75,
            "12oz": 9.75
          }
        },
        {
          "name": "Beer Flight",
          "price": 10.25
        }
      ]
    },
    "The Alps": {
      "Food": [
        {
          "name": "Warm Raclette Swiss Cheese",
          "description": "with alpine ham, baby potatoes, cornichons, and baguette",
          "price": 5.75
        },
        {
          "name": "Warm Raclette Swiss Cheese",
          "description": "with baby potatoes, cornichons, and baguette",
          "price": 5.25
        },
        {
          "name": "Dark Chocolate Fondue",
          "description": "with berries, pound cake, and meringues",
          "price": 6
        }
      ],
      "Beverages": [
        {
          "name": "Stiegl Brewery Key Lime Hard Radler",
          "price": {
            "6oz": 5.75,
            "12oz": 9.75
          }
        },
        {
          "name": "Frozen Rosé",
          "price": 9
        }
      ]
    },
    "Refreshment Outpost": {
      "Food": [
        {
          "name": "IMPOSSIBLE Spicy Sausage",
          "description": "with piri piri peppers and onions, and piri piri aïoli (Plant-based) (New)",
          "price": 6.50
        },
        {
          "name": "Curried Chicken and South African Boerewors Sausage Stew",
          "description": "with chickpeas and potatoes served in a bread bowl (New)",
          "price": 5.75
        },
        {
          "name": "Chocolate Amarula Mousse Dome",
          "description": "with white chocolate (Gluten/Wheat Friendly) (New)",
          "price": 6.25
        }
      ],
      "Beverages": [
        {
          "name": "Keel Farms Blackberry Apricot Jam Hard Cider",
          "description": "New",
          "price": 12
        },
        {
          "name": "Habesha Cold Gold Pilsner",
          "description": "New",
          "price": 12
        },
        {
          "name": "Gulf Stream Brewing Company Cloud 9 Watermelon Hibiscus Lager",
          "price": 12
        }
      ]
    },
    "India": {
      "Food": [
        {
          "name": "Potato and Pea Samosa",
          "description": "with coriander-lime cream (Plant-based)",
          "price": 5.50
        },
        {
          "name": "Chicken Tikka Masala",
          "description": "with fennel-spiced yogurt and naan bread",
          "price": 6.25
        }
      ],
      "Beverages": [
        {
          "name": "Mango Lassi",
          "description": "Non-alcoholic",
          "price": 5
        },
        {
          "name": "United Brewing Taj Mahal Premium Lager",
          "price": {
            "6oz": 5.50,
            "12oz": 9.75
          }
        },
        {
          "name": "Sula Brut Tropicale Sparkling Wine",
          "price": 7.50
        },
        {
          "name": "Mango Lassi",
          "description": "with Sōmrus Chai Cream Liqueur",
          "price": 11.50
        },
        {
          "name": "CORKCICLE Stemless Flute",
          "price": 24.00
        }
      ]
    },
    "Flavors of America": {
      "Food": [
        {
          "name": "New York-style All Beef Hot Dog",
          "description": "with sauerkraut, onion-tomato sauce, and spicy mustard in a brioche bun (New)",
          "price": 6.75
        },
        {
          "name": "Chicago-style All Beef Hot Dog",
          "description": "with tomato, dill pickle, pickled sport pepper, diced onions, yellow mustard, and Chicago green relish in a poppy seed bun (New)",
          "price": 6.75
        },
        {
          "name": "Carolina-style All Beef Hot Dog",
          "description": "with chili, coleslaw, and yellow mustard in a brioche bun (New)",
          "price": 6.75
        },
        {
          "name": "Southwest-style All Beef Hot Dog",
          "description": "wrapped in bacon with warm pinto beans, tomatoes, jalapeños, avocado crema, and queso fresco in a French roll (New)",
          "price": 7.25
        },
        {
          "name": "Freshly-baked Chocolate Pudding Cake",
          "description": "with bourbon caramel (Gluten/Wheat Friendly) (New)",
          "price": 5
        }
      ],
      "Beverages": [
        {
          "name": "Brewery Ommegang Farm Fresh Ale",
          "description": "conditioned on Wildflower Honey (New)",
          "price": {
            "6oz": 5.75,
            "12oz": 9.75
          }
        },
        {
          "name": "Goose Island Beer Co. Hazy Beer Hug Hazy IPA",
          "description": "New",
          "price": {
            "6oz": 5.75,
            "12oz": 9.75
          }
        },
        {
          "name": "Wicked Weed Fest Bier",
          "description": "New",
          "price": {
            "6oz": 5.75,
            "12oz": 9.75
          }
        },
        {
          "name": "Beer Flight",
          "price": 10.25
        }
      ]
    },
    "Spain": {
      "Food": [
        {
          "name": "Spanish Charcuterie",
          "description": "Jamón, Manchego, and pan con tomate (New)",
          "price": 6.50
        },
        {
          "name": "Paella Negra",
          "description": "Squid ink rice with shrimp, Bay scallops, and octopus served with garlic aïoli (Gluten/Wheat Friendly) (New)",
          "price": 8
        }
      ],
      "Beverages": [
        {
          "name": "Red Sangria",
          "price": 7.50
        },
        {
          "name": "Quinta del ’67 Almansa Garnacha Tintorera",
          "price": 7.50
        }
      ]
    },
    "Greece": {
      "Food": [
        {
          "name": "Spanakopita",
          "price": 5.00
        },
        {
          "name": "IMPOSSIBLE Moussaka",
          "description": "Plant-based",
          "price": 5.50
        },
        {
          "name": "Griddled Cheese",
          "description": "with pistachios and honey (Gluten/Wheat Friendly)",
          "price": 5
        },
        {
          "name": "Lamb Gyro",
          "description": "with shaved lettuce, tomato-cumber relish, and tzatziki on warm flatbread",
          "price": 6.75
        }
      ],
      "Beverages": [
        {
          "name": "Mylonas Winery Assyrtiko White Wine",
          "price": 6.50
        },
        {
          "name": "Zoe Rosé",
          "price": 6
        },
        {
          "name": "Kir-Yianni Naoussa Xinomavro Dry Red",
          "price": 6.50
        },
        {
          "name": "Wine Flight",
          "price": 7.50
        },
        {
          "name": "Greek Melon Limenade",
          "description": "with Kleos Mastiha Spirit, Aelred Melon Apéritif de Provence, Pearl Vodka, and lime sour mix (New)",
          "price": 11.50
        }
      ]
    },
    "Belgium": {
      "Food": [
        {
          "name": "Beer-braised Beef",
          "description": "served with smoked gouda mashed potatoes",
          "price": 6.25
        },
        {
          "name": "Belgian Waffle",
          "description": "with warm chocolate ganache",
          "price": 5.50
        },
        {
          "name": "Belgian Waffle",
          "description": "with berry compote and whipped cream",
          "price": 5.50
        }
      ],
      "Beverages": [
        {
          "name": "Belgian Chilled Coffee",
          "description": "Non-alcoholic",
          "price": 12
        },
        {
          "name": "Brouwerij St Bernardus Dragòn Wit",
          "description": "New",
          "price": {
            "6oz": 5.75,
            "12oz": 9.75
          }
        },
        {
          "name": "Brouwerij Verhaeghe Vichte Duchesse Red Sweet & Tart Cherry Ale",
          "description": "New",
          "price": {
            "6oz": 5.75,
            "12oz": 9.75
          }
        },
        {
          "name": "Brouwerij Van Steenberge Gulden Draak Tripel Ale",
          "price": {
            "6oz": 5.75,
            "12oz": 9.75
          }
        },
        {
          "name": "Beer Flight",
          "price": 10.25
        },
        {
          "name": "Belgian Chilled Coffee",
          "description": "with ChocoLat Deluxe Salted Caramel Chocolate Liqueur",
          "price": 12
        }
      ]
    },
    "Brazil": {
      "Food": [
        {
          "name": "Feijoada",
          "description": "Black beans with pork belly, Brazil nut pesto, and BEN’S ORIGINAL Long Grain White Rice",
          "price": 6.50
        },
        {
          "name": "Pão de Queijo",
          "description": "Brazilian cheese bread (Gluten/Wheat Friendly)",
          "price": 5
        }
      ],
      "Beverages": [
        {
          "name": "Xingu Black Beer",
          "price": {
            "6oz": 5.75,
            "12oz": 9.75
          }
        },
        {
          "name": "Frozen Caipirinha",
          "description": "with Cachaça",
          "price": 12
        }
      ]
    },
    "France": {
      "Food": [
        {
          "name": "Moelleux aux Oignons Caramélisés et au Fromage de Chèvre",
          "description": "Egg moelleux, goat cheese, and caramelized onions (New)",
          "price": 7.95
        },
        {
          "name": "Brioche aux Escargots",
          "description": "Escargot brioche with garlic and parsley cream (New)",
          "price": 7.95
        },
        {
          "name": "Boeuf Bourguignon, Pommes de terre roties",
          "description": "Braised short ribs in cabernet with roasted potatoes",
          "price": 7.95
        },
        {
          "name": "Crème Brûlée mangue et passion à la Confiture",
          "description": "Mango passion crème brûlée with fruit compote (Gluten/Wheat Friendly)",
          "price": 5.95
        }
      ],
      "Beverages": [
        {
          "name": "Cocktail au Gin et Aux Fraises",
          "description": "Rose d’Argent Strawberry Gin, cranberry juice, and DOLE Pineapple Juice (New)",
          "price": null
        },
        {
          "name": "Mas La Chevalière, Pinot Noir",
          "description": "New",
          "price": 13.95
        },
        {
          "name": "Guillaume Touton, Brut de Pêche",
          "description": "Sparkling wine with natural peach (New)",
          "price": 6.95
        },
        {
          "name": "Frozen French Cosmo",
          "description": "Vodka, Grey Goose Le Citron Vodka, Grand Marnier, and cranberry juice",
          "price": 14.95
        }
      ]
    },
    "Forest & Field (New)": {
      "Food": [
        {
          "name": "Autumn Chili",
          "description": "with bison, lamb, pork belly, root vegetables, jalapeño cornbread, smoked cheddar, and Crème Fraîche (New)",
          "price": 7.75
        },
        {
          "name": "Pumpkin Mascarpone Ravioli",
          "description": "with sage-brown butter, pecorino cheese, and hazelnut praline",
          "price": 5.25
        },
        {
          "name": "Burrata",
          "description": "with seasonal fall fruit, spiced pecans, apple purée, and fig vinaigrette (Gluten/Wheat Friendly)",
          "price": 5.50
        }
      ],
      "Beverages": [
        {
          "name": "Lievland Bushvine Pinotage",
          "description": "New",
          "price": 6.50
        },
        {
          "name": "Piper-Sonoma Brut",
          "description": "New",
          "price": 7
        },
        {
          "name": "Brewery Ommegang All Hallows Treat Chocolate Peanut Butter Imperial Stout",
          "description": "New",
          "price": {
            "6oz": 5.75,
            "12oz": 9.75
          }
        }
      ]
    },
    "Canada": {
      "Food": [
        {
          "name": "Cheddar Cheese and Bacon Soup",
          "description": "served with a pretzel roll",
          "price": 6
        },
        {
          "name": "Filet Mignon",
          "description": "with mushrooms, Boursin Garlic & Fine Herbs mashed potatoes, and Boursin Garlic & Fine Herbs butter (Gluten/Wheat Friendly)",
          "price": 9.75
        }
      ],
      "Beverages": [
        {
          "name": "Collective Arts Brewing Audio/Visual Lager",
          "price": {
            "6oz": 5.75,
            "12oz": 9.75
          }
        },
        {
          "name": "Château des Charmes Cabernet Sauvignon",
          "price": 7.50
        }
      ]
    },
    "Australia": {
      "Food": [
        {
          "name": "Grilled Bushberry Spiced Shrimp Skewer",
          "description": "with sweet-and-sour vegetables and coconut chili sauce (Gluten/Wheat Friendly) (New)",
          "price": 7
        },
        {
          "name": "Roasted Lamb Chop",
          "description": "with mint pesto and crushed salt and vinegar potato chips (Gluten/Wheat Friendly)",
          "price": 8.75
        },
        {
          "name": "Lamington",
          "description": "Yellow cake with raspberry filling with chocolate and coconut",
          "price": 4.75
        }
      ],
      "Beverages": [
        {
          "name": "Yalumba ‘The Y Series’ Viognier",
          "price": 6.50
        },
        {
          "name": "Bulletin Place Sauvignon Blanc",
          "description": "New",
          "price": 6.50
        },
        {
          "name": "Fowles Wine Farm to Table Shiraz",
          "description": "New",
          "price": 6.50
        },
        {
          "name": "Wine Flight",
          "price": 7
        }
      ]
    },
    "Bramblewood Bites (New)": {
      "Food": [
        {
          "name": "Grilled Cider-brined Pork Tenderloin",
          "description": "with fennel apple slaw and apple cider gastrique (Gluten/Wheat Friendly)",
          "price": 6.75
        },
        {
          "name": "Grilled Bison",
          "description": "with butternut squash purée, roasted mushrooms, and huckleberry gastrique (Gluten/Wheat Friendly)",
          "price": 8.75
        },
        {
          "name": "Cast Iron-roasted Brussel Sprouts and Root Vegetables",
          "description": "with dried cranberries, candied pecans, and maple bourbon glaze (Gluten/Wheat Friendly)",
          "price": null
        }
      ],
      "Beverages": [
        {
          "name": "GoGi Pinot Noir",
          "price": 16
        },
        {
          "name": "Spiced Apple Old Fashioned",
          "description": "inspired cocktail with Boyd & Blair Rum (New)",
          "price": 12
        }
      ]
    },
    "Milled and Mulled (New)": {
      "Food": [
        {
          "name": "Freshly-baked Carrot Cake",
          "description": "with walnuts and cream cheese icing",
          "price": 4.75
        },
        {
          "name": "Boursin Fig & Balsamic Cheesecake",
          "description": "with fig jam and pomegranate (New)",
          "price": 5.25
        },
        {
          "name": "Pear and Almond Frangipane Pâte Brisée",
          "description": "New",
          "price": 5.25
        }
      ],
      "Beverages": [
        {
          "name": "Blake’s Hard Cider Co. Cider Mill Donut Hard Cider",
          "description": "New",
          "price": {
            "6oz": 5.50,
            "12oz": 9.75
          }
        },
        {
          "name": "Coppertail Brewing Fallen Fruit Blueberry Pie Hard Cider",
          "description": "New",
          "price": {
            "6oz": 5.50,
            "12oz": 9.75
          }
        },
        {
          "name": "Chocolate Shop Chocolate Red Wine",
          "description": "New",
          "price": 6
        }
      ]
    },
    "The Noodle Exchange": {
      "Food": [
        {
          "name": "Ramen",
          "description": "with shaved beef, shiitake mushrooms, pickled carrots and daikon radish, shaved spicy peppers, and a soy egg in citrus-sesame broth",
          "price": 6
        },
        {
          "name": "Thai Shrimp",
          "description": "with Rice Noodles, Shiitake Mushrooms, and Basil in Coconut-Curry Broth (Gluten/Wheat Friendly)",
          "price": 6.75
        },
        {
          "name": "Ramen",
          "description": "with tofu, shiitake mushrooms, pickled carrots and daikon radish, shaved spicy peppers, and Baby Bok Choy in Citrus-Sesame Broth (Plant-based)",
          "price": 5.75
        }
      ],
      "Beverages": [
        {
          "name": "Parish Brewing Co. Strawberry Mochi",
          "price": {
            "6oz": 5.50,
            "12oz": 9.75
          }
        },
        {
          "name": "Pacific Rim Solstice Vineyard Old Vine Riesling",
          "price": 8
        }
      ]
    },
    "Shimmering Sips": {
      "Food": [
        {
          "name": "Guava Cake",
          "description": "with whipped cream and coconut (Plant-based)",
          "price": 5
        }
      ],
      "Beverages": [
        {
          "name": "Tropical Mimosa",
          "description": "Sparkling wine, Minute Maid Passion Fruit, Orange, and Guava Juices",
          "price": 7
        },
        {
          "name": "Berry Mimosa",
          "description": "La Gioiosa Berry Fizz and white cranberry juice",
          "price": 7
        },
        {
          "name": "Blood Orange Mimosa",
          "description": "Sparkling wine and blood orange juice",
          "price": 7
        },
        {
          "name": "Mimosa Flight",
          "price": 14
        },
        {
          "name": "Fruited Sour Beer and Sparkling Wine Cocktail",
          "description": "Brewery Ommegang Dream Patch Fruited Sour with Cherry, Blueberry and Raspberry, and sparkling wine (New)",
          "price": 9
        },
        {
          "name": "CORKCICLE Stemless Flute",
          "price": 24
        }
      ]
    },
    "Flavors From Fire": {
      "Food": [
        {
          "name": "Steakhouse Blended Burger",
          "description": "Beef and wild mushroom slider with truffle brie cheese fondue, arugula, and truffle potato chips on a sesame seed bun",
          "price": 6.25
        },
        {
          "name": "IMPOSSIBLE Montreal Style Burger Slider",
          "description": "with cheddar cheese, and tomato jam on a sesame seed bun (Plant-based) (New)",
          "price": 6
        },
        {
          "name": "Smoked Corned Beef",
          "description": "with house-made potato chips, cheese curds, pickled onions, and beer-cheese fondue",
          "price": 6.50
        }
      ],
      "Beverages": [
        {
          "name": "Deschutes Brewery Black Butte Porter",
          "description": "New",
          "price": {
            "6oz": 5.75,
            "12oz": 9.75
          }
        },
        {
          "name": "Four Virtues Bourbon Barrel Zinfandel",
          "price": 6.50
        },
        {
          "name": "Swine Brine",
          "description": "with Jim Beam Bourbon, apple cinnamon cider, lemon juice, and Dijon mustard",
          "price": 11.50
        }
      ]
    },
    "Earth Eats": {
      "Food": [
        {
          "name": "Red Wine-braised Beef Short Rib",
          "description": "with goat cheese polenta, puttanesca sauce, shaved pecorino, and petit herbs (Gluten/Wheat Friendly) (New)",
          "price": 8.50
        },
        {
          "name": "Lemon Poppy Seed Cake",
          "description": "with lemon icing (New)",
          "price": 4.50
        }
      ],
      "Beverages": [
        {
          "name": "Blood Orange Agua Fresca",
          "description": "Non-alcoholic",
          "price": 4.75
        },
        {
          "name": "Harken Wines Barrel Fermented Chardonnay",
          "description": "New",
          "price": 6
        }
      ]
    },
    "Coastal Eats": {
      "Food": [
        {
          "name": "Roasted Warm Water Lobster Tail",
          "description": "with garlic butter",
          "price": 13
        },
        {
          "name": "Jumbo Shrimp Cocktail",
          "description": "with cocktail sauce (Gluten/Wheat Friendly)",
          "price": 13
        }
      ],
      "Beverages": [
        {
          "name": "Wildly Brut Cuvée",
          "price": 7
        },
        {
          "name": "Boyd & Blair Pomegranate Codder",
          "price": 12
        },
        {
          "name": "CORKCICLE Stemless Flute",
          "price": 24
        }
      ]
    }
  }
}

}

****

{
  "restaurant": "Coral Reef Restaurant",
  "location": "EPCOT, World Nature",
  "dining_type": "Casual Dining",
  "menu": {
    "appetizers": [
      {
        "name": "Caribbean Salad",
        "description": "Tomatoes, Onions, Avocado, Crispy Plantains, Pigeon Peas, Key Lime Vinaigrette",
        "price": "\$12.00"
      },
      {
        "name": "Sweet Corn Bisque",
        "description": "Coastal Crab, Grilled Corn Relish",
        "price": "\$11.00"
      },
      {
        "name": "Coconut Fried Shrimp",
        "description": "Mango Chutney",
        "price": "\$18.00"
      },
      {
        "name": "Grilled Chicken Wings",
        "description": "Jamaican-spiced Rum Glaze, Green Onions",
        "price": "\$15.00"
      }
    ],
    "entrees": [
      {
        "name": "Shrimp Scampi",
        "description": "Fettuccine, Garlic, Lemon, White Wine, Butter, Parsley",
        "price": "\$34.00"
      },
      {
        "name": "Roasted Cauliflower",
        "description": "Cippolini Onions, Key West Curry, Walnut-Gremolata, Radish",
        "price": "\$27.00"
      },
      {
        "name": "Seafood Boil",
        "description": "Shrimp, Mussels, Clams, Andouille Sausage, Sweet Corn, Potatoes",
        "price": "\$34.00"
      },
      {
        "name": "Grilled Mahi-Mahi",
        "description": "Coconut-Lime Rice, Mango Salsa, Avocado, Toasted Coconut",
        "price": "\$34.00"
      },
      {
        "name": "Surf and Turf",
        "description": "Filet Mignon, Grilled Shrimp, Garlic Mashed Potatoes, Key Lime Chimichurri",
        "price": "\$38.00"
      },
      {
        "name": "Mojo Chicken",
        "description": "Caribbean Rice, Black-eyed Peas, Crispy Garlic Plantains",
        "price": "\$29.00"
      }
    ],
    "desserts": [
      {
        "name": "Chocolate Mousse Bar",
        "description": "Baileys Almande, Chocolate Ganache, Almonds, Orange Coral",
        "price": "\$10.00"
      },
      {
        "name": "Key West Sunset",
        "description": "Key Lime Tart, Chantilly, Raspberries",
        "price": "\$10.00"
      },
      {
        "name": "Pineapple-Coconut Bread Pudding",
        "description": "Vanilla Ice Cream, Warm Rum Caramel, Shaved Coconut",
        "price": "\$10.00"
      }
    ],
    "kids_menu": {
      "appetizers": [
        {
          "name": "Corn Bisque",
          "price": "\$3.25"
        },
        {
          "name": "Jr. Garden Salad",
          "description": "with Ranch Dressing",
          "price": "\$3.25"
        }
      ],
      "entrees": [
        {
          "name": "Sustainable Fish",
          "description": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI Water, or Small Minute Maid Apple Juice",
          "price": "\$14.00"
        },
        {
          "name": "Grilled Chicken with Barbecue Sauce",
          "description": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI Water, or Small Minute Maid Apple Juice. Meets Disney Nutrition Guidelines for Complete Meals without substitutions.",
          "price": "\$13.00"
        },
        {
          "name": "Macaroni & Cheese",
          "description": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI Water, or Small Minute Maid Apple Juice",
          "price": "\$13.00"
        },
        {
          "name": "Grilled Shrimp",
          "description": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI Water, or Small Minute Maid Apple Juice",
          "price": "\$14.00"
        },
        {
          "name": "Grilled Steak",
          "description": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI Water, or Small Minute Maid Apple Juice",
          "price": "\$16.00"
        }
      ],
      "selections": [
        "Broccoli",
        "Corn on the Cob",
        "Plantain Chips",
        "Caribbean Rice",
        "Mashed Potatoes",
        "Fresh Fruit"
      ],
      "dessert": {
        "name": "Nemo Fin-tastic Cake"
      },
      "beverages": [
        {
          "name": "Specialty Character Drink",
          "description": "Minute Maid Zero Sugar Lemonade with flavors of Cotton Candy served in a souvenir Character Cup",
          "price": "\$6.50"
        },
        {
          "name": "Pineapple Sunset",
          "description": "A mixture of tropical flavors with Minute Maid Orange Juice, Ginger Beer, and a splash of Sprite",
          "price": "\$5.49"
        }
      ]
    },
    "non_alcoholic_specialty_beverages": [
      {
        "name": "The Shark Tank",
        "description": "A refreshing lemonade inspired by the underwater sea life as seen in the aquarium",
        "price": "\$8.99"
      },
      {
        "name": "Pink London Spritzer",
        "description": "Lyre's Pink London Spirit, Grapefruit Soda, Pomegranate-Green Tea, Lime, and Mint",
        "price": "\$12.00"
      },
      {
        "name": "Agave Garden",
        "description": "Lyre's Agave Reserva Spirit, Cold-pressed Lime Juice, Passionfruit-Papaya-Green Tea, and Cucumber",
        "price": "\$12.00"
      }
    ],
    "cocktails": [
      {
        "name": "Blood Orange Margarita",
        "description": "Lunazul Añejo Tequila, Cointreau Liqueur, Lime Juice, and Blood Orange Sour",
        "price": "\$16.00"
      },
      {
        "name": "Spicy Poblano Margarita",
        "description": "Patrón Silver Tequila, Ancho Reyes Verde Liqueur, Lime Juice, and Pure Cane Sugar",
        "price": "\$17.00"
      },
      {
        "name": "Sunset Margarita",
        "description": "Teremana Blanco Tequila, Grand Marnier Liqueur, Smoked Chili Bitters, Lime, and Agave",
        "price": "\$15.75"
      },
      {
        "name": "Paloma",
        "description": "Corazón Blanco Tequila with juices of Ruby Red Grapefruit and Lime topped with Soda Water",
        "price": "\$16.00"
      }
    ],
    "beer_and_hard_cider": [
      {
        "name": "Bud Light – St. Louis, MO",
        "price": "\$7.50 - \$12.75"
      },
      {
        "name": "Corona Extra – Mexico",
        "price": "\$7.50 - \$12.75"
      },
      {
        "name": "Stella Artois – Belgium",
        "price": "\$7.50 - \$12.75"
      }
    ],
    "wine": {
      "sparkling_wine": [
        {
          "name": "Paul Chaneau Lady of Spain Cuvée, Cava, Spain",
          "glass_price": "\$13.00",
          "bottle_price": "\$53.00"
        }
      ],
      "white_wine": [
        {
          "name": "Fess Parker Riesling, Santa Barbara County",
          "glass_price": "\$12.00",
          "bottle_price": "\$49.00"
        },
        {
          "name": "Benvolio Pinot Grigio, Friuli",
          "glass_price": "\$11.00",
          "bottle_price": "\$42.00"
        }
      ],
      "red_wine": [
        {
          "name": "Robert Mondavi Cabernet Sauvignon, Napa Valley",
          "glass_price": "\$17.00",
          "bottle_price": "\$70.00"
        }
      ]
    },
    "allergy_friendly": {
      "appetizers": [
        {
          "name": "Caribbean Salad",
          "description": "Tomatoes, Onions, Avocado, Crispy Plantains, Pigeon Peas, Key Lime Vinaigrette",
          "price": "\$12.00",
          "allergens": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Milk", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "name": "Coconut Fried Shrimp",
          "description": "Mango Chutney",
          "price": "\$18.00",
          "allergens": ["Egg", "Fish", "Milk", "Peanut", "Sesame", "Soy"]
        }
      ],
      "entrees": [
        {
          "name": "Shrimp Scampi",
          "description": "Fettuccine, Garlic, Lemon, White Wine, Butter, Parsley",
          "price": "\$34.00",
          "allergens": ["Fish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "name": "Seafood Boil",
          "description": "Shrimp, Mussels, Clams, Andouille Sausage, Sweet Corn, Potatoes",
          "price": "\$34.00",
          "allergens": ["Gluten/Wheat", "Egg", "Fish", "Milk", "Peanut/Tree Nut", "Sesame", "Soy"]
        }
      ],
      "desserts": [
        {
          "name": "Chocolate Mousse Bar",
          "description": "Baileys Almande, Chocolate Ganache, Almonds, Orange Coral",
          "price": "\$10.00",
          "allergens": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Milk", "Peanut", "Sesame"]
        },
        {
          "name": "Key West Sunset",
          "description": "Key Lime Tart, Chantilly, Raspberries",
          "price": "\$10.00",
          "allergens": ["Fish/Shellfish", "Peanut/Tree Nut", "Sesame"]
        }
      ]
    }
  },
}

****

{
  "TeppanEdo": {
    "Location": "EPCOT, World Showcase",
    "DiningType": "Casual Dining",
    "MealPeriod": "Lunch",
    "Menu": {
      "Appetizers": [
        {
          "Name": "Edamame",
          "Description": "young soybean pods, served chilled",
          "Price": "\$8.00"
        },
        {
          "Name": "Soy Butter Calamari",
          "Description": "Grilled ika steak tossed with butter shoyu sauce",
          "Price": "\$16.50"
        },
        {
          "Name": "Miso Soup",
          "Description": "soybean-based soup with wakame, tofu, green onion",
          "Price": "\$6.50"
        },
        {
          "Name": "Takoyaki",
          "Description": "6pc octopus fritters topped with tonkatsu sauce, bonito flakes, and nori",
          "Price": "\$12.00"
        }
      ],
      "Sushi": [
        {
          "Name": "Volcano Roll*",
          "Description": "Grilled california roll topped with shrimp, scallops and volcano sauce",
          "Price": "\$24.00"
        },
        {
          "Name": "Spicy Roll*",
          "Description": "8 pieces tuna-salmon mix with cucumber, seaweed wrap and volcano sauce",
          "Price": "\$18.00"
        },
        {
          "Name": "California Roll",
          "Description": "8 pieces, inside-out roll with krab, cucumber, masago and avocado",
          "Price": "\$17.00"
        },
        {
          "Name": "Sushi Sampler*",
          "Description": "2 pieces spicy roll, 2 pieces california roll, 3 pieces nigiri",
          "Price": "\$18.00"
        }
      ],
      "Entrees": [
        {
          "Name": "NY Cut Steak*",
          "Description": "7 oz hand cut daily USDA choice served with garden salad, udon noodles, vegetables, and steamed white rice",
          "Price": "\$44.00"
        },
        {
          "Name": "Julienne Steak*",
          "Description": "8 oz thin sliced beef strips served with garden salad, udon noodles, vegetables, and steamed white rice",
          "Price": "\$45.00"
        },
        {
          "Name": "Salmon*",
          "Description": "6 oz fresh scottish fillet served with spicy yuzu sauce and served with garden salad, udon noodles, vegetables, and steamed white rice",
          "Price": "\$39.00"
        },
        {
          "Name": "Ebi",
          "Description": "10 grilled shrimp served with garden salad, udon noodles, vegetables, and steamed white rice",
          "Price": "\$35.00"
        },
        {
          "Name": "Tori",
          "Description": "8 oz boneless chicken breast served with garden salad, udon noodles, vegetables, and steamed white rice",
          "Price": "\$34.00"
        },
        {
          "Name": "Yasai",
          "Description": "seasonal vegetables, mushrooms, and tofu served with garden salad, udon noodles, vegetables, and steamed white rice",
          "Price": "\$28.00"
        }
      ],
      "Combinations": [
        {
          "Name": "Asakusa*",
          "Description": "steak and shrimp served with garden salad, udon noodles, vegetables, and steamed white rice",
          "Price": "\$48.00"
        },
        {
          "Name": "Nihonbashi*",
          "Description": "steak and chicken served with garden salad, udon noodles, vegetables, and steamed white rice",
          "Price": "\$46.00"
        },
        {
          "Name": "Ueno",
          "Description": "chicken and shrimp served with garden salad, udon noodles, vegetables, and steamed white rice",
          "Price": "\$42.00"
        }
      ],
      "EntréePremiumEnhancements": [
        {
          "Name": "Japanese Wagyu Strip*",
          "Description": "4 oz japanese A5 cut",
          "Price": "\$120.00"
        },
        {
          "Name": "Lobster Tail",
          "Description": "4-6 oz northeastern cold-water tail",
          "Price": "\$38.00"
        },
        {
          "Name": "Hotate",
          "Description": "4 oz. northeastern cold-water sea scallop",
          "Price": "\$31.00"
        },
        {
          "Name": "Ebi",
          "Description": "5 pieces of grilled shrimp",
          "Price": "\$17.00"
        },
        {
          "Name": "Mixed Mushrooms",
          "Description": "shimeji, white and shiitake in butter and soy",
          "Price": "\$16.00"
        },
        {
          "Name": "Filet Mignon*",
          "Description": "6 oz. tenderloin USDA choice",
          "Price": "\$37.00"
        }
      ],
      "Dessert": [
        {
          "Name": "Mango Mousse Cake",
          "Price": "\$11.00"
        },
        {
          "Name": "Soft-serve Ice Cream",
          "Description": "Vanilla, Green Tea, or Vanilla Green Tea Swirl",
          "Price": "\$6.50"
        },
        {
          "Name": "Yuzu Cheesecake",
          "Price": "\$11.00"
        }
      ],
      "KidsEntrées": [
        {
          "Name": "Julienned Steak",
          "Description": "4 oz sliced beef strips served with garden salad, seasonal vegetables, udon noodles, and steamed white rice",
          "Price": "\$26.00"
        },
        {
          "Name": "Ebi",
          "Description": "5 grilled shrimp served with garden salad, seasonal vegetables, udon noodles and steamed white rice",
          "Price": "\$18.00"
        },
        {
          "Name": "Tori",
          "Description": "4 oz chicken breast served with garden salad, seasonal vegetables, udon noodles and steamed white rice",
          "Price": "\$18.00"
        },
        {
          "Name": "Salmon*",
          "Description": "3 oz. scottish fillet with teriyaki sauce served with garden salad, seasonal vegetables, udon noodles and steamed white rice",
          "Price": "\$24.00"
        },
        {
          "Name": "Yasai",
          "Description": "seasonal vegetables, mushrooms, and tofu served with garden salad, seasonal vegetables, udon noodles and steamed white rice",
          "Price": "\$18.00"
        }
      ],
      "NonAlcoholicBeverages": [
        {
          "Name": "Assorted Coca-Cola Fountain Beverages",
          "Price": "\$5.00"
        },
        {
          "Name": "Lemonade",
          "Price": "\$5.00"
        },
        {
          "Name": "Iced or Hot Green Tea",
          "Price": "\$5.00"
        }
      ],
      "NonAlcoholicSpecialties": [
        {
          "Name": "Yuzu Lemonade",
          "Description": "Yuzu lemonade with Strawberry Popping Boba",
          "Price": "\$8.00"
        },
        {
          "Name": "Ichigo Colada",
          "Description": "Strawberry Pina Colada",
          "Price": "\$10.00"
        },
        {
          "Name": "Ramune",
          "Description": "Japanese Soda",
          "Price": "\$8.00"
        }
      ],
      "Beer": [
        {
          "Name": "Kirin Draft 20oz",
          "Price": "\$14.00"
        },
        {
          "Name": "Sapporo Premium 20oz",
          "Price": "\$14.00"
        },
        {
          "Name": "Kirin Light 12-oz",
          "Price": "\$12.00"
        },
        {
          "Name": "Beer Shandy 12oz",
          "Description": "ice cold kirin draft with freshly squeezed fruit juice available in grapefruit, orange, lemon",
          "Price": "\$14.00"
        }
      ],
      "Wine": [
        {
          "Name": "Hakutsuru Plum Wine, Kobe, Japan",
          "Type": "Bottle",
          "Price": "\$60.00"
        },
        {
          "Name": "Hakutsuru Plum Wine, Kobe, Japan",
          "Type": "Glass",
          "Price": "\$19.00"
        },
        {
          "Name": "Zenato Pinot Grigio, Veneto, Italy",
          "Type": "Bottle",
          "Price": "\$48.00"
        },
        {
          "Name": "Zenato Pinot Grigio, Veneto, Italy",
          "Type": "Glass",
          "Price": "\$18.00"
        },
        {
          "Name": "Villa Maria Sauvignon Blanc, Marlborough, New Zealand",
          "Type": "Bottle",
          "Price": "\$48.00"
        },
        {
          "Name": "Villa Maria Sauvignon Blanc, Marlborough, New Zealand",
          "Type": "Glass",
          "Price": "\$18.00"
        },
        {
          "Name": "Lincourt Steel Chardonnay, Central Coast, California",
          "Type": "Bottle",
          "Price": "\$48.00"
        },
        {
          "Name": "Lincourt Steel Chardonnay, Central Coast, California",
          "Type": "Glass",
          "Price": "\$18.00"
        },
        {
          "Name": "Rainstorm Pinot Noir, Willamette Valley, Oregon",
          "Type": "Bottle",
          "Price": "\$53.00"
        },
        {
          "Name": "Rainstorm Pinot Noir, Willamette Valley, Oregon",
          "Type": "Glass",
          "Price": "\$19.00"
        },
        {
          "Name": "Angeline Cabernet Sauvignon, Sonoma, California",
          "Type": "Bottle",
          "Price": "\$52.00"
        },
        {
          "Name": "Angeline Cabernet Sauvignon, Sonoma, California",
          "Type": "Glass",
          "Price": "\$18.00"
        },
        {
          "Name": "Mumm Napa Prestige Brut, Napa Valley, California",
          "Type": "Bottle",
          "Price": "\$85.00"
        },
        {
          "Name": "Mumm Napa Prestige Brut, Napa Valley, California",
          "Type": "Glass",
          "Price": "\$22.00"
        }
      ],
      "Sake": [
        {
          "Name": "Shoune",
          "Description": "Junmai Daiginjyo | Hyogo, Japan | 8oz carafe",
          "Type": "Carafe",
          "Price": "\$48.00"
        },
        {
          "Name": "Dassai 45",
          "Description": "Junmai Daiginjyo | Yamaguchi, Japan | 8oz carafe",
          "Type": "Carafe",
          "Price": "\$48.00"
        },
        {
          "Name": "Moon on the Water",
          "Description": "Junmai Ginjo | Hiroshima, Japan | 8oz carafe",
          "Type": "Carafe",
          "Price": "\$45.00"
        },
        {
          "Name": "Karatamba",
          "Description": "Honjyozo | Hyogo, Japan | 8oz carafe",
          "Type": "Carafe",
          "Price": "\$26.00"
        },
        {
          "Name": "Hana Awaka",
          "Description": "Sparkling | Berkeley, CA (250 ml bottle)",
          "Type": "Bottle",
          "Price": "\$28.00"
        },
        {
          "Name": "Sho Chiku Bai",
          "Description": "Unfiltered Nigori | Berkeley, CA (375 ml bottle)",
          "Type": "Bottle",
          "Price": "\$20.00"
        },
        {
          "Name": "Ozeki Sake (Hot/Cold)",
          "Description": "Junmai | Hollister, CA | 8oz carafe",
          "Type": "Carafe",
          "Price": "\$15.00"
        },
        {
          "Name": "Premium Sake Flight",
          "Description": "2oz pours of Dassai 45, Moon on the Water, and Karatamba",
          "Price": "\$30.00"
        }
      ],
      "Cocktails": [
        {
          "Name": "Tokyo Sunset",
          "Description": "coconut rum, crème de banana, peach schnapps, pineapple juice",
          "Price": "\$16.00"
        },
        {
          "Name": "Momo Whiskey Sour",
          "Description": "perfect harmony of whiskey, peach schnapps, sour mix",
          "Price": "\$15.00"
        },
        {
          "Name": "Violet Sake",
          "Description": "sake shaken with purple pear and lime juice",
          "Price": "\$16.00"
        },
        {
          "Name": "Iced Blood Orange",
          "Description": "gin with a hint of blood orange and sparkling water",
          "Price": "\$15.00"
        },
        {
          "Name": "Nigori Mimosa",
          "Description": "unfiltered nigori sake, orange juice, grenadine, sparkling water",
          "Price": "\$15.00"
        },
        {
          "Name": "Japanese Breeze",
          "Description": "coconut rum over ice with tart cranberry and pineapple juices",
          "Price": "\$15.00"
        },
        {
          "Name": "Mojito",
          "Description": "rum, sake, simple syrup, fresh limes and mint - available in classic, blood orange, blackberry",
          "Price": "\$15.00"
        },
        {
          "Name": "Piña Colada",
          "Description": "rum, sake, cream of coconut, and pineapple juice - available in classic, strawberry, violet pear",
          "Price": "\$15.00"
        },
        {
          "Name": "Shochu Squeeze",
          "Description": "freshly squeezed juice mixed with a glass of crisp shochu on the rocks - available in grapefruit, orange, lemon",
          "Price": "\$16.00"
        }
      ],
      "LiquorPremium": [
        {
          "Name": "Haku Vodka",
          "Type": "double",
          "Price": "\$26.00"
        },
        {
          "Name": "Roku Gin",
          "Type": "double",
          "Price": "\$26.00"
        },
        {
          "Name": "Legent Bourbon",
          "Type": "double",
          "Price": "\$32.00"
        },
        {
          "Name": "Japanese Whiskey",
          "Name": "Kaiyo - Single",
          "Price": "\$18.00"
        },
        {
          "Name": "Kaiyo - Double",
          "Price": "\$35.00"
        },
        {
          "Name": "Toki - Single",
          "Price": "\$15.00"
        },
        {
          "Name": "Toki - Double",
          "Price": "\$28.00"
        }
      ]
    }
  }
}

{
  "RoseAndCrownPub": {
    "Location": "EPCOT, World Showcase",
    "DiningType": "Bar/Lounge",
    "MealPeriod": "Bar – Lounge",
    "Menu": {
      "YourShout": [
        {
          "Name": "Cider and Fireball",
          "Description": "Tullamore Dew Irish Whiskey, Fireball Cinnamon Whisky, and Strongbow Cider topped with Ginger Ale",
          "Price": "\$15.00"
        },
        {
          "Name": "Leaping Leprechaun",
          "Description": "Jameson Irish Whiskey, Don Q Cristal Rum, SVEDKA Vodka, Melon Liqueur, and Sweet-and-Sour topped with Sprite®",
          "Price": "\$15.00"
        },
        {
          "Name": "Pimm's Cup",
          "Description": "Pimm's No. 1 and Sprite®",
          "Price": "\$12.50"
        },
        {
          "Name": "Welsh Dragon",
          "Description": "Peach Schnapps, Melon Liqueur, Crème de Menthe, Orange Juice, and Pineapple Juice",
          "Price": "\$13.00"
        }
      ],
      "WineAndSangria": [
        {
          "Name": "Maschio Prosecco, Veneto",
          "Type": "Glass",
          "Price": "\$12.00"
        },
        {
          "Name": "Maschio Prosecco, Veneto",
          "Type": "Bottle",
          "Price": "\$49.00"
        },
        {
          "Name": "Dr. Loosen, Dr. L Riesling, Mosel",
          "Type": "Glass",
          "Price": "\$13.00"
        },
        {
          "Name": "Dr. Loosen, Dr. L Riesling, Mosel",
          "Type": "Bottle",
          "Price": "\$56.00"
        },
        {
          "Name": "Kim Crawford Sauvignon Blanc, Marlborough",
          "Type": "Glass",
          "Price": "\$18.00"
        },
        {
          "Name": "Kim Crawford Sauvignon Blanc, Marlborough",
          "Type": "Bottle",
          "Price": "\$75.00"
        },
        {
          "Name": "Mirassou Pinot Noir, California",
          "Type": "Glass",
          "Price": "\$12.00"
        },
        {
          "Name": "Mirassou Pinot Noir, California",
          "Type": "Bottle",
          "Price": "\$49.00"
        },
        {
          "Name": "Simi Cabernet Sauvignon, Sonoma County",
          "Type": "Glass",
          "Price": "\$18.00"
        },
        {
          "Name": "Simi Cabernet Sauvignon, Sonoma County",
          "Type": "Bottle",
          "Price": "\$75.00"
        },
        {
          "Name": "Opici Family Red Sangria",
          "Description": "made in La Mancha, Spain from Tempranillo grapes and has flavors of raspberry, apple, and blackberry with succulent aromas of natural Valencia oranges and cinnamon",
          "Price": "\$13.00"
        }
      ],
      "AlesLagersAndStouts": [
        {
          "Name": "Imperial Pint",
          "Description": "Bombardier Amber, Smithwick's Ale, Harp Lager, Old Speckled Hen English Pale Ale, Strongbow Hard Cider, or Guinness Stout",
          "Price": "\$11.25"
        },
        {
          "Name": "Imperial Sampler",
          "Description": "Bombardier Amber, Harp Lager, Old Speckled Hen Pale Ale, and Guinness Stout",
          "Price": "\$14.75"
        }
      ],
      "PubBlends": [
        {
          "Name": "Golden Imperial Pint",
          "Description": "Half Harp Lager and Half Bombardier Amber",
          "Price": "\$11.25"
        },
        {
          "Name": "Shandy Imperial Pint",
          "Description": "Half Harp Lager and Half Sprite®",
          "Price": "\$11.25"
        },
        {
          "Name": "Blacksmith Imperial Pint",
          "Description": "Half Smithwick's and Half Guinness Stout",
          "Price": "\$11.25"
        },
        {
          "Name": "Half & Half Imperial Pint",
          "Description": "Half Harp Lager and Half Guinness Stout",
          "Price": "\$11.25"
        },
        {
          "Name": "Bombardier & Guinness Imperial Pint",
          "Description": "Half Bombardier Amber and Half Guinness Stout",
          "Price": "\$11.25"
        },
        {
          "Name": "Cider & Blackcurrant Imperial Pint",
          "Description": "Cider with a shot of Blackcurrant Juice",
          "Price": "\$11.25"
        },
        {
          "Name": "Snake Bite Imperial Pint",
          "Description": "Half Cider and Half Harp Lager",
          "Price": "\$11.25"
        },
        {
          "Name": "Black Velvet Imperial Pint",
          "Description": "Half Cider and Half Guinness Stout",
          "Price": "\$11.25"
        },
        {
          "Name": "Golden Fox Imperial Pint",
          "Description": "Half Old Speckled Hen Pale Ale and Half Bombardier Amber",
          "Price": "\$11.25"
        },
        {
          "Name": "Irish Hen Imperial Pint",
          "Description": "Half Old Speckled Hen Pale Ale and Half Guinness Stout",
          "Price": "\$11.25"
        }
      ],
      "Flights": [
        {
          "Name": "Irish Whiskey Flight",
          "Description": "Tullamore Dew, Jameson, and Bushmills",
          "Price": "\$19.00"
        },
        {
          "Name": "Single Malt Flight",
          "Description": "Glenkinchie, Oban, Lagavulin",
          "Price": "\$22.50"
        },
        {
          "Name": "Johnnie Walker Flight",
          "Description": "Black, Gold, 18 yr",
          "Price": "\$20.00"
        },
        {
          "Name": "The Macallan Flight",
          "Description": "12yr, 15 yr, and 18 yr",
          "Price": "\$26.50"
        }
      ],
      "ScotchWhisky": [
        {
          "Name": "Rotating Scotch Selection",
          "Type": "2-oz pour",
          "Price": "Varies"
        },
        {
          "Name": "The Macallan 12 yr",
          "Price": "\$18.50"
        },
        {
          "Name": "The Macallan 18 yr",
          "Price": "\$40.50"
        },
        {
          "Name": "Lagavulin 16 yr",
          "Price": "\$22.50"
        },
        {
          "Name": "Glenkinchie 12 yr",
          "Price": "\$17.50"
        },
        {
          "Name": "Oban 14 yr",
          "Price": "\$23.50"
        },
        {
          "Name": "Johnnie Walker Blue",
          "Price": "\$40.50"
        }
      ],
      "Cognacs": [
        {
          "Name": "Courvoisier VS",
          "Type": "2-oz pour",
          "Price": "\$16.50"
        }
      ],
      "Beverages": [
        {
          "Name": "Coca-Cola®",
          "Price": "Varies"
        },
        {
          "Name": "Diet Coke®",
          "Price": "Varies"
        },
        {
          "Name": "Sprite®",
          "Price": "Varies"
        }
      ]
    }
  }
}

{
  "AkershusRoyalBanquetHall": {
    "Location": "EPCOT, World Showcase",
    "DiningType": "Character Dining",
    "MealPeriod": "Breakfast",
    "PrincessStorybookDiningPricing": {
      "Adult": "\$55 per adult (ages 10 and up), plus tax and gratuity",
      "Child": "\$35 per child (ages 3-9), plus tax and gratuity"
    },
    "PrincessStorybookDining": [
      "Breakfast Pastries and Accompaniments",
      "Mixed Fruit",
      "Potato Casserole",
      "Scrambled Eggs",
      "Bacon",
      "Sausage",
      "Norwegian Waffles"
    ],
    "PrincessStorybookPlantbasedDining": [
      "Mixed Fruit",
      "Nordic Berry Compote",
      "Plant-based Applecake",
      "Plant-based Waffles",
      "Plant-based Egg Scramble",
      "Home Fry Potatoes",
      "Plant-based Sausage"
    ],
    "NonAlcoholicBeverages": [
      "Assorted Fountain Beverages",
      "Freshly Brewed Joffrey's Coffee™",
      "Twinings® Hot Tea"
    ],
    "AllergyFriendlyOfferings": {
      "Note": "Guests must speak to a Cast Member about their allergy-friendly request",
      "Items": [
        {
          "Name": "Breakfast Pastries and Accompaniments",
          "Allergies": ["Shellfish"]
        },
        {
          "Name": "Mixed Fruit",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Milk", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Scrambled Eggs",
          "Allergies": ["Gluten/Wheat", "Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Potato Casserole",
          "Allergies": ["Fish/Shellfish", "Peanut/Tree Nut", "Sesame"]
        },
        {
          "Name": "Bacon",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Milk", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Sausage",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Milk", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Norwegian Waffles",
          "Allergies": ["Fish/Shellfish", "Peanut/Tree Nut", "Sesame"]
        }
      ]
    }
  }
}

{
  "AkershusRoyalBanquetHall": {
    "Location": "EPCOT, World Showcase",
    "DiningType": "Character Dining",
    "MealPeriod": "Lunch",
    "PrincessStorybookDiningPricing": {
      "Adult": "\$67 per adult (ages 10 and up), plus tax and gratuity",
      "Child": "\$43 per child (ages 3-9), plus tax and gratuity"
    },
    "PrincessStorybookDining": [
      "Bread, Cheeses, and Salad",
      "Kjøttkaker (Norwegian Meatballs)",
      "Potetstappe Med Brun Saus: Mashed Potatoes and Gravy",
      "Stekt Laks: Seared Salmon*",
      "Gulrøtter og Grønne Bønner: Carrots with Green Beans",
      "Kål: Green Cabbage",
      "Kylling: Chicken with Apple and Fennel Preserves",
      "Macaroni & Cheese"
    ],
    "PrincessStorybookPlantbasedDining": [
      "Field Greens",
      "Plant-based Bread",
      "Gulrøtter og Grønne Bønner: Carrots with Green Beans",
      "Kål: Green Cabbage",
      "Olive-oil Mashed Potatoes",
      "Plant-based Bratwurst",
      "Plant-based Gelato"
    ],
    "TheRoyalChefsDessertPlate": "An assortment of Norwegian-inspired Desserts",
    "AllergyFriendlyOfferings": {
      "Note": "Guests must speak to a Cast Member about their allergy-friendly request",
      "Items": [
        {
          "Name": "Mixed Greens",
          "Description": "Spring Mix with Lingonberry Vinaigrette",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Milk", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Lefse",
          "Description": "Norwegian Flatbread",
          "Allergies": ["Egg", "Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Cinnamon Butter",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "KjØttkake: Norwegian Meatballs",
          "Allergies": ["Gluten/Wheat", "Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Potetstappe Med Brun Saus: Mashed Potatoes and Gravy",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Kylling: Chicken with Apple and Fennel Preserves",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Pan-seared Salmon*",
          "Allergies": ["Gluten/Wheat", "Egg", "Milk", "Peanut/Tree Nut", "Sesame", "Shellfish"]
        },
        {
          "Name": "Gulrøtter og Grønne Bønner: Carrots with Green Beans",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Kål: Green Cabbage",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Milk", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Macaroni & Cheese",
          "Allergies": ["Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Plant-based Bratwurst",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Milk", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Rice Cream with Strawberry Sauce",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Chocolate Mousse Cake with Blackberry Cream",
          "Allergies": ["Fish/Shellfish", "Peanut/Tree Nut", "Sesame"]
        },
        {
          "Name": "Plant-based Vanilla Gelato",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Milk", "Peanut/Tree Nut", "Sesame", "Soy"]
        }
      ]
    },
    "NonAlcoholicBeverages": [
      "Assorted Fountain Beverages"
    ],
    "SpecialtyDrinks": [
      {
        "Name": "Northern Light's Cocktail",
        "Description": "Helix7 Vodka, Bols Blue Curaçao Liqueur, Blueberry, Desert Pear, and Sprite® with a souvenir Glow Cube",
        "Price": "\$20.00"
      },
      {
        "Name": "Blue Viking",
        "Description": "This blend of Helix7 Vodka, Don Q Cristal Rum, El Jimador Blanco Tequila, Askur Gin, and Bols Blue Curaçao Liqueur will tame even the mightiest of Norse God thirst",
        "Price": "\$17.00"
      },
      {
        "Name": "The Bifröst",
        "Description": "This blend of LINIE Aquavit Liqueur and Orange Cream with a splash of Grenadine will bring you along the journey between Midgard and Asgard",
        "Price": "\$17.00"
      },
      {
        "Name": "The Stavanger",
        "Description": "A refreshing frozen blend of Helix7 Vodka, LINIE Aquavit Liqueur, and Raspberry",
        "Price": "\$17.00"
      },
      {
        "Name": "The Oslo",
        "Description": "A creation from the capital city, this frozen favorite combines Helix7 Vodka, LINIE Aquavit Liqueur, Bols Crème de Banana Liqueur, and Strawberries",
        "Price": "\$17.00"
      },
      {
        "Name": "Linie Aquavit Glacier Shot",
        "Description": "Tradisjonell Norsk Spirit produced from potatoes and flavored with caraway, aniseed, and orange peel then matured in Oloroso Sherry casks that give the Norwegian Aquavit a golden color and soft notes of vanilla (Product of Norway 41.5% ABV)",
        "Price": "\$12.50"
      }
    ],
    "BeerAndHardCider": [
      {
        "Name": "Einstok White Ale",
        "Price": "\$11.00"
      },
      {
        "Name": "Heineken 0.0 Non-Alcoholic Lager",
        "Price": "\$10.00"
      },
      {
        "Name": "Bud Light Lager",
        "Price": "\$9.25"
      },
      {
        "Name": "Yuengling Traditional Lager",
        "Price": "\$9.75"
      },
      {
        "Name": "Stella Artois Lager",
        "Price": "\$12.25"
      },
      {
        "Name": "Breckenridge Brewery Vanilla Porter",
        "Price": "\$10.00"
      },
      {
        "Name": "Kopparberg Mixed Tropical Fruit Hard Cider",
        "Price": "\$11.00"
      },
      {
        "Name": "Kopparberg Strawberry & Lime Hard Cider",
        "Price": "\$11.00"
      },
      {
        "Name": "Kopparberg Pear Hard Cider",
        "Price": "\$11.00"
      }
    ],
    "RedWineSelections": [
      {
        "Name": "Fess Parker Pinot Noir, Sta. Rita Hills",
        "Bottle": "\$59.00",
        "Glass": "\$15.00"
      },
      {
        "Name": "Conundrum Red Blend, California",
        "Bottle": "\$75.00",
        "Glass": "\$18.00"
      }
    ],
    "WhiteWineSelections": [
      {
        "Name": "Kurt Russell's GoGi Wines Goldie Chardonnay, Santa Rita Hills",
        "Bottle": "\$110.00",
        "Glass": "\$24.00"
      },
      {
        "Name": "Ecco Domani Pinot Grigio, Delle Venezie",
        "Bottle": "\$39.00",
        "Glass": "\$11.00"
      },
      {
        "Name": "Conundrum White Blend, California",
        "Bottle": "\$75.00",
        "Glass": "\$18.00"
      },
      {
        "Name": "Fess Parker Riesling, Santa Barbara County",
        "Bottle": "\$49.00",
        "Glass": "\$12.00"
      }
    ],
    "SparklingWineSelections": [
      {
        "Name": "Banfi Rosa Regale Sparkling Red, Piedmont",
        "Bottle": "\$64.00",
        "Glass": "\$16.00"
      },
      {
        "Name": "Domaine Ste. Michelle Brut, Columbia Valley",
        "Bottle": "\$49.00",
        "Glass": "\$13.00"
      }
    ]
  }
}

{
  "AkershusRoyalBanquetHall": {
    "Location": "EPCOT, World Showcase",
    "DiningType": "Character Dining",
    "MealPeriod": "Dinner",
    "PrincessStorybookDiningPricing": {
      "Adult": "\$67 per adult (ages 10 and up), plus tax and gratuity",
      "Child": "\$43 per child (ages 3-9), plus tax and gratuity"
    },
    "PrincessStorybookDining": [
      "Bread, Cheeses, and Salad",
      "Kjøttkaker (Norwegian Meatballs)",
      "Potetstappe Med Brun Saus: Mashed Potatoes and Gravy",
      "Stekt Laks: Seared Salmon*",
      "Gulrøtter og Grønne Bønner: Carrots with Green Beans",
      "Kål: Green Cabbage",
      "Kylling: Chicken with Apple and Fennel Preserves",
      "Macaroni & Cheese"
    ],
    "PrincessStorybookPlantbasedDining": [
      "Field Greens",
      "Plant-based Bread",
      "Gulrøtter og Grønne Bønner: Carrots with Green Beans",
      "Kål: Green Cabbage",
      "Olive-oil Mashed Potatoes",
      "Plant-based Bratwurst",
      "Plant-based Gelato"
    ],
    "TheRoyalChefsDessertPlate": "An assortment of Norwegian-inspired Desserts",
    "AllergyFriendlyOfferings": {
      "Note": "Guests must speak to a Cast Member about their allergy-friendly request",
      "Items": [
        {
          "Name": "Mixed Greens",
          "Description": "Spring Mix with Lingonberry Vinaigrette",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Milk", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Lefse",
          "Description": "Norwegian Flatbread",
          "Allergies": ["Egg", "Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Cinnamon Butter",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "KjØttkake: Norwegian Meatballs",
          "Allergies": ["Gluten/Wheat", "Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Potetstappe Med Brun Saus: Mashed Potatoes and Gravy",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Kylling: Chicken with Apple and Fennel Preserves",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Pan-seared Salmon*",
          "Allergies": ["Gluten/Wheat", "Egg", "Milk", "Peanut/Tree Nut", "Sesame", "Shellfish"]
        },
        {
          "Name": "Gulrøtter og Grønne Bønner: Carrots with Green Beans",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Kål: Green Cabbage",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Milk", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Macaroni & Cheese",
          "Allergies": ["Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Plant-based Bratwurst",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Milk", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Rice Cream with Strawberry Sauce",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Peanut/Tree Nut", "Sesame", "Soy"]
        },
        {
          "Name": "Chocolate Mousse Cake with Blackberry Cream",
          "Allergies": ["Fish/Shellfish", "Peanut/Tree Nut", "Sesame"]
        },
        {
          "Name": "Plant-based Vanilla Gelato",
          "Allergies": ["Gluten/Wheat", "Egg", "Fish/Shellfish", "Milk", "Peanut/Tree Nut", "Sesame", "Soy"]
        }
      ]
    },
    "NonAlcoholicBeverages": [
      "Assorted Fountain Beverages"
    ],
    "SpecialtyDrinks": [
      {
        "Name": "Northern Light's Cocktail",
        "Description": "Helix7 Vodka, Bols Blue Curaçao Liqueur, Blueberry, Desert Pear, and Sprite® with a souvenir Glow Cube",
        "Price": "\$20.00"
      },
      {
        "Name": "Blue Viking",
        "Description": "This blend of Helix7 Vodka, Don Q Cristal Rum, El Jimador Blanco Tequila, Askur Gin, and Bols Blue Curaçao Liqueur will tame even the mightiest of Norse God thirst",
        "Price": "\$17.00"
      },
      {
        "Name": "The Bifröst",
        "Description": "This blend of LINIE Aquavit Liqueur and Orange Cream with a splash of Grenadine will bring you along the journey between Midgard and Asgard",
        "Price": "\$17.00"
      },
      {
        "Name": "The Stavanger",
        "Description": "A refreshing frozen blend of Helix7 Vodka, LINIE Aquavit Liqueur, and Raspberry",
        "Price": "\$17.00"
      },
      {
        "Name": "The Oslo",
        "Description": "A creation from the capital city, this frozen favorite combines Helix7 Vodka, LINIE Aquavit Liqueur, Bols Crème de Banana Liqueur, and Strawberries",
        "Price": "\$17.00"
      },
      {
        "Name": "Linie Aquavit Glacier Shot",
        "Description": "Tradisjonell Norsk Spirit produced from potatoes and flavored with caraway, aniseed, and orange peel then matured in Oloroso Sherry casks that give the Norwegian Aquavit a golden color and soft notes of vanilla (Product of Norway 41.5% ABV)",
        "Price": "\$12.50"
      }
    ],
    "BeerAndHardCider": [
      {
        "Name": "Einstok White Ale",
        "Price": "\$11.00"
      },
      {
        "Name": "Heineken 0.0 Non-Alcoholic Lager",
        "Price": "\$10.00"
      },
      {
        "Name": "Bud Light Lager",
        "Price": "\$9.25"
      },
      {
        "Name": "Yuengling Traditional Lager",
        "Price": "\$9.75"
      },
      {
        "Name": "Stella Artois Lager",
        "Price": "\$12.25"
      },
      {
        "Name": "Breckenridge Brewery Vanilla Porter",
        "Price": "\$10.00"
      },
      {
        "Name": "Kopparberg Mixed Tropical Fruit Hard Cider",
        "Price": "\$11.00"
      },
      {
        "Name": "Kopparberg Strawberry & Lime Hard Cider",
        "Price": "\$11.00"
      },
      {
        "Name": "Kopparberg Pear Hard Cider",
        "Price": "\$11.00"
      }
    ],
    "RedWineSelections": [
      {
        "Name": "Fess Parker Pinot Noir, Sta. Rita Hills",
        "Bottle": "\$59.00",
        "Glass": "\$15.00"
      },
      {
        "Name": "Conundrum Red Blend, California",
        "Bottle": "\$75.00",
        "Glass": "\$18.00"
      }
    ],
    "WhiteWineSelections": [
      {
        "Name": "Kurt Russell's GoGi Wines Goldie Chardonnay, Santa Rita Hills",
        "Bottle": "\$110.00",
        "Glass": "\$24.00"
      },
      {
        "Name": "Ecco Domani Pinot Grigio, Delle Venezie",
        "Bottle": "\$39.00",
        "Glass": "\$11.00"
      },
      {
        "Name": "Conundrum White Blend, California",
        "Bottle": "\$75.00",
        "Glass": "\$18.00"
      },
      {
        "Name": "Fess Parker Riesling, Santa Barbara County",
        "Bottle": "\$49.00",
        "Glass": "\$12.00"
      }
    ],
    "SparklingWineSelections": [
      {
        "Name": "Banfi Rosa Regale Sparkling Red, Piedmont",
        "Bottle": "\$64.00",
        "Glass": "\$16.00"
      },
      {
        "Name": "Domaine Ste. Michelle Brut, Columbia Valley",
        "Bottle": "\$49.00",
        "Glass": "\$13.00"
      }
    ]
  }
}


{
  "LaHaciendaDeSanAngel": {
    "Location": "EPCOT, World Showcase",
    "DiningType": "Casual Dining",
    "MealPeriod": "Dinner",
    "Menu": {
      "Starters": [
        {
          "Name": "Guacamole",
          "Description": "With diced mango and corn chips. Add Chipotle Bacon +3 | Add Chorizo +4",
          "Price": "\$15.00"
        },
        {
          "Name": "Flautas",
          "Description": "Fried tortillas filled with chipotle chicken, potato, and cheese topped with romaine, crema Mexicana and ranchera sauce",
          "Price": "\$16.00"
        },
        {
          "Name": "Totopos",
          "Description": "Corn tortillas with sides of white cheddar cheese and salsa",
          "Price": "\$9.00"
        },
        {
          "Name": "Queso Fundido",
          "Description": "Melted cheese with chorizo, peppers, onions, and avocado mousse, served with flour tortillas",
          "Price": "\$16.00"
        },
        {
          "Name": "Tlayuda",
          "Description": "Oaxacan tostada, guacamole, salsa macha, marinated tuna, jicama, pumpkin seeds, sesame seeds and chipotle aioli",
          "Price": "\$16.00"
        },
        {
          "Name": "Ensalada Hacienda",
          "Description": "Arugula, watermelon, pumpkin seeds, sesame seeds and queso fresco with a lime oregano vinaigrette",
          "Price": "\$14.00"
        },
        {
          "Name": "Tlacoyo con Carnitas",
          "Description": "Fried masa topped with beans, pork carnitas, salsa verde, cotija cheese and pickled onions",
          "Price": "\$15.00"
        }
      ],
      "HouseSpecialties": [
        {
          "Name": "Pescado del Día",
          "Description": "Market fresh Catch of the Day",
          "Price": "\$42.00"
        },
        {
          "Name": "Osso Buco a la Mexicana",
          "Description": "Braised short rib with whipped potatoes, carrots and roasted asparagus (This offering is not included in the Disney Dining Plan)",
          "Price": "\$49.00"
        },
        {
          "Name": "Carne Asada*",
          "Description": "Ancho Agave marinated New York Strip, roasted Asparagus and Poblano Gratin Potatoes (This offering is not included in the Disney Dining Plan)",
          "Price": "\$54.00"
        },
        {
          "Name": "Parrillada del Mar",
          "Description": "(Serves Two) Grilled Shrimp, Fish and Scallops served with Vegetables, Esquites, and Corn Tortillas | Substitute NY Strip for fish +30",
          "Price": "\$72.00"
        },
        {
          "Name": "Tomahawk Steak*",
          "Description": "Tomahawk ribeye with whipped potatoes, esquites, mushrooms and grilled vegetables (This offering is not included in the Disney Dining Plan)",
          "Price": "\$120.00"
        }
      ],
      "Entrées": [
        {
          "Name": "Pollo Poblano",
          "Description": "Roasted chicken breast with Poblano cream sauce served with baby zucchini, sweet potatoes and oyster mushrooms",
          "Price": "\$32.00"
        },
        {
          "Name": "Alambre de Res*",
          "Description": "Seared Tenderloin, Bacon, Poblano and Bell Peppers, Onions, Monterey Jack cheese and Salsa Verde with Rice and Flour Tortillas",
          "Price": "\$35.00"
        },
        {
          "Name": "Tacos de Camarónes",
          "Description": "Fried shrimp, Chipotle-Lime Aioli, Cabbage and salsa verde in flour tortillas with rice",
          "Price": "\$32.00"
        },
        {
          "Name": "Tacos de Langosta",
          "Description": "Fried lobster in flour tortillas, shredded cabbage, chipotle aioli, salsa verde and mango relish. Served with rice",
          "Price": "\$38.00"
        },
        {
          "Name": "Enchiladas de Chorizo",
          "Description": "Corn tortillas filled with plant-based chorizo, atop beans, covered with Ranchera salsa, Monterey Jack cheese, crema Mexicana, cotija cheese and crispy onions. Served with plantains with crema Mexicana and cotija cheese",
          "Price": "\$30.00"
        },
        {
          "Name": "Tacos al Pastor",
          "Description": "Marinated and seared pork topped with grilled pineapple, onions and cilantro. Served with plantains with crema Mexicana and cotija cheese. Sides of guacamole, rice and corn tortillas",
          "Price": "\$34.00"
        }
      ],
      "Sides": [
        {
          "Name": "Plantains",
          "Price": "\$5.00"
        },
        {
          "Name": "Rice",
          "Price": "\$5.00"
        },
        {
          "Name": "Beans",
          "Price": "\$5.00"
        },
        {
          "Name": "Roasted Asparagus",
          "Price": "\$7.00"
        },
        {
          "Name": "Poblano Gratin Potatoes",
          "Price": "\$7.00"
        }
      ],
      "Desserts": [
        {
          "Name": "Flan",
          "Description": "Vanilla flan with toasted almonds, berries and whipped cream",
          "Price": "\$12.00"
        },
        {
          "Name": "Pan de Elotes Tres Leches",
          "Description": "Rice milk-soaked Mexican corn bread topped with sweetcorn gelato and toasted almonds",
          "Price": "\$12.00"
        },
        {
          "Name": "Helado De Palomitas",
          "Description": "Sweet corn ice cream with popcorn and chile powder",
          "Price": "\$10.00"
        },
        {
          "Name": "Nieve",
          "Description": "Seasonal Mexican flavored sorbet",
          "Price": "\$10.00"
        },
        {
          "Name": "Helado con Churros",
          "Description": "Dulce de Leche ice cream with churros and cajeta",
          "Price": "\$11.00"
        }
      ],
      "KidsAppetizers": [
        {
          "Name": "Jr Garden Salad",
          "Description": "Chopped Romaine Lettuce and Tomato topped with Queso Fresco and choice of dressing",
          "Price": "\$4.00"
        },
        {
          "Name": "Fruit",
          "Description": "Chef's Selection",
          "Price": "\$3.50"
        }
      ],
      "KidsCreateYourOwnEntrées": [
        {
          "Name": "Beef Tacos",
          "Description": "Two flour tortillas filled with shaved ribeye and choice of fountain soda, milk, or small water",
          "Price": "\$16.00"
        },
        {
          "Name": "Tacos",
          "Description": "Two flour tortillas filled with grilled chicken and choice of fountain soda, milk, or small water",
          "Price": "\$13.50"
        },
        {
          "Name": "Quesadillas",
          "Description": "Two flour tortillas filled with Monterey Jack and grilled golden brown and choice of fountain soda, milk, or small water",
          "Price": "\$12.00"
        },
        {
          "Name": "Grilled Chicken Breast",
          "Description": "Served with choice of fountain soda, milk, or small water",
          "Price": "\$13.25"
        },
        {
          "Name": "Chicken Tenders",
          "Description": "Breaded and fried chicken tenderloins served with choice of fountain soda, milk, or small water",
          "Price": "\$13.00"
        },
        {
          "Name": "Macaroni & Cheese",
          "Description": "Cavatappi pasta in a rich white cheddar sauce and served with choice of fountain soda, milk, or small water",
          "Price": "\$13.00"
        }
      ],
      "KidsCreateYourOwnSelections": [
        "Green Beans",
        "Corn",
        "Rice",
        "Fruit"
      ],
      "KidsDesserts": [
        {
          "Name": "Chocolate Brownie",
          "Price": "\$6.00"
        },
        {
          "Name": "Dulce de Leche Ice Cream",
          "Price": "\$5.00"
        }
      ],
      "HandcraftedPremiumMargaritas": [
        {
          "Name": "San Angel Inn Margarita",
          "Description": "Centinela añejo tequila, Alma Finca orange liqueur, rosé wine, Abasolo corn whiskey, fresh lime juice, black ant salt rim (This offering is not included in the Disney Dining Plan)",
          "Price": "\$24.00"
        },
        {
          "Name": "La Cava Avocado",
          "Description": "Tromba blanco tequila, melon-orange liqueur, fresh avocado, lime juice, hibiscus salt rim",
          "Price": "\$18.50"
        },
        {
          "Name": "El Diablo",
          "Description": "Lalo blanco tequila, Dos Hombres mezcal, fresh lime juice, cucumber-jalapeño juice, hibiscus salt rim",
          "Price": "\$18.00"
        },
        {
          "Name": "The Cucumber",
          "Description": "Tromba blanco tequila, fresh cucumber and lime juice, vodka, Abasolo corn whiskey, Rhubarb bitters, Tajín chile-lime powder rim",
          "Price": "\$18.00"
        },
        {
          "Name": "Blood Orange",
          "Description": "Tromba blanco tequila, blood orange vodka, gin, LeJay black currant liqueur, Dos Hombres mezcal, Tajín chile-lime powder rim",
          "Price": "\$18.50"
        },
        {
          "Name": "The Wild One",
          "Description": "Centinela blanco tequila, Combier orange liqueur, ginger rum, corn passion fruit cordial, lime juice, Dos Hombres mezcal, grenadine, hibiscus salt rim",
          "Price": "\$18.00"
        },
        {
          "Name": "Clásica",
          "Description": "Centinela blanco tequila, orange liqueur, lime juice, agave, salt rim",
          "Price": "\$17.00"
        },
        {
          "Name": "La Hacienda Smoked Old Fashioned",
          "Description": "Aged in house, Rough Rider bourbon, ilegal reposado mezcal private barrel, Ancho Reyes barrica chile liqueur, Nixta elote liqueur, chocolate-mole bitters (This offering is not included in the Disney Dining Plan)",
          "Price": "\$28.00"
        },
        {
          "Name": "La Paloma",
          "Description": "Lalo blanco tequila, Fever-Tree grapefruit soda, fresh lime, Dos Hombres mezcal, Tajín chile-lime powder rim",
          "Price": "\$19.00"
        },
        {
          "Name": "La Flaca",
          "Description": "Fever-Tree Lime Yuzu soda, Tromba reposado tequila, fresh lime juice, splash of agave nectar",
          "Price": "\$20.00"
        }
      ]
    }
  }
}

{
  "ConnectionsEatery": {
    "Location": "EPCOT, World Celebration",
    "DiningType": "Quick Service Restaurant",
    "MealPeriod": "Lunch And Dinner",
    "Menu": {
      "BurgersAndChicken": [
        {
          "Name": "French Bistro Burger",
          "Description": "Gourmet Beef Blend, Caramelized Onions, Bacon, Brie, Mushrooms, Dijon Mayonnaise, Toasted Brioche Bun",
          "Price": "\$14.29"
        },
        {
          "Name": "American Classic Burger",
          "Description": "Gourmet Beef Blend, Lettuce, Pickle, Tomato, and Cheddar on a Toasted Bun",
          "Price": "\$13.29"
        },
        {
          "Name": "Korean BBQ Chicken Sandwich",
          "Description": "Korean BBQ Chicken Sandwich with Pickled Cucumbers on a Brioche Bun",
          "Price": "\$12.49"
        },
        {
          "Name": "Hand-breaded Chicken Sandwich",
          "Description": "House-made Pickles, Zesty Sauce, Toasted Brioche Bun",
          "Price": "\$12.49"
        }
      ],
      "Pizza": [
        {
          "Name": "Margherita Pizza",
          "Description": "Two slices of Freshly Baked Pizza topped with San Marzano Tomato-Basil Sauce, Roma Tomatoes, Mozzarella, and Basil",
          "Price": "\$11.79"
        },
        {
          "Name": "Pepperoni Pizza",
          "Description": "Two slices of Freshly Baked Pizza topped with Pepperoni, San Marzano Tomato-Basil Sauce, and Cheese Blend",
          "Price": "\$11.79"
        },
        {
          "Name": "Cheese Pizza",
          "Description": "Two slices of Freshly Baked Pizza topped with San Marzano Tomato-Basil Sauce and Cheese Blend",
          "Price": "\$11.29"
        }
      ],
      "Salad": [
        {
          "Name": "General Tso Chicken Salad",
          "Description": "Petite Kale Blend, Romaine, Broccoli Slaw, Red Bell Pepper, Mandarin Oranges, Edamame, Crispy Wontons, Warm Fried Chicken, General Tso’s Dressing",
          "Price": "\$12.29"
        },
        {
          "Name": "Niçoise-style Salad with Seared Tuna*",
          "Description": "Crispy Mixed Greens, Wedged Potatoes, Tomatoes, Olives, Green Beans, White Beans, Dijon Vinaigrette, Tuna",
          "Price": "\$12.99"
        },
        {
          "Name": "Niçoise-style Salad",
          "Description": "Crispy Mixed Greens, Romaine, Wedged Potatoes, Tomatoes, Green Beans, Olives, White Beans, Dijon Vinaigrette (Plant-based)",
          "Price": "\$10.99"
        }
      ],
      "Plant-based": [
        {
          "Name": "Black Bean Burger",
          "Description": "House-made Black Bean Burger, Lettuce, Tomato, Guacamole, Chipotle Sauce, Toasted Brioche Bun",
          "Price": "\$13.49"
        }
      ],
      "Sides": [
        {
          "Name": "Coleslaw",
          "Price": "\$4.99"
        },
        {
          "Name": "French Fries",
          "Price": "\$4.99"
        },
        {
          "Name": "A Cuties® Mandarin",
          "Price": "\$1.99"
        }
      ],
      "KidsDisneyCheckMeals": [
        {
          "Name": "Cheeseburger",
          "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions",
          "Price": "\$8.49"
        },
        {
          "Name": "Chicken Skewer",
          "Description": "Marinated Chicken Breast Skewer served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions",
          "Price": "\$7.79"
        }
      ],
      "KidsMeals": [
        {
          "Name": "Chicken Strips",
          "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
          "Price": "\$8.49"
        },
        {
          "Name": "Cheese Pizza",
          "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
          "Price": "\$7.79"
        }
      ],
      "Dessert": [
        {
          "Name": "Chocolate-Matcha Baumkuchen",
          "Description": "Matcha Baumkuchen coated in Chocolate",
          "Price": "\$5.99"
        },
        {
          "Name": "Liege Waffle",
          "Description": "Brioche Dough with Pearl Sugar, Strawberries, Whipped Cream, Chocolate Sauce",
          "Price": "\$5.49"
        }
      ],
      "Shakes": [
        {
          "Name": "Apple Pie Gelato Shake",
          "Price": "\$7.49"
        },
        {
          "Name": "Madagascar Vanilla Milk Shake",
          "Price": "\$7.49"
        },
        {
          "Name": "Mango-Coconut Milk Shake",
          "Description": "Topped with Pomegranate-Molasses Drizzle (Plant-based)",
          "Price": "\$7.49"
        }
      ],
      "Beverages": [
        {
          "Name": "Assorted Fountain Beverages",
          "Description": "Assorted Coca-Cola® Offerings",
          "Price": "\$4.49"
        },
        {
          "Name": "Blackberry Lemonade",
          "Description": "Minute Maid® Lemonade, Lime Juice, Blackberry Syrup, and Frosted Mint Syrup",
          "Price": "\$5.79"
        },
        {
          "Name": "smartwater®",
          "Price": "\$5.75"
        },
        {
          "Name": "Watermelon-Mint Agua Fresca",
          "Price": "\$5.79"
        },
        {
          "Name": "DASANI® Bottled Water",
          "Price": "\$3.75"
        },
        {
          "Name": "Lowfat Milk",
          "Price": "\$2.29"
        },
        {
          "Name": "Small Chocolate Milk",
          "Price": "\$2.29"
        }
      ],
      "HotBeverages": [
        {
          "Name": "Freshly Brewed Joffrey's Coffee™ Decaf",
          "Price": "\$3.79"
        },
        {
          "Name": "Freshly Brewed Joffery's Coffee™ Regular",
          "Price": "\$3.79"
        },
        {
          "Name": "Hot Cocoa",
          "Price": "\$3.79"
        },
        {
          "Name": "Twinings® Hot Tea",
          "Price": "\$3.79"
        }
      ],
      "Beer": [
        {
          "Name": "Cigar City Jai Alai IPA - Tampa, FL",
          "Description": "20-oz Draft - This bigger brother to the Pale Ale employs a significant amount of Hops with high bitterness and Citrus and Floral aromas",
          "Price": "\$11.25"
        },
        {
          "Name": "Angry Orchard Crisp Apple Hard Cider - Cincinnati, OH",
          "Description": "20-oz Draft - Sweet and refreshing, a favorite since Colonial times",
          "Price": "\$10.50"
        },
        {
          "Name": "Yuengling Traditional Lager – Pottsville, PA",
          "Description": "20-oz Draft - Fuller flavored with a higher malt presence than Pale Lagers",
          "Price": "\$10.00"
        },
        {
          "Name": "Bud Light Lager – St. Louis, MO",
          "Description": "20-oz Draft - Golden colored with flavors that are dry, clean, crisp and refreshing with subtle bitterness",
          "Price": "\$10.00"
        }
      ],
      "Wine": [
        {
          "Name": "Acrobat Pinot Noir, Oregon",
          "Description": "5-oz Glass of Pinot Noir - Flavors of ripe strawberry and dark chocolate, with notes of cherry, cinnamon, and vanilla on the nose",
          "Price": "\$14.00"
        },
        {
          "Name": "Broadside Cabernet Sauvignon, California",
          "Description": "5-oz Glass of Cabernet Sauvignon - Flavors of plum and dark chocolate with aromas of strawberry and cedar",
          "Price": "\$11.00"
        },
        {
          "Name": "Hess Shirtail Creek Chardonnay, California",
          "Description": "5-oz Glass of Chardonnay - Crisp acidity with notes of green apple and tropical fruit",
          "Price": "\$13.00"
        },
        {
          "Name": "Rainstorm Pinot Noir Rosé, Oregon",
          "Description": "5-oz Glass of Pinot Noir Rosé - Vibrate pink hue with notes of strawberry, rose petal, and pomegranate on the nose",
          "Price": "\$12.00"
        }
      ],
      "BeveragesWithAlcohol": [
        {
          "Name": "Mango Mai Tai",
          "Description": "Bacardí Superior Rum, Myers's Original Dark Rum, Orgeat (Almond), Mango, Pineapple, and Lime Juices, and Grenadine",
          "Price": "\$15.00"
        },
        {
          "Name": "Blackberry Caipiroska",
          "Description": "Tito’s Handmade Vodka, Minute Maid® Lemonade, Strawberries, Blackberry Syrup, and Frosted Mint Syrup",
          "Price": "\$15.00"
        }
      ]
    }
  }
}

{
  "AllergyFriendlyOptions": {
    "GlutenWheatAllergyFriendly": [
      {
        "Name": "French Bistro Burger - Gluten/Wheat Allergy-Friendly",
        "Description": "Gourmet Beef Blend, Caramelized Onions, Bacon, Brie, Mushrooms, Dijon Mayonnaise, Allergy-Friendly Bun",
        "Price": "\$14.29"
      },
      {
        "Name": "American Classic Burger - Gluten/Wheat Allergy-Friendly",
        "Description": "Gourmet Beef Blend, Lettuce, Pickle, Tomato, and Cheddar on an Allergy-Friendly Bun",
        "Price": "\$13.29"
      },
      {
        "Name": "Niçoise-style Salad with Seared Tuna* - Gluten/Wheat Allergy-Friendly",
        "Description": "Crispy Mixed Greens, Wedged Potatoes, Tomatoes, Olives, Green Beans, White Beans, Dijon Vinaigrette, Tuna",
        "Price": "\$12.99"
      },
      {
        "Name": "Niçoise-style Salad - Gluten/Wheat Allergy-Friendly",
        "Description": "Crispy Mixed Greens, Romaine, Wedged Potatoes, Tomatoes, Green Beans, Olives, White Beans, Dijon Vinaigrette (Plant-based)",
        "Price": "\$10.99"
      },
      {
        "Name": "Allergy-Friendly Kids' Chicken Strips - Gluten/Wheat Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$8.49"
      },
      {
        "Name": "Kids' Cheeseburger - Gluten/Wheat Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$8.49"
      },
      {
        "Name": "Kids' Chicken Skewer - Gluten/Wheat Allergy-Friendly",
        "Description": "Marinated Chicken Breast Skewer served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions",
        "Price": "\$7.79"
      },
      {
        "Name": "Coleslaw (Side) - Gluten/Wheat Allergy-Friendly",
        "Price": "\$4.99"
      },
      {
        "Name": "French Fries (Side) - Gluten/Wheat Allergy-Friendly",
        "Price": "\$4.99"
      },
      {
        "Name": "A Cuties® Mandarin (Side) - Gluten/Wheat Allergy-Friendly",
        "Price": "\$1.99"
      }
    ],
    "EggAllergyFriendly": [
      {
        "Name": "French Bistro Burger - Egg Allergy-Friendly",
        "Description": "Gourmet Beef Blend, Caramelized Onions, Bacon, Brie, Mushrooms, Dijon Mayonnaise, Toasted Brioche Bun",
        "Price": "\$14.29"
      },
      {
        "Name": "Black Bean Burger - Egg Allergy-Friendly",
        "Description": "House-made Black Bean Burger, Lettuce, Tomato, Guacamole, Chipotle Sauce, Toasted Brioche Bun",
        "Price": "\$13.49"
      },
      {
        "Name": "American Classic Burger - Egg Allergy-Friendly",
        "Description": "Gourmet Beef Blend, Lettuce, Pickle, Tomato, and Cheddar on a Toasted Bun",
        "Price": "\$13.29"
      },
      {
        "Name": "Niçoise-style Salad with Seared Tuna* - Egg Allergy-Friendly",
        "Description": "Crispy Mixed Greens, Wedged Potatoes, Tomatoes, Olives, Green Beans, White Beans, Dijon Vinaigrette, Tuna",
        "Price": "\$12.99"
      },
      {
        "Name": "Hand-breaded Chicken Sandwich - Egg Allergy-Friendly",
        "Description": "House-made Pickles, Zesty Sauce, Toasted Brioche Bun",
        "Price": "\$12.49"
      },
      {
        "Name": "General Tso Chicken Salad - Egg Allergy-Friendly",
        "Description": "Petite Kale Blend, Romaine, Broccoli Slaw, Red Bell Pepper, Mandarin Oranges, Edamame, Crispy Wontons, Warm Fried Chicken, General Tso's Dressing",
        "Price": "\$12.29"
      },
      {
        "Name": "Margherita Pizza - Egg Allergy-Friendly",
        "Description": "Two slices of Freshly Baked Pizza topped with San Marzano Tomato-Basil Sauce, Roma Tomatoes, Mozzarella, and Basil",
        "Price": "\$11.79"
      },
      {
        "Name": "Pepperoni Pizza - Egg Allergy-Friendly",
        "Description": "Two slices of Freshly Baked Pizza topped with Pepperoni, San Marzano Tomato-Basil Sauce, and Cheese Blend",
        "Price": "\$11.79"
      },
      {
        "Name": "Cheese Pizza - Egg Allergy-Friendly",
        "Description": "Two slices of Freshly Baked Pizza topped with San Marzano Tomato-Basil Sauce and Cheese Blend",
        "Price": "\$11.29"
      },
      {
        "Name": "Niçoise-style Salad - Egg Allergy-Friendly",
        "Description": "Crispy Mixed Greens, Romaine, Wedged Potatoes, Tomatoes, Green Beans, Olives, White Beans, Dijon Vinaigrette (Plant-based)",
        "Price": "\$10.99"
      },
      {
        "Name": "Kids' Cheeseburger - Egg Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$8.49"
      },
      {
        "Name": "Kids' Chicken Strips - Egg Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$8.49"
      },
      {
        "Name": "Kids' Cheese Pizza - Egg Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$7.79"
      },
      {
        "Name": "Kids' Chicken Skewer - Egg Allergy-Friendly",
        "Description": "Marinated Chicken Breast Skewer served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions",
        "Price": "\$7.79"
      },
      {
        "Name": "Coleslaw (Side) - Egg Allergy-Friendly",
        "Price": "\$4.99"
      },
      {
        "Name": "French Fries (Side) - Egg Allergy-Friendly",
        "Price": "\$4.99"
      },
      {
        "Name": "A Cuties® Mandarin (Side) - Egg Allergy-Friendly",
        "Price": "\$1.99"
      }
    ],
    "FishShellfishAllergyFriendly": [
      {
        "Name": "French Bistro Burger - Fish/Shellfish Allergy-Friendly",
        "Description": "Gourmet Beef Blend, Caramelized Onions, Bacon, Brie, Mushrooms, Dijon Mayonnaise, Toasted Brioche Bun",
        "Price": "\$14.29"
      },
      {
        "Name": "Black Bean Burger - Fish/Shellfish Allergy-Friendly",
        "Description": "House-made Black Bean Burger, Lettuce, Tomato, Guacamole, Chipotle Sauce, Toasted Brioche Bun",
        "Price": "\$13.49"
      },
      {
        "Name": "American Classic Burger - Fish/Shellfish Allergy-Friendly",
        "Description": "Gourmet Beef Blend, Lettuce, Pickle, Tomato, and Cheddar on a Toasted Bun",
        "Price": "\$13.29"
      },
      {
        "Name": "Hand-breaded Chicken Sandwich - Fish/Shellfish Allergy-Friendly",
        "Description": "House-made Pickles, Zesty Sauce, Toasted Brioche Bun",
        "Price": "\$12.49"
      },
      {
        "Name": "General Tso Chicken Salad - Fish/Shellfish Allergy-Friendly",
        "Description": "Petite Kale Blend, Romaine, Broccoli Slaw, Red Bell Pepper, Mandarin Oranges, Edamame, Crispy Wontons, Warm Fried Chicken, General Tso's Dressing",
        "Price": "\$12.29"
      },
      {
        "Name": "Pepperoni Pizza - Fish/Shellfish Allergy-Friendly",
        "Description": "Two slices of Freshly Baked Pizza topped with Pepperoni, San Marzano Tomato-Basil Sauce, and Cheese Blend",
        "Price": "\$11.79"
      },
      {
        "Name": "Cheese Pizza - Fish/Shellfish Allergy-Friendly",
        "Description": "Two slices of Freshly Baked Pizza topped with San Marzano Tomato-Basil Sauce and Cheese Blend",
        "Price": "\$11.29"
      },
      {
        "Name": "Niçoise-style Salad - Fish/Shellfish Allergy-Friendly",
        "Description": "Crispy Mixed Greens, Romaine, Wedged Potatoes, Tomatoes, Green Beans, Olives, White Beans, Dijon Vinaigrette (Plant-based)",
        "Price": "\$10.99"
      },
      {
        "Name": "Kids' Cheeseburger - Fish/Shellfish Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$8.49"
      },
      {
        "Name": "Kids' Chicken Strips - Fish/Shellfish Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$8.49"
      },
      {
        "Name": "Kids' Cheese Pizza - Fish/Shellfish Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$7.79"
      },
      {
        "Name": "Kids' Chicken Skewer - Fish/Shellfish Allergy-Friendly",
        "Description": "Marinated Chicken Breast Skewer served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions",
        "Price": "\$7.79"
      },
      {
        "Name": "Liege Waffle - Fish/Shellfish Allergy-Friendly",
        "Description": "Brioche Dough with Pearl Sugar, Strawberries, Whipped Cream, Chocolate Sauce",
        "Price": "\$5.49"
      },
      {
        "Name": "Coleslaw (Side) - Fish/Shellfish Allergy-Friendly",
        "Price": "\$4.99"
      },
      {
        "Name": "French Fries (Side) - Fish/Shellfish Allergy-Friendly",
        "Price": "\$4.99"
      },
      {
        "Name": "A Cuties® Mandarin (Side) - Fish/Shellfish Allergy-Friendly",
        "Price": "\$1.99"
      }
    ],
    "MilkAllergyFriendly": [
      {
        "Name": "Black Bean Burger - Milk Allergy-Friendly",
        "Description": "House-made Black Bean Burger, Lettuce, Tomato, Guacamole, Chipotle Sauce, Toasted Brioche Bun",
        "Price": "\$13.49"
      },
      {
        "Name": "Niçoise-style Salad with Seared Tuna* - Milk Allergy-Friendly",
        "Description": "Crispy Mixed Greens, Wedged Potatoes, Tomatoes, Olives, Green Beans, White Beans, Dijon Vinaigrette, Tuna",
        "Price": "\$12.99"
      },
      {
        "Name": "General Tso Chicken Salad - Milk Allergy-Friendly",
        "Description": "Petite Kale Blend, Romaine, Broccoli Slaw, Red Bell Pepper, Mandarin Oranges, Edamame, Crispy Wontons, Warm Fried Chicken, General Tso's Dressing",
        "Price": "\$12.29"
      },
      {
        "Name": "Niçoise-style Salad - Milk Allergy-Friendly",
        "Description": "Crispy Mixed Greens, Romaine, Wedged Potatoes, Tomatoes, Green Beans, Olives, White Beans, Dijon Vinaigrette (Plant-based)",
        "Price": "\$10.99"
      },
      {
        "Name": "Kids' Chicken Strips - Milk Allergy-Friendly",
        "Description": "Served with choice of two Sides and a Small DASANI® Bottled Water",
        "Price": "\$8.49"
      },
      {
        "Name": "Kids' Hamburger - Milk Allergy-Friendly",
        "Description": "Served with choice of two Sides and a Small DASANI® Bottled Water",
        "Price": "\$8.49"
      },
      {
        "Name": "Coleslaw (Side) - Milk Allergy-Friendly",
        "Price": "\$4.99"
      },

      {
  "AllergyFriendlyOptions": {
    "PeanutTreeNutAllergyFriendly": [
      {
        "Name": "French Bistro Burger - Peanut/Tree Nut Allergy-Friendly",
        "Description": "Gourmet Beef Blend, Caramelized Onions, Bacon, Brie, Mushrooms, Dijon Mayonnaise, Toasted Brioche Bun",
        "Price": "\$14.29"
      },
      {
        "Name": "American Classic Burger - Peanut/Tree Nut Allergy-Friendly",
        "Description": "Gourmet Beef Blend, Lettuce, Pickle, Tomato, and Cheddar on a Toasted Bun",
        "Price": "\$13.29"
      },
      {
        "Name": "Niçoise-style Salad with Seared Tuna* - Peanut/Tree Nut Allergy-Friendly",
        "Description": "Crispy Mixed Greens, Wedged Potatoes, Tomatoes, Olives, Green Beans, White Beans, Dijon Vinaigrette, Tuna",
        "Price": "\$12.99"
      },
      {
        "Name": "Hand-breaded Chicken Sandwich - Peanut/Tree Nut Allergy-Friendly",
        "Description": "House-made Pickles, Zesty Sauce, Toasted Brioche Bun",
        "Price": "\$12.49"
      },
      {
        "Name": "General Tso Chicken Salad - Peanut/Tree Nut Allergy-Friendly",
        "Description": "Petite Kale Blend, Romaine, Broccoli Slaw, Red Bell Pepper, Mandarin Oranges, Edamame, Crispy Wontons, Warm Fried Chicken, General Tso's Dressing",
        "Price": "\$12.29"
      },
      {
        "Name": "Margherita Pizza - Peanut/Tree Nut Allergy-Friendly",
        "Description": "Two slices of Freshly Baked Pizza topped with San Marzano Tomato-Basil Sauce, Roma Tomatoes, Mozzarella, and Basil",
        "Price": "\$11.79"
      },
      {
        "Name": "Pepperoni Pizza - Peanut/Tree Nut Allergy-Friendly",
        "Description": "Two slices of Freshly Baked Pizza topped with Pepperoni, San Marzano Tomato-Basil Sauce, and Cheese Blend",
        "Price": "\$11.79"
      },
      {
        "Name": "Cheese Pizza - Peanut/Tree Nut Allergy-Friendly",
        "Description": "Two slices of Freshly Baked Pizza topped with San Marzano Tomato-Basil Sauce and Cheese Blend",
        "Price": "\$11.29"
      },
      {
        "Name": "Niçoise-style Salad - Peanut/Tree Nut Allergy-Friendly",
        "Description": "Crispy Mixed Greens, Romaine, Wedged Potatoes, Tomatoes, Green Beans, Olives, White Beans, Dijon Vinaigrette (Plant-based)",
        "Price": "\$10.99"
      },
      {
        "Name": "Kids' Cheeseburger - Peanut/Tree Nut Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$8.49"
      },
      {
        "Name": "Kids' Chicken Strips - Peanut/Tree Nut Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$8.49"
      },
      {
        "Name": "Kids' Cheese Pizza - Peanut/Tree Nut Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$7.79"
      },
      {
        "Name": "Kids' Chicken Skewer - Peanut/Tree Nut Allergy-Friendly",
        "Description": "Marinated Chicken Breast Skewer served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions",
        "Price": "\$7.79"
      },
      {
        "Name": "Coleslaw (Side) - Peanut/Tree Nut Allergy-Friendly",
        "Price": "\$4.99"
      },
      {
        "Name": "French Fries (Side) - Peanut/Tree Nut Allergy-Friendly",
        "Price": "\$4.99"
      },
      {
        "Name": "A Cuties® Mandarin (Side) - Peanut/Tree Nut Allergy-Friendly",
        "Price": "\$1.99"
      }
    ],
    "SesameAllergyFriendly": [
      {
        "Name": "French Bistro Burger - Sesame Allergy-Friendly",
        "Description": "Gourmet Beef Blend, Caramelized Onions, Bacon, Brie, Mushrooms, Dijon Mayonnaise, Toasted Brioche Bun",
        "Price": "\$14.29"
      },
      {
        "Name": "Black Bean Burger - Sesame Allergy-Friendly",
        "Description": "House-made Black Bean Burger, Lettuce, Tomato, Guacamole, Chipotle Sauce, Toasted Brioche Bun",
        "Price": "\$13.49"
      },
      {
        "Name": "American Classic Burger - Sesame Allergy-Friendly",
        "Description": "Gourmet Beef Blend, Lettuce, Pickle, Tomato, and Cheddar on a Toasted Bun",
        "Price": "\$13.29"
      },
      {
        "Name": "Niçoise-style Salad with Seared Tuna* - Sesame Allergy-Friendly",
        "Description": "Crispy Mixed Greens, Wedged Potatoes, Tomatoes, Olives, Green Beans, White Beans, Dijon Vinaigrette, Tuna",
        "Price": "\$12.99"
      },
      {
        "Name": "Hand-breaded Chicken Sandwich - Sesame Allergy-Friendly",
        "Description": "House-made Pickles, Zesty Sauce, Toasted Brioche Bun",
        "Price": "\$12.49"
      },
      {
        "Name": "Margherita Pizza - Sesame Allergy-Friendly",
        "Description": "Two slices of Freshly Baked Pizza topped with San Marzano Tomato-Basil Sauce, Roma Tomatoes, Mozzarella, and Basil",
        "Price": "\$11.79"
      },
      {
        "Name": "Pepperoni Pizza - Sesame Allergy-Friendly",
        "Description": "Two slices of Freshly Baked Pizza topped with Pepperoni, San Marzano Tomato-Basil Sauce, and Cheese Blend",
        "Price": "\$11.79"
      },
      {
        "Name": "Cheese Pizza - Sesame Allergy-Friendly",
        "Description": "Two slices of Freshly Baked Pizza topped with San Marzano Tomato-Basil Sauce and Cheese Blend",
        "Price": "\$11.29"
      },
      {
        "Name": "Kids' Cheeseburger - Sesame Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions",
        "Price": "\$8.49"
      },
      {
        "Name": "Kids' Chicken Strips - Sesame Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$8.49"
      },
      {
        "Name": "Kids' Cheese Pizza - Sesame Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$7.79"
      },
      {
        "Name": "Kids' Chicken Skewer - Sesame Allergy-Friendly",
        "Description": "Marinated Chicken Breast Skewer served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions",
        "Price": "\$7.79"
      },
      {
        "Name": "Liege Waffle - Sesame Allergy-Friendly",
        "Description": "Brioche Dough with Pearl Sugar, Strawberries, Whipped Cream, Chocolate Sauce",
        "Price": "\$5.49"
      },
      {
        "Name": "Coleslaw (Side) - Sesame Allergy-Friendly",
        "Price": "\$4.99"
      },
      {
        "Name": "French Fries (Side) - Sesame Allergy-Friendly",
        "Price": "\$4.99"
      },
      {
        "Name": "A Cuties® Mandarin (Side) - Sesame Allergy-Friendly",
        "Price": "\$1.99"
      }
    ],
    "SoyAllergyFriendly": [
      {
        "Name": "American Classic Burger - Soy Allergy-Friendly",
        "Description": "Gourmet Beef Blend, Lettuce, Pickle, Tomato, Cheddar, Toasted Bun",
        "Price": "\$13.29"
      },
      {
        "Name": "Niçoise-style Salad with Seared Tuna* - Soy Allergy-Friendly",
        "Description": "Crispy Mixed Greens, Wedged Potatoes, Tomatoes, Olives, Green Beans, White Beans, Dijon Vinaigrette, Tuna",
        "Price": "\$12.99"
      },
      {
        "Name": "Hand-breaded Chicken Sandwich - Soy Allergy-Friendly",
        "Description": "House-made Pickles, Zesty Sauce, Toasted Brioche Bun",
        "Price": "\$12.49"
      },
      {
        "Name": "Margherita Pizza - Soy Allergy-Friendly",
        "Description": "Two slices of Freshly Baked Pizza topped with San Marzano Tomato-Basil Sauce, Roma Tomatoes, Mozzarella, and Basil",
        "Price": "\$11.79"
      },
      {
        "Name": "Pepperoni Pizza - Soy Allergy-Friendly",
        "Description": "Two slices of Freshly Baked Pizza topped with Pepperoni, San Marzano Tomato-Basil Sauce, and Cheese Blend",
        "Price": "\$11.79"
      },
      {
        "Name": "Cheese Pizza - Soy Allergy-Friendly",
        "Description": "Two slices of Freshly Baked Pizza topped with San Marzano Tomato-Basil Sauce and Cheese Blend",
        "Price": "\$11.29"
      },
      {
        "Name": "Niçoise-style Salad - Soy Allergy-Friendly",
        "Description": "Crispy Mixed Greens, Romaine, Wedged Potatoes, Tomatoes, Green Beans, Olives, White Beans, Dijon Vinaigrette (Plant-based)",
        "Price": "\$10.99"
      },
      {
        "Name": "Kids' Cheeseburger - Soy Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$8.49"
      },
      {
        "Name": "Kids' Chicken Strips - Soy Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$8.49"
      },
      {
        "Name": "Kids' Cheese Pizza - Soy Allergy-Friendly",
        "Description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "Price": "\$7.79"
      },
      {
        "Name": "Kids' Chicken Skewer - Soy Allergy-Friendly",
        "Description": "Marinated Chicken Breast Skewer served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions",
        "Price": "\$7.79"
      },
      {
        "Name": "Liege Waffle - Soy Allergy-Friendly",
        "Description": "Brioche Dough with Pearl Sugar, Strawberries, Whipped Cream, Chocolate Sauce",
        "Price": "\$5.49"
      },
      {
        "Name": "Coleslaw (Side) - Soy Allergy-Friendly",
        "Price": "\$4.99"
      },
      {
        "Name": "French Fries (Side) - Soy Allergy-Friendly",
        "Price": "\$4.99"
      },
      {
        "Name": "A Cuties® Mandarin (Side) - Soy Allergy-Friendly",
        "Price": "\$1.99"
      }
    ]
  }
}

{
  "Space 220 Restaurant": {
    "Location": "EPCOT, World Discovery",
    "Dining Type": "Casual Dining",
    "Meal Period": "Lunch",
    "Adult Pricing": {
      "Price": "\$55.00",
      "Description": "Select one of each: Lift-Offs (Appetizer) + Star Course (Entrée)",
      "Lift-Offs": [
        "Big Bang Burrata Panzanella Watermelon Salad, Tarragon Dressing",
        "Starry Calamari Fried Calamari, Italian Cherry Peppers, Spicy Marinara, Roasted Pepper Citrus Aioli",
        "Blue Moon Cauliflower Tempura Fried Cauliflower, Housemade Hot Sauce, Blue Cheese Dust",
        "Neptuna Tartare* Sushi Grade Yellow Fin Tuna, Avocado Crema, Mango Coulis, Edamame, Wonton Crisp, Yuzu Dressing",
        "Centauri Caesar Salad Miniature Romaine, Classic Caesar Dressing, Parmigiano Reggiano, Crouton Crumble",
        "Roasted Beet Salad Petite Rosette Lettuce, Herb Pesto, Hazelnuts, Caramelized Goat Cheese",
        "Shrimp Tacos Marinated Shrimp, Lettuce, Shallots, Crispy Wonton Shell",
        "Wagyu Beef Carpaccio* Wagyu Beef, Trumpet Mushroom, Pomegranate Seeds, Potato Chips, Cipriani Sauce"
      ],
      "Star Course": [
        "Rocket Flame Seared Tuna* Fennel Spice-Rubbed Tuna Loin, Eggplant Caponata, Arugula, Aged Balsamic",
        "Galactic Miso Salmon* Miso-Glazed Salmon, Sautéed Leeks, Tempura-fried Mushroom, Curry Blood Orange Beurre Blanc",
        "Steak & Frites* New York Strip Steak, Roasted Garlic Butter, Haricot Vert, French Fries",
        "Steak Salad Marinated Filet Tips, Iceberg Wedges, Cucumber, Cherry Tomatoes, Chives, Blue Cheese Crumble, Horseradish Dressing",
        "Slow Roasted Crystal Valley Chicken 48-hour Brined Chicken, Spanish Chorizo Plantain Ragout, Roasted Garlic, Heirloom Tomato",
        "Space Pad Thai Rice Noodles, Stir Fried Vegetables, Bean Sprouts, Crispy Tofu, Garlic Chili Crunchy, Sweet Soy Chili Sauce. Choice of Crispy Tofu, Chicken, or Shrimp",
        "Gemini Burger* Signature Beef Blend, White Cheddar Cheese, Bacon, Shredded Lettuce, Tomatoes, Roasted Pepper Citrus Aioli, French Fries"
      ]
    },
    "Satellite Sides": [
      {"Roasted Fingerling Potatoes": "\$9.00"},
      {"Truffled Herb Parmesan Potato Wedges": "\$9.00"},
      {"Roasted Carrots": "\$9.00"},
      {"Broccolini": "\$9.00"}
    ],
    "Super Nova Sweets": [
      {"Carrot Cake Carrot Cake, Cream Cheese, Candied Walnuts, Toasted Pepitas": "\$14.00"},
      {"Piña Nova Hummingbird Cake, Coconut Mousse, Pineapple Caviar, Almond Crunch": "\$14.00"},
      {"Blue Planet Chocolate Cheesecake, Cookie Crumbs, Vanilla Truffles, White Chocolate Crunchy Pearls": "\$14.00"},
      {"Strawberry Nebula Cream Cheese Mousse, Lemon Curd, Strawberry Jam, Strawberry Whip": "\$14.00"},
      {"The Astra Honey Cake, Almond Mascarpone Mousse, Orange Marmalade, Orange Cream, Honeycomb Cookie": "\$14.00"},
      {"Gelato Vanilla or Chocolate": "\$10.00"},
      {"Sorbet Mango or Strawberry": "\$10.00"}
    ],
    "Kids' Space 220 Pricing": {
      "Price": "\$29.00",
      "Description": "Select one of each: Star Course (Entrée) + Supernova Sweets (Dessert) + Celestial Beverages (Drink)",
      "Kids' Star Course": [
        "Spaceghetti Chicken Meatball and Tomato Sauce",
        "Galactic Salmon Mashed Potatoes and Broccolini",
        "Cosmic Chicken Fried Chicken Tenders, Space Fries, Ketchup",
        "Smashed Burger Burger, American Cheese, Space Fries",
        "Mission Macaroni Elbow Macaroni, American-Cheddar Cream Sauce"
      ],
      "Kids' Super Nova Sweets": [
        "Cosmic Cupcake Chocolate Vegan Devil's Food Cake, Topped with Vanilla Frosting & Galactic Sprinkles",
        "Gelato Scoop Chocolate or Vanilla",
        "Sorbet Scoop Strawberry or Mango",
        "The Milky Meltaway Caramel Hot Chocolate, Vanilla Gelato, Chocolate Dome"
      ],
      "Kids' Celestial Beverages": [
        "Soda Add a special Space 220 collectible cup for \$5. Add a Callisto glow cube for \$5. Add both a collectible cup and glow cube for \$8.",
        "Milk Add a special Space 220 collectible cup for \$5. Add a Callisto glow cube for \$5. Add both a collectible cup and glow cube for \$8.",
        "Apple Juice Add a special Space 220 collectible cup for \$5. Add a Callisto glow cube for \$5. Add both a collectible cup and glow cube for \$8.",
        "Bottled Water Add a special Space 220 collectible cup for \$5. Add a Callisto glow cube for \$5. Add both a collectible cup and glow cube for \$8."
      ]
    },
    "Kids' Zero-Proof Sippers": [
      {"Moon Rocks Lemonade, Blue Cotton Candy, Coconut, served in a special Space 220 collectible cup with collectible cards": "\$13.00"},
      {"Starship Lemonade Strawberry, Watermelon, Lemonade, Glow Cube, served in a special Space 220 collectible cup with collectible cards": "\$16.00"}
    ],
    "Dessert Drinks": [
      {"Up All Night Absolute Vanilla, Chilled Espresso, Kahlúa, Crème de Cacao": "\$18.00"},
      {"Coffee": "\$4.00"},
      {"Espresso": "\$4.00"},
      {"Double Espresso": "\$6.00"},
      {"Cappuccino": "\$7.00"},
      {"Latte": "\$7.00"}
    ],
    "Atmospheric Spirits": [
      {"Galaxy Spritz Lagoon Bay Aperitif, Lychee Liqueur, Lemon Juice, Prosecco": "\$18.00"},
      {"Black Hole Fashioned Knob Creek, Demerara, Whiskey Barrel Aged Bitters": "\$20.00"},
      {"Illumination Bacardi, Malibu, Passion Fruit, Blood Orange, Pineapple, Lime Sour, Passion Fruit Boba": "\$18.00"},
      {"M4RG4R1TA Espolon Blanco Tequila, Watermelon Lime Sour, Salted Lime Foam": "\$18.00"},
      {"Command Center Conniption Kinship Gin, St-Germain Elderflower Liqueur, Lemon Juice, Freeze-dried Raspberries": "\$17.00"},
      {"Space Age Mule Tito's Handmade Vodka, Fresh Carrot Juice, Mango, Lime Juice, Ginger Beer, Tajin Rim": "\$17.00"},
      {"Shuttle Crew Kettle One Peach and Orange Blossom Vodka, Vanilla, Tangerine, Red Bull and Tang Foam": "\$18.00"},
      {"Gamma Burst Grey Goose Strawberry Lemongrass, Midori Melon Liqueur, Strawberry Popping Pearls": "\$19.00"},
      {"P²OG Malibu, Passion Fruit, Tangerine, Guava, Pineapple": "\$18.00"},
      {"Sunspot Espolòn Reposado, Fresh Lime, Mango, Spicy Agave": "\$18.00"},
      {"Up All Night Absolute Vanilla, Chilled Espresso, Kahlúa, Crème de Cacao": "\$18.00"}
    ],
    "Crew Brews": [
      {"Michelob Ultra Draft": "\$10.00"},
      {"Stevens Point Centauri Amber Lager Draft": "\$12.00"},
      {"Blue Moon Draft": "\$11.00"},
      {"Sierra Nevada Hazy Little IPA Draft": "\$11.00"},
      {"Stella Artois": "\$10.00"},
      {"Bud Light": "\$9.00"},
      {"Corona": "\$10.00"},
      {"Modelo Especial": "\$9.00"},
      {"Heineken 0.0": "\$10.00"},
      {"Rotating Space Beer": "\$12.00"}
    ],
    "Sparkling Worldly Wines": [
      {"Prosecco Terre Di Bacco, Treviso, Italy": "\$15.00"},
      {"Sparkling Scharffenberger, Mendocino County, CA": "\$17.00"}
    ],
    "White/Rosé Worldly Wines": [
      {"Moscato Batasiolo Moscato d'Asti, Italy": "\$14.00"},
      {"Pinot Grigio Santa Margherita, Santa Margherita": "\$18.00"},
      {"Pinot Grigio Campo Di Fiori, Rubicone, Italy": "\$15.00"},
      {"Sauvignon Blanc Kim Crawford, Marlborough, NZ": "\$16.00"},
      {"Chardonnay Talbott Kali Hart, Monterey, CA": "\$17.00"},
      {"Rosé Space Age Rose, Paso Robles, CA": "\$15.00"}
    ],
    "Red Worldly Wines": [
      {"Pinot Noir Böen, Russian River, CA": "\$19.00"},
      {"Merlot Decoy, Sonoma, CA": "\$16.00"},
      {"Red Blend Fable Roots, Italy": "\$13.00"},
      {"Red Blend The Prisoner, Napa Valley, CA": "\$27.00"},
      {"Malbec Uno, Mendoza, Argentina": "\$16.00"},
      {"Cabernet Sauvignon Brendel, Napa Valley, CA": "\$19.00"}
    ],
    "Zero-Proof Cocktails": [
      {"Moon Rocks Lemonade, Blue Cotton Candy, Coconut, Pineapple Juice, and includes Collectible Cards": "\$13.00"},
      {"Starship Lemonade Strawberry, Watermelon, Lemonade, Glow Cube, and includes Collectible Cards": "\$16.00"}
    ]
  }
}

{
  "Space 220 Restaurant": {
    "Location": "EPCOT, World Discovery",
    "Dining Type": "Casual Dining",
    "Meal Period": "Dinner",
    "Adult Pricing": {
      "Price": "\$79.00",
      "Description": "Select one of each: Lift-Offs (Appetizer) + Star Course (Entrée) + Supernova Sweets (Dessert)",
      "Lift-Offs": [
        "Big Bang Burrata Panzanella Watermelon Salad, Tarragon Dressing",
        "Starry Calamari Fried Calamari, Italian Cherry Peppers, Spicy Marinara, Roasted Pepper Citrus Aioli",
        "Blue Moon Cauliflower Tempura Fried Cauliflower, Housemade Hot Sauce, Blue Cheese Dust",
        "Neptuna Tartare* Sushi Grade Yellow Fin Tuna, Avocado Crema, Mango Coulis, Edamame, Wonton Crisp, Yuzu Dressing",
        "Centauri Caesar Salad Miniature Romaine, Classic Caesar Dressing, Parmigiano Reggiano, Crouton Crumble",
        "Roasted Beet Salad Petite Rosette Lettuce, Herb Pesto, Hazelnuts, Caramelized Goat Cheese",
        "Shrimp Tacos Marinated Shrimp, Lettuce, Shallots, Crispy Wonton Shell",
        "Wagyu Beef Carpaccio* Wagyu Beef, Trumpet Mushroom, Pomegranate Seeds, Potato Chips, Cipriani Sauce",
        "Scallop Risotto Pan-seared Scallop, Horseradish Foam, Roasted Beets, Citrus Oil"
      ],
      "Star Course": [
        "Slow Rotation Zero-G Short Rib Braised Short Rib, Cheddar Grits, Bacon, Rainbow Carrots, Haricots Verts",
        "Bone-In Pork Chop* Korean Bourbon-glazed Pork Chop, Blue Cheese Potato Wedges, Chili-Garlic Broccolini",
        "Slow Roasted Crystal Valley Chicken 48-hour Brined Chicken, Spanish Chorizo Plantain Ragout, Roasted Garlic, Heirloom Tomato",
        "Grilled Swordfish* Mediterranean Couscous, Fennel-crusted Swordfish, Creamy Puttanesca",
        "Galactic Miso Salmon* Miso-Glazed Salmon, Sautéed Leeks, Tempura-fried Mushroom, Curry Blood Orange Beurre Blanc",
        "Space Pad Thai Rice Noodles, Stir Fried Vegetables, Bean Sprouts, Crispy Tofu, Garlic Chili Crunchy, Sweet Soy Chili Sauce. Choice of Crispy Tofu, Chicken, or Shrimp",
        "8oz Filet Mignon* Certified Angus Beef, Creamy Mashed Potatoes, Haricot Vert, Red Wine Reduction. Add Jumbo Shrimp \$15. Add Half Lobster \$18."
      ]
    },
    "Space Station Supplementals": [
      {
        "1.5 lbs Baked Whole Lobster Stuffed with Jumbo Crab*": {
          "Description": "Roasted Corn, Broccolini, Mornay Sauce. Supplemental to the Prix fixe menu.",
          "Price": "\$22.00"
        }
      },
      {
        "24oz Bone in Ribeye*": {
          "Description": "Coffee Space Rub, Fingerling Potatoes, Asparagus, Cippolini Onion. Supplemental to the Prix fixe menu.",
          "Price": "\$20.00"
        }
      }
    ],
    "Super Nova Sweets": [
      "Carrot Cake Carrot Cake, Cream Cheese, Candied Walnuts, Toasted Pepitas",
      "Piña Nova Hummingbird Cake, Coconut Mousse, Pineapple Caviar, Almond Crunch",
      "Strawberry Nebula Cream Cheese Mousse, Lemon Curd, Strawberry Jam, Strawberry Whip",
      "The Astra Honey Cake, Almond Mascarpone Mousse, Orange Marmalade, Orange Cream, Honeycomb Cookie",
      "Blue Planet Chocolate Cheesecake, Cookie Crumbs, Vanilla Truffles, Raspberry",
      "Gelato Vanilla or Chocolate",
      "Sorbet Mango or Strawberry"
    ],
    "Satellite Sides": [
      {"Roasted Fingerling Potatoes": "\$9.00"},
      {"Truffled Herb Parmesan Potato Wedges": "\$9.00"},
      {"Roasted Carrots": "\$9.00"},
      {"Broccolini": "\$9.00"}
    ],
    "Kids' Space 220 Pricing": {
      "Price": "\$35.00",
      "Description": "Select one of each: Lift-offs (Appetizer) + Star Course (Entrée) + Supernova Sweets (Dessert) + Celestial Beverages (Drink)",
      "Kids' Lift-Offs": [
        "Mozzarella Moons Fried Mozzarella, Marinara",
        "Grow Zone Crudités Seasonal Vegetables, Ranch",
        "Fruit Cup Assorted Seasonal Fruits",
        "Baby Greens Assorted Greens, Cucumber, Cherry Tomatoes, Honey Mustard",
        "Satellite Caesar Chopped Romaine, Parmesan, Croutons",
        "Mini Mission Mac Elbow Macaroni, American-Cheddar Cream Sauce"
      ],
      "Kids' Star Course": [
        "Spaceghetti Chicken Meatball and Tomato Sauce",
        "Galactic Salmon Mashed Potatoes and Broccolini",
        "Cosmic Chicken Fried Chicken Tenders, Space Fries, Ketchup",
        "Smashed Burger Burger, American Cheese, Space Fries",
        "Beef Tenderloin Grilled Steak, Buttered Carrots, Space Fries",
        "Mission Macaroni Elbow Macaroni, American-Cheddar Cream Sauce"
      ],
      "Kids' Super Nova Sweets": [
        "Cosmic Cupcake Chocolate Vegan Devil's Food Cake, Topped with Vanilla Frosting & Galactic Sprinkles",
        "Gelato Scoop Chocolate or Vanilla",
        "Sorbet Scoop Strawberry or Mango",
        "The Milky Meltaway Caramel Hot Chocolate, Vanilla Gelato, Chocolate Dome"
      ],
      "Kids' Celestial Beverages": [
        "Soda Add a special Space 220 collectible cup for \$5. Add a Callisto glow cube for \$5. Add both a collectible cup and glow cube for \$8.",
        "Milk Add a special Space 220 collectible cup for \$5. Add a Callisto glow cube for \$5. Add both a collectible cup and glow cube for \$8.",
        "Apple Juice Add a special Space 220 collectible cup for \$5. Add a Callisto glow cube for \$5. Add both a collectible cup and glow cube for \$8.",
        "Bottled Water Add a special Space 220 collectible cup for \$5. Add a Callisto glow cube for \$5. Add both a collectible cup and glow cube for \$8."
      ]
    },
    "Kids' Zero-Proof Sippers": [
      {
        "Moon Rocks": {
          "Description": "Lemonade, Blue Cotton Candy, Coconut, served in a special Space 220 collectible cup with collectible cards",
          "Price": "\$13.00"
        }
      },
      {
        "Starship Lemonade": {
          "Description": "Strawberry, Watermelon, Lemonade, Glow Cube, served in a special Space 220 collectible cup with collectible cards",
          "Price": "\$16.00"
        }
      }
    ],
    "Atmospheric Spirits": [
      {"Galaxy Spritz Lagoon Bay Aperitif, Lychee Liqueur, Lemon Juice, Prosecco": "\$18.00"},
      {"Black Hole Fashioned Knob Creek, Demerara, Whiskey Barrel Aged Bitters": "\$20.00"},
      {"Illumination Bacardi, Malibu, Passion Fruit, Blood Orange, Pineapple, Lime Sour, Passion Fruit Boba": "\$18.00"},
      {"M4RG4R1TA Espolon Blanco Tequila, Watermelon Lime Sour, Salted Lime Foam": "\$18.00"},
      {"Command Center Conniption Kinship Gin, St-Germain Elderflower Liqueur, Lemon Juice, Freeze-dried Raspberries": "\$17.00"},
      {"Space Age Mule Tito's Handmade Vodka, Fresh Carrot Juice, Mango, Lime Juice, Ginger Beer, Tajin Rim": "\$17.00"},
      {"Shuttle Crew Kettle One Peach and Orange Blossom Vodka, Vanilla, Tangerine, Red Bull and Tang Foam": "\$18.00"},
      {"Gamma Burst Grey Goose Strawberry Lemongrass, Midori Melon Liqueur, Strawberry Popping Pearls": "\$19.00"},
      {"P²OG Malibu, Passion Fruit, Tangerine, Guava, Pineapple": "\$18.00"},
      {"Sunspot Espolòn Reposado, Fresh Lime, Mango, Spicy Agave": "\$18.00"},
      {"Up All Night Absolute Vanilla, Chilled Espresso, Kahlúa, Crème de Cacao": "\$18.00"}
    ],
    "Crew Brews": [
      {"Michelob Ultra Draft": "\$10.00"},
      {"Stevens Point Centauri Amber Lager Draft": "\$12.00"},
      {"Blue Moon Draft": "\$11.00"},
      {"Sierra Nevada Hazy Little IPA Draft": "\$11.00"},
      {"Stella Artois": "\$10.00"},
      {"Bud Light": "\$9.00"},
      {"Corona": "\$10.00"},
      {"Modelo Especial": "\$9.00"},
      {"Heineken 0.0": "\$10.00"},
      {"Rotating Space Beer": "\$12.00"}
    ],
    "Dessert Drinks": [
      {"Up All Night Absolute Vanilla, Chilled Espresso, Kahlúa, Crème de Cacao": "\$18.00"},
      {"Coffee": "\$4.00"},
      {"Espresso": "\$4.00"},
      {"Double Espresso": "\$6.00"},
      {"Cappuccino": "\$7.00"},
      {"Latte": "\$7.00"}
    ],
    "Zero-Proof Cocktails": [
      {
        "Moon Rocks": {
          "Description": "Lemonade, Blue Cotton Candy, Coconut, Pineapple Juice, and includes Collectible Cards",
          "Price": "\$13.00"
        }
      },
      {
        "Starship Lemonade": {
          "Description": "Strawberry, Watermelon, Lemonade, Glow Cube, and includes Collectible Cards",
          "Price": "\$16.00"
        }
      }
    ],
    "Sparkling Worldly Wines": [
      {"Prosecco Terre Di Bacco, Treviso, Italy": "\$15.00"},
      {"Sparkling Scharffenberger, Mendocino County, CA": "\$17.00"}
    ],
    "White/Rosé Worldly Wines": [
      {"Moscato Batasiolo Moscato d'Asti, Italy": "\$14.00"},
      {"Pinot Grigio Santa Margherita, Santa Margherita": "\$18.00"},
      {"Pinot Grigio Campo Di Fiori, Rubicone, Italy": "\$15.00"},
      {"Sauvignon Blanc Kim Crawford, Marlborough, NZ": "\$16.00"},
      {"Chardonnay Talbott Kali Hart, Monterey, CA": "\$17.00"},
      {"Rosé Space Age Rose, Paso Robles, CA": "\$15.00"}
    ],
    "Red Worldly Wines": [
      {"Pinot Noir Böen, Russian River, CA": "\$19.00"},
      {"Merlot Decoy, Sonoma, CA": "\$16.00"},
      {"Red Blend Fable Roots, Italy": "\$13.00"},
      {"Red Blend The Prisoner, Napa Valley, CA": "\$27.00"},
      {"Malbec Uno, Mendoza, Argentina": "\$16.00"},
      {"Cabernet Sauvignon Brendel, Napa Valley, CA": "\$19.00"}
    ]
  }
}

{
  "Les Halles Boulangerie-Patisserie": {
    "Location": "EPCOT, World Showcase",
    "Dining Type": "Quick Service Restaurant",
    "Meal Period": "Lunch And Dinner",
    "Menu": {
      "Sandwiches": [
        {"Jambon Beurre": "Ham and Cheese, Dijon Mustard Butter on a Demi Baguette", "Price": "\$10.95"},
        {"Brie au Pommes": "Brie, Apples and Cranberries in Multi Grain Bread", "Price": "\$10.00"},
        {"Dinde B.L.T.": "Turkey, Bacon, Lettuce, Tomato and Garlic Aioli", "Price": "\$10.55"},
        {"Croissant Jambon Fromage": "Ham, Cheese and Béchamel in a Croissant", "Price": "\$6.50"},
        {"Poulet au Pistou": "Chicken Breast with Cheese, Tomato, Red Onion and Pesto", "Price": "\$10.50"}
      ],
      "Spécialités": [
        {"Bisque de Homard": "Lobster Bisque in a bread bowl", "Price": "\$6.95"},
        {"Quiche Lorraine": "Ham, Gruyere Quiche", "Price": "\$6.50"},
        {"Florentine Quiche": "Ham and Gruyere Quiche", "Price": "\$9.95"},
        {"Pain Lard Fromage": "Bacon and Cheese Roll", "Price": "\$8.25"},
        {"Fromages": "Imported Cheese plate", "Price": "\$12.95"},
        {"Croque Monsieur": "Toasted Ham and Cheese", "Price": "\$10.50"},
        {"Baguette - Half": "Fresh from our oven", "Price": "\$2.75"},
        {"Baguette - Full": "Fresh from our oven", "Price": "\$3.95"},
        {"Pissaladiere": "Tomatoes, Olives and Gruyere Cheese", "Price": "\$5.75"},
        {"Croissant Salé": "Eggs, Cheese and Bacon Croissant", "Price": "\$9.50"}
      ],
      "Viennoiseries": [
        {"Croissant": "Plain Croissant", "Price": "\$3.25"},
        {"Viennoiserie Pomme": "Apple Crumble Pastry", "Price": "\$5.95"},
        {"Beignet": "Beignet filled with chocolate and hazelnuts", "Price": "\$5.95"},
        {"Pain au Chocolat": "Chocolate Croissant", "Price": "\$4.25"},
        {"Biscuit Chocolat": "Chocolate Chip Cookie", "Price": "\$5.25"},
        {"Patisserie a l’abricot": "", "Price": "\$5.95"},
        {"Croissant Amandes": "Chocolate Croissant with Almond filling", "Price": "\$6.75"}
      ],
      "Desserts": [
        {"Fraises": "Tart with vanilla cream topped with strawberries", "Price": "\$6.95"},
        {"Tarte au Citron": "", "Price": "\$6.95"},
        {"Éclair Chocolate": "Chocolate Cream Éclair", "Price": "\$5.95"},
        {"Créme Brûlée": "Caramelized Vanilla Custard", "Price": "\$5.75"},
        {"Parfait aux Fruits": "Yogurt Mousse with Berries", "Price": "\$7.50"},
        {"Mousse au Chocolat": "Chocolate Mousse", "Price": "\$7.50"},
        {"Chocolate Caramel Tarte": "Caramel Cream and Chocolate Mousse", "Price": "\$7.25"},
        {"Duo Au Chocolat": "White and Dark Chocolate Mousse Cake", "Price": "\$7.95"},
        {"Macaron Lime Raspberry": "Macaron with raspberry and lime cream", "Price": "\$7.50"},
        {"Framboise": "Raspberry Mousse, Chocolate Cake, Raspberry Jam", "Price": "\$7.50"},
        {"Napoleon": "Puff Pastry layered with Cream", "Price": "\$6.75"},
        {"Macarons Collection": "", "Price": "\$13.50"},
        {"Macarons Large Collection": "", "Price": "\$30.95"}
      ],
      "Boissons": [
        {"Espresso": "regular or decaf", "Price": "\$5.15"},
        {"Cappuccino": "regular or decaf", "Price": "\$5.65"},
        {"Latte": "regular or decaf", "Price": "\$5.65"},
        {"Café": "Coffee - regular or decaf", "Price": "\$3.75"},
        {"Café Liegois": "", "Price": "\$7.50"},
        {"Sirop Monin": "Add a flavor shot of Hazelnut or Vanilla", "Price": "\$1.25"},
        {"Chocolat Chaud": "Hot Chocolate", "Price": "\$4.95"},
        {"Thé": "Hot Tea - regular or decaf", "Price": "\$3.95"},
        {"Evian": "Natural Spring Water", "Price": "\$3.75"},
        {"Perrier": "Sparkling Water", "Price": "\$4.95"},
        {"Assorted Fountain Beverages - Large": "", "Price": "\$4.75"},
        {"Jus D'Orange": "Orange Juice", "Price": "\$6.95"},
        {"Milk": "Regular or Chocolate", "Price": "\$4.25"}
      ],
      "Vins & Biére": [
        {"Frosé": "Frozen Côtes de Provence Rosé, Vodka, Peach", "Price": "\$15.75"},
        {"Champagne": "Malard, Excellence, Brut", "Price": "\$21.95"},
        {"Mimosa": "Champagne and Orange Juice", "Price": "\$12.50"},
        {"Chardonnay": "Chefs selection Duboeuf", "Price": "\$8.50"},
        {"Cabernet Sauvignon": "Chefs selection Duboeuf", "Price": "\$9.00"},
        {"Kronenbourg 1664": "Beer", "Price": "\$9.95"}
      ]
    }
  }
}

{
  "San Angel Inn Restaurante": {
    "Location": "EPCOT, World Showcase",
    "Dining Type": "Casual Dining",
    "Meal Period": "Lunch",
    "Menu": {
      "Soups and Appetizers": [
        {"Sopa Azteca": "Traditional Tortilla Soup served with Fried Corn Tortilla Strips, Avocado, Cheese, and Chile Pasilla", "Price": "\$12.00"},
        {"Chilaquiles Con Pato": "Tortilla chips tossed in Ranchera salsa, topped with crispy duck carnitas, cotija cheese, crema Mexicana, and onions", "Price": "\$15.00"},
        {"Guacamole": "Topped with Mango and Toasted Pumpkin Seeds served with Chicharrónes and Salsa Valentina", "Price": "\$15.00"},
        {"Quesadilla del Mercado": "Handmade corn masa tortilla filled with Monterey Jack cheese, chorizo and potatoes", "Price": "\$16.00"},
        {"Queso Fundido": "Melted Monterey Jack Cheese topped with Chorizo, Poblano Peppers and Onions served with Flour Tortillas", "Price": "\$16.00"},
        {"Tostadas de Pollo": "Crispy corn tortillas topped with beans, chilled shredded chicken, romaine lettuce, salsa verde, pico de gallo, and queso fresco", "Price": "\$16.00"},
        {"Totopos": "Corn Chips with sides of White Cheddar Cheese and Salsa", "Price": "\$9.00"}
      ],
      "Entrées": [
        {"Pollo a Las Rajas": "Grilled chicken breast over roasted potatoes with onions, Poblano peppers, corn and a Poblano cream sauce, topped with queso fresco", "Price": "\$32.00"},
        {"Huarache Vegetariano": "Fried corn masa topped with beans, grilled queso fresco, nopales and pea tendrils served with a side of roasted vegetables and salsa verde | Add Chicken or shaved Ribeye +8", "Price": "\$22.00"},
        {"Tacos": "Choice of Shaved Ribeye or Grilled Chicken. Poblano and red peppers, onions, bacon, and Monterey Jack cheese served with corn tortillas and plantains, topped with crema Mexicana and cotija cheese", "Price": "\$34.00"},
        {"Camarones a la Diabla": "Chipotle pepper and garlic sautéed shrimp atop a corn rice medley with roasted vegetables", "Price": "\$32.00"},
        {"Ensalada César": "Chopped Romaine lettuce served with Caesar Dressing and topped with Shaved Parmesan and Crispy Monterey Jack Cheese. Add Chicken 6.00 or Shrimp 8.00", "Price": "\$18.00"},
        {"Enchiladas de Pollo": "Corn tortillas filled with chipotle chicken covered with ranchera salsa, crema Mexicana, cotija cheese and crispy onion straws atop beans. Served with plantains topped with crema Mexicana and cotija cheese", "Price": "\$31.00"},
        {"Baja Tacos de Pescado": "Beer-battered fried Cod, Shredded Cabbage, Chipotle-Lime Aioli and Pineapple Relish in flour tortillas", "Price": "\$32.00"},
        {"Carne Asada**": "New York strip with chipotle butter served with a tamal de rajas topped with red and green salsas with a corn rice medley (**not included in the Disney Dining Plan)", "Price": "\$54.00"},
        {"Pescado A La Veracruzana": "Catch of the day atop potatoes with a cilantro-lime vinaigrette made with capers, olives, bell peppers, Spanish onions and tomatoes", "Price": "\$38.00"},
        {"Osso Buco Con Mole Negro": "Slow braised pork shank over rice with Mole Negro. Served with plantains topped with crema Mexicana and cotija cheese (contains nuts)", "Price": "\$39.00"}
      ],
      "Desserts": [
        {"Pan de Elote Tres Leches": "Rice milk-soaked Mexican corn bread topped with sweetcorn gelato and toasted almonds", "Price": "\$12.00"},
        {"Flan": "Vanilla flan with toasted almonds, berries, and whipped cream", "Price": "\$12.00"},
        {"Nieve": "Seasonal Mexican flavored sorbet", "Price": "\$10.00"},
        {"Brownie Sundae": "Fudge brownie served with dulce de leche ice cream and topped with cajeta sauce", "Price": "\$10.00"},
        {"Sweet Corn Ice Cream": "Sweet corn ice cream with popcorn and chile powder", "Price": "\$10.00"}
      ],
      "Kids' Appetizers (Á la carte)": [
        {"Jr Garden Salad": "Chopped romaine lettuce and tomato topped with queso fresco and choice of dressing", "Price": "\$4.00"},
        {"Fruit": "Chef's Selection", "Price": "\$3.50"}
      ],
      "Kids’ Create-Your-Own Entrées (choose one)": [
        {"Beef Tacos": "Two flour tortillas filled with shaved ribeye", "Price": "\$16.00"},
        {"Chicken Tacos": "Two flour tortillas filled with grilled chicken", "Price": "\$13.50"},
        {"Quesadillas": "Two flour tortillas filled with Monterey Jack and grilled golden brown", "Price": "\$12.00"},
        {"Grilled Chicken Breast": "", "Price": "\$12.25"},
        {"Chicken Tenders": "Breaded and fried chicken tenderloins", "Price": "\$13.00"},
        {"Macaroni & Cheese": "Cavatappi pasta in a rich white cheddar sauce", "Price": "\$13.00"}
      ],
      "Kids’ Create-Your-Own Selections (choose two)": [
        "Green Beans",
        "Corn",
        "Rice",
        "Fruit",
        "Chef's Selection"
      ],
      "Kids' Desserts": [
        {"Chocolate Brownie": "", "Price": "\$6.00"},
        {"Dulce de Leche Ice Cream": "", "Price": "\$5.00"}
      ],
      "Signature Drinks & Margaritas": [
        {"San Angel Inn Margarita**": "Centinela añejo tequila, Alma Finca orange liqueur, rosé wine, Abasolo corn whiskey, fresh lime juice, black ant salt rim (**not included in the Disney Dining Plan)", "Price": "\$24.00"},
        {"Black Magic**": "Created by Neil Patrick Harris. Mesmerizing frozen blackberry margarita crafted with Contraluz mezcal, homemade hibiscus infused rum, LeJay black currant liqueur, lime, mint and black ant salt rim (**not included in the Disney Dining Plan)", "Price": "\$21.00"},
        {"La Cava Avocado": "Tromba blanco tequila, melon liqueur, fresh avocado, lime juice, hibiscus salt rim", "Price": "\$18.50"},
        {"El Diablo": "Lalo blanco tequila, Dos Hombres mezcal, fresh lime juice, cucumber-jalapeño juice and hibiscus salt rim", "Price": "\$18.00"},
        {"The Cucumber": "Tromba blanco tequila, fresh cucumber and lime juice, orange liqueur, Abasolo corn whiskey, agave, Tajín chile-lime powder rim", "Price": "\$18.00"},
        {"Blood Orange": "Tromba blanco tequila, blood orange vodka, gin, LeJay black currant liqueur, Dos Hombres mezcal and Tajín chile-lime powder rim", "Price": "\$18.50"},
        {"The Wild One": "Centinela blanco tequila, Combier orange liqueur, ginger rum, corn passion fruit cordial, lime juice, Dos Hombres mezcal, grenadine and hibiscus salt rim", "Price": "\$18.00"},
        {"Clásica": "Centinela blanco tequila, orange liqueur, lime juice, agave and salt rim", "Price": "\$17.00"},
        {"San Angel Inn Premium Tequila Flight**": "Santanera blanco, El Cristiano reposado, Mijenta añejo (**not included in the Disney Dining Plan)", "Price": "\$40.00"},
        {"Traditional Tequila Flight**": "Apatio blanco, 7 leguas reposado, Tromba añejo (**not included in the Disney Dining Plan)", "Price": "\$25.00"},
        {"Mezcal Tequila Flight**": "Montelobos Ensamble, Ilegal Reposado, Ojo de Tigre (**not included in the Disney Dining Plan)", "Price": "\$21.00"},
        {"Margarita Flight**": "Clásica, Blood Orange and The Wild One (**not included in the Disney Dining Plan)", "Price": "\$30.00"}
      ]
    }
  }
}

{
  "San Angel Inn Restaurante": {
    "Location": "EPCOT, World Showcase",
    "Dining Type": "Casual Dining",
    "Meal Period": "Dinner",
    "Menu": {
      "Soups and Appetizers": [
        {"Sopa Azteca": "Traditional Tortilla Soup served with Fried Corn Tortilla Strips, Avocado, Cheese, and Chile Pasilla", "Price": "\$12.00"},
        {"Chilaquiles Con Pato": "Tortilla chips tossed in Ranchera salsa, topped with crispy duck carnitas, cotija cheese, crema Mexicana, and onions", "Price": "\$15.00"},
        {"Guacamole": "Topped with Mango and Toasted Pumpkin Seeds served with Chicharrónes and Salsa Valentina", "Price": "\$15.00"},
        {"Quesadilla del Mercado": "Handmade corn masa tortilla filled with Monterey Jack cheese, chorizo and potatoes", "Price": "\$16.00"},
        {"Queso Fundido": "Melted Monterey Jack Cheese topped with Chorizo, Poblano Peppers and Onions served with Flour Tortillas", "Price": "\$16.00"},
        {"Tostadas de Pollo": "Crispy corn tortillas topped with beans, chilled shredded chicken, romaine lettuce, salsa verde, pico de gallo, and queso fresco", "Price": "\$16.00"},
        {"Totopos": "Corn Chips with sides of White Cheddar Cheese and Salsa", "Price": "\$9.00"}
      ],
      "Entrées": [
        {"Pollo a Las Rajas": "Grilled chicken breast over roasted potatoes with onions, Poblano peppers, corn and a Poblano cream sauce, topped with queso fresco", "Price": "\$32.00"},
        {"Huarache Vegetariano": "Fried corn masa topped with beans, grilled queso fresco, nopales and pea tendrils served with a side of roasted vegetables and salsa verde | Add Chicken or shaved Ribeye +8", "Price": "\$22.00"},
        {"Tacos": "Choice of Shaved Ribeye or Grilled Chicken. Poblano and red peppers, onions, bacon, and Monterey Jack cheese served with corn tortillas and plantains, topped with crema Mexicana and cotija cheese", "Price": "\$34.00"},
        {"Camarones a la Diabla": "Chipotle pepper and garlic sautéed shrimp atop a corn rice medley with roasted vegetables", "Price": "\$32.00"},
        {"Ensalada César": "Chopped Romaine lettuce served with Caesar Dressing and topped with Shaved Parmesan and Crispy Monterey Jack Cheese. Add Chicken 6.00 or Shrimp 8.00", "Price": "\$18.00"},
        {"Enchiladas de Pollo": "Corn tortillas filled with chipotle chicken covered with ranchera salsa, crema Mexicana, cotija cheese and crispy onion straws atop beans. Served with plantains topped with crema Mexicana and cotija cheese", "Price": "\$31.00"},
        {"Baja Tacos de Pescado": "Beer-battered fried Cod, Shredded Cabbage, Chipotle-Lime Aioli and Pineapple Relish in flour tortillas", "Price": "\$32.00"},
        {"Carne Asada**": "New York strip with chipotle butter served with a tamal de rajas topped with red and green salsas with a corn rice medley (**not included in the Disney Dining Plan)", "Price": "\$54.00"},
        {"Pescado A La Veracruzana": "Catch of the day atop potatoes with a cilantro-lime vinaigrette made with capers, olives, bell peppers, Spanish onions and tomatoes", "Price": "\$38.00"},
        {"Osso Buco Con Mole Negro": "Slow braised pork shank over rice with Mole Negro. Served with plantains topped with crema Mexicana and cotija cheese (contains nuts).", "Price": "\$39.00"}
      ],
      "Desserts": [
        {"Pan de Elote Tres Leches": "Rice milk-soaked Mexican corn bread topped with sweetcorn gelato and toasted almonds", "Price": "\$12.00"},
        {"Flan": "Vanilla flan with toasted almonds, berries, and whipped cream", "Price": "\$12.00"},
        {"Nieve": "Seasonal Mexican flavored sorbet", "Price": "\$10.00"},
        {"Brownie Sundae": "Fudge brownie served with dulce de leche ice cream and topped with cajeta sauce", "Price": "\$10.00"},
        {"Sweet Corn Ice Cream": "Sweet corn ice cream with popcorn and chile powder", "Price": "\$10.00"}
      ],
      "Kids' Appetizers (Á la carte)": [
        {"Jr Garden Salad": "Chopped romaine lettuce and tomato topped with queso fresco and choice of dressing", "Price": "\$4.00"},
        {"Fruit": "Chef's Selection", "Price": "\$3.50"}
      ],
      "Kids' Create-Your-Own Entrées (choose one)": [
        {"Beef Tacos": "Two flour tortillas filled with shaved ribeye", "Price": "\$16.00"},
        {"Chicken Tacos": "Two flour tortillas filled with grilled chicken", "Price": "\$13.50"},
        {"Quesadillas": "Two flour tortillas filled with Monterey Jack and grilled golden brown", "Price": "\$12.00"},
        {"Grilled Chicken Breast": "", "Price": "\$12.25"},
        {"Chicken Tenders": "Breaded and fried chicken tenderloins", "Price": "\$13.00"},
        {"Macaroni & Cheese": "Cavatappi pasta in a rich white cheddar sauce", "Price": "\$13.00"}
      ],
      "Kids' Create-Your-Own Selections (choose two)": [
        "Green Beans",
        "Corn",
        "Rice",
        "Fruit",
        "Chef's Selection"
      ],
      "Kids' Desserts": [
        {"Chocolate Brownie": "", "Price": "\$6.00"},
        {"Dulce de Leche Ice Cream": "", "Price": "\$5.00"}
      ],
      "Signature Drinks & Margaritas": [
        {"San Angel Inn Margarita**": "Centinela añejo tequila, Alma Finca orange liqueur, rosé wine, Abasolo corn whiskey, fresh lime juice, black ant salt rim (**not included in the Disney Dining Plan)", "Price": "\$24.00"},
        {"Black Magic**": "Created by Neil Patrick Harris. Mesmerizing frozen blackberry margarita crafted with Contraluz mezcal, homemade hibiscus infused rum, LeJay black currant liqueur, lime, mint and black ant salt rim (**not included in the Disney Dining Plan)", "Price": "\$21.00"},
        {"La Cava Avocado": "Tromba blanco tequila, melon liqueur, fresh avocado, lime juice, hibiscus salt rim", "Price": "\$18.50"},
        {"El Diablo": "Lalo blanco tequila, Dos Hombres mezcal, fresh lime juice, cucumber-jalapeño juice and hibiscus salt rim", "Price": "\$18.00"},
        {"The Cucumber": "Tromba blanco tequila, fresh cucumber and lime juice, orange liqueur, Abasolo corn whiskey, agave, Tajín chile-lime powder rim", "Price": "\$18.00"},
        {"Blood Orange": "Tromba blanco tequila, blood orange vodka, gin, LeJay black currant liqueur, Dos Hombres mezcal and Tajín chile-lime powder rim", "Price": "\$18.50"},
        {"The Wild One": "Centinela blanco tequila, Combier orange liqueur, ginger rum, corn passion fruit cordial, lime juice, Dos Hombres mezcal, grenadine and hibiscus salt rim", "Price": "\$18.00"},
        {"Clásica": "Centinela blanco tequila, orange liqueur, lime juice, agave and salt rim", "Price": "\$17.00"},
        {"San Angel Inn Premium Tequila Flight**": "Santanera blanco, El Cristiano reposado, Mijenta añejo (**not included in the Disney Dining Plan)", "Price": "\$40.00"},
        {"Traditional Tequila Flight**": "Apatio blanco, 7 leguas reposado, Tromba añejo (**not included in the Disney Dining Plan)", "Price": "\$25.00"},
        {"Mezcal Tequila Flight**": "Montelobos Ensamble, Ilegal Reposado, Ojo de Tigre (**not included in the Disney Dining Plan)", "Price": "\$21.00"},
        {"Margarita Flight**": "Clásica, Blood Orange and The Wild One (**not included in the Disney Dining Plan)", "Price": "\$30.00"}
      ]
    }
  }
}



{
  "restaurant": "Regal Eagle Smokehouse: Craft Drafts & Barbecue",
  "location": "EPCOT, World Showcase",
  "type": "Quick Service Restaurant",
  "meal_period": "Lunch And Dinner",
  "menu": {
    "Entrées": [
      {
        "name": "Memphis Dry-rub Pork Ribs",
        "description": "Cornbread and choice of Side",
        "price": "\$16.49"
      },
      {
        "name": "BBQ Burger",
        "description": "1/3 lb Angus Burger on Garlic Toast topped with BBQ Pork, Lettuce, Tomato, Garlic Aïoli, and Fried Onion Ring served with your choice of Side",
        "price": "\$14.79"
      },
      {
        "name": "Kansas City-smoked Half Chicken",
        "description": "Sweet BBQ Sauce, Cornbread, and Choice of a Side",
        "price": "\$14.79"
      },
      {
        "name": "Sliced Texas Beef Brisket Sandwich",
        "description": "House-smoked Beef Brisket Sandwich on Garlic Toast served with choice of Side",
        "price": "\$14.29"
      },
      {
        "name": "Cheeseburger",
        "description": "1/3 lb Angus Burger on Garlic Toast topped with American Cheese, Lettuce, and Tomato served with choice of Side",
        "price": "\$13.79"
      },
      {
        "name": "North Carolina Chopped Smoked Pork Butt Platter",
        "description": "Cornbread and choice of Side",
        "price": "\$13.49"
      },
      {
        "name": "House Salad with Smoked Chicken",
        "description": "Hearts of Romaine, Tomato, Red Onions, Smokey Ranch, and Cornbread Croutons with Smoked Chicken",
        "price": "\$12.29"
      },
      {
        "name": "House Salad with Pulled BBQ Pork",
        "description": "Hearts of Romaine, Tomato, Red Onions, Smokey Ranch, and Cornbread Croutons with Pulled BBQ Pork",
        "price": "\$12.29"
      },
      {
        "name": "House Salad with Beef Brisket",
        "description": "Hearts of Romaine, Tomato, Red Onions, Smokey Ranch, and Cornbread Croutons with Beef Brisket",
        "price": "\$12.29"
      },
      {
        "name": "Plant-based BBQ Jackfruit Sandwich",
        "description": "Pulled BBQ Jackfruit with Coleslaw and Pickles on Garlic Toast served with choice of Side",
        "price": "\$13.99"
      }
    ],
    "Sides": [
      {
        "name": "Baked Beans with Burnt Ends",
        "price": "\$4.99"
      },
      {
        "name": "Beer-battered Onion Rings",
        "price": "\$4.99"
      },
      {
        "name": "Creamy Coleslaw",
        "price": "\$4.99"
      },
      {
        "name": "Seasoned French Fries",
        "price": "\$4.99"
      },
      {
        "name": "Macaroni & Cheese",
        "price": "\$4.99"
      }
    ],
    "Kids' Disney Check Meal": [
      {
        "name": "Cheeseburger",
        "description": "Small Grilled Angus Burger topped with American Cheese served with Coleslaw and Watermelon with a choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "price": "\$8.49"
      },
      {
        "name": "Salad with Chicken",
        "description": "Chopped Romaine with Chilled Pulled Chicken, Tomato, Cucumber, and a choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions.",
        "price": "\$7.79"
      }
    ],
    "Kids' Meal": [
      {
        "name": "Chicken Strips",
        "description": "Served with Coleslaw and Watermelon and a choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "price": "\$8.49"
      },
      {
        "name": "Macaroni & Cheese",
        "description": "House-made Oven-baked Macaroni & White Cheddar Cheese served with Coleslaw and Watermelon and a choice of Small Lowfat Milk or Small DASANI® Bottled Water.",
        "price": "\$6.99"
      }
    ],
    "Dessert": [
      {
        "name": "Banana Pudding",
        "price": "\$5.29"
      },
      {
        "name": "Fresh Watermelon Slices",
        "price": "\$4.99"
      },
      {
        "name": "S'mores Brownie",
        "price": "\$5.29"
      }
    ],
    "Beverages": [
      {
        "name": "Assorted Coca-Cola® Fountain Beverages",
        "description": "Assorted Coca-Cola® Offerings",
        "price": "\$4.49"
      },
      {
        "name": "Berry Punch",
        "description": "White Grape Juice with Strawberry, Peach, and Blackberry",
        "price": "\$5.29"
      },
      {
        "name": "DASANI® Bottled Water",
        "price": "\$3.75"
      },
      {
        "name": "Freshly Brewed Joffery's CoffeeTM Regular",
        "price": "\$3.79"
      },
      {
        "name": "Freshly Brewed Joffery's CoffeeTM Decaf",
        "price": "\$3.79"
      },
      {
        "name": "Hot Cocoa by Joffrey's CoffeeTM",
        "price": "\$3.79"
      },
      {
        "name": "Twinings® Hot Tea",
        "price": "\$3.79"
      },
      {
        "name": "Lowfat Milk",
        "price": "\$2.29"
      }
    ],
    "Beer": [
      {
        "name": "Angry Orchard Crisp Apple Hard Cider",
        "description": "Cincinnati, OH 16-oz Can - Sweet and refreshing. A favorite since Colonial times",
        "price": "\$10.50"
      },
      {
        "name": "Bell's Seasonal Wheat Ale",
        "description": "Comstock, MI 20-oz Draft - wheat ale, mixing a spicy hop character with mildly fruity aromas",
        "price": "\$11.25"
      },
      {
        "name": "Cigar City Jai Alai IPA",
        "description": "Tampa, FL 20-oz Draft - This bigger brother to the Pale Ale employs a significant amount of hops with high bitterness and citrus and floral aromas",
        "price": "\$11.25"
      },
      {
        "name": "Samuel Adams Boston Lager",
        "description": "Boston, MA 20-oz Draft - Golden-colored with flavors that are dry, clean, crisp, and refreshing with subtle bitterness",
        "price": "\$11.25"
      }
    ],
    "Specialty Cocktail": [
      {
        "name": "Tennessee Lemonade",
        "description": "Jack Daniel's Tennessee Whiskey with Minute Maid® Premium Lemonade and Peach",
        "price": "\$16.00"
      }
    ]
  },
  "allergy_friendly_options": {
    "Gluten/Wheat Allergy-Friendly": [
      {
        "name": "Memphis Dry-rub Pork Ribs - Gluten/Wheat Allergy-Friendly",
        "description": "Allergy-Friendly Garlic Toast and choice of Side",
        "price": "\$16.49"
      },
      {
        "name": "Kansas City-smoked Half Chicken - Gluten/Wheat Allergy-Friendly",
        "description": "Sweet BBQ Sauce, Allergy-Friendly Garlic Toast, and Choice of a Side",
        "price": "\$14.79"
      },
      {
        "name": "BBQ Burger - Gluten/Wheat Allergy-Friendly",
        "description": "BBQ Burger served on Allergy-Friendly Garlic Toast and topped with BBQ Pulled Pork, Lettuce, Tomato, and Plant-based Garlic Aïoli with choice of Side",
        "price": "\$14.79"
      },
      {
        "name": "Sliced Texas Beef Brisket Sandwich - Gluten/Wheat Allergy-Friendly",
        "description": "House-smoked Beef Brisket Sandwich on Allergy-Friendly Garlic Toast served with choice of Side",
        "price": "\$14.29"
      },
      {
        "name": "North Carolina Chopped Smoked Pork Butt Platter - Gluten/Wheat Allergy-Friendly",
        "description": "Allergy-Friendly Garlic Toast and choice of Side",
        "price": "\$13.49"
      },
      {
        "name": "Kids' Allergy-Friendly Chicken Strips - Gluten/Wheat Allergy-Friendly",
        "description": "Served with Coleslaw and Watermelon and a choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "price": "\$8.49"
      },
      {
        "name": "Kids' Cheeseburger - Gluten/Wheat Allergy-Friendly",
        "description": "Small Grilled Angus Burger topped with American Cheese on Allergy-Friendly Bread served with Coleslaw and Watermelon and a choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "price": "\$8.49"
      },
      {
        "name": "Kids' Salad with Chicken - Gluten/Wheat Allergy-Friendly",
        "description": "Chopped Romaine with Chilled Pulled Chicken, Tomato, Cucumber, and a choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions.",
        "price": "\$7.79"
      },
      {
        "name": "Baked Beans with Burnt Ends (Side) - Gluten/Wheat Allergy-Friendly",
        "price": "\$4.99"
      },
      {
        "name": "Creamy Coleslaw (Side) - Gluten/Wheat Allergy-Friendly",
        "price": "\$4.99"
      },
      {
        "name": "French Fries (Side) - Gluten/Wheat Allergy-Friendly",
        "price": "\$4.99"
      },
      {
        "name": "Fresh Watermelon Slices - Gluten/Wheat Allergy-Friendly",
        "price": "\$4.99"
      },
      {
        "name": "Allergy-Friendly Chocolate Chip Cookie - Gluten/Wheat Allergy-Friendly",
        "price": "\$3.49"
      }
    ],
    "Egg Allergy-Friendly": [
      {
        "name": "Memphis Dry-rub Pork Ribs - Egg Allergy-Friendly",
        "description": "Allergy-Friendly Garlic Toast and choice of Side",
        "price": "\$16.49"
      },
      {
        "name": "Kansas City-smoked Half Chicken - Egg Allergy-Friendly",
        "description": "Sweet BBQ Sauce, Allergy-Friendly Garlic Toast, and Choice of a Side",
        "price": "\$14.79"
      },
      {
        "name": "BBQ Burger - Egg Allergy-Friendly",
        "description": "BBQ Burger served on Garlic Toast and topped with BBQ Pulled Pork, Lettuce, Tomato, and Plant-based Garlic Aïoli with choice of Side",
        "price": "\$14.79"
      },
      {
        "name": "BBQ Jackfruit Sandwich - Egg Allergy-Friendly",
        "description": "Pulled BBQ Jackfruit with Coleslaw and Pickles on Garlic Toast served with choice of Side",
        "price": "\$13.99"
      },
      {
        "name": "Sliced Texas Beef Brisket Sandwich - Egg Allergy-Friendly",
        "description": "House-smoked Beef Brisket Sandwich on Allergy-Friendly Garlic Toast served with choice of Side",
        "price": "\$14.29"
      },
      {
        "name": "North Carolina Chopped Smoked Pork Butt Platter - Egg Allergy-Friendly",
        "description": "Allergy-Friendly Garlic Toast and choice of Side",
        "price": "\$13.49"
      },
      {
        "name": "Kids' Cheeseburger - Egg Allergy-Friendly",
        "description": "Small Grilled Angus Burger topped with American Cheese on Allergy-Friendly Bread served with Coleslaw and Watermelon and a choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "price": "\$8.49"
      },
      {
        "name": "Kids' Chicken Strips - Egg Allergy-Friendly",
        "description": "Served with Coleslaw and Watermelon and a choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "price": "\$8.49"
      },
      {
        "name": "Kids' Salad with Chicken - Egg Allergy-Friendly",
        "description": "Chopped Romaine with Chilled Pulled Chicken, Tomato, Cucumber, and a choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions.",
        "price": "\$7.79"
      },
      {
        "name": "Kids' Macaroni & Cheese - Egg Allergy-Friendly",
        "description": "House-made Oven-baked Macaroni & White Cheddar Cheese served with Coleslaw and Watermelon and a choice of Small Lowfat Milk or Small DASANI® Bottled Water.",
        "price": "\$6.99"
      },
      {
        "name": "Banana Pudding - Egg Allergy-Friendly",
        "price": "\$5.29"
      },



    {
      "name": "Baked Beans with Burnt Ends (Side) - Fish/Shellfish Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Creamy Coleslaw (Side) - Fish/Shellfish Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "French Fries (Side) - Fish/Shellfish Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Macaroni & Cheese (Side) - Fish/Shellfish Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Onion Rings (Side) - Fish/Shellfish Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Fresh Watermelon Slices - Fish/Shellfish Allergy-Friendly",
      "price": "\$4.99"
    }
  ],
  "Milk Allergy-Friendly": [
    {
      "name": "Memphis Dry-rub Pork Ribs - Milk Allergy-Friendly",
      "description": "Allergy-Friendly Garlic Toast and choice of Side",
      "price": "\$16.49"
    },
    {
      "name": "Kansas City-smoked Half Chicken - Milk Allergy-Friendly",
      "description": "Sweet BBQ Sauce, Allergy-Friendly Garlic Toast, and Choice of a Side",
      "price": "\$14.79"
    },
    {
      "name": "BBQ Burger - Milk Allergy-Friendly",
      "description": "BBQ Burger served on Allergy-Friendly Garlic Toast and topped with BBQ Pulled Pork, Lettuce, Tomato, and Plant-based Garlic Aïoli with choice of Side",
      "price": "\$14.79"
    },
    {
      "name": "BBQ Jackfruit Sandwich - Milk Allergy-Friendly",
      "description": "Pulled BBQ Jackfruit with Coleslaw and Pickles on Garlic Toast served with choice of Side",
      "price": "\$13.99"
    },
    {
      "name": "Sliced Texas Beef Brisket Sandwich - Milk Allergy-Friendly",
      "description": "House-smoked Beef Brisket Sandwich on Allergy-Friendly Garlic Toast served with choice of Side",
      "price": "\$14.29"
    },
    {
      "name": "Kids' Chicken Strips - Milk Allergy-Friendly",
      "description": "Served with Coleslaw and Watermelon and a choice of Small DASANI® Bottled Water or Small Minute Maid® Apple Juice",
      "price": "\$8.49"
    },
    {
      "name": "Kids' Hamburger - Milk Allergy-Friendly",
      "description": "Served with Coleslaw and Watermelon and a choice of Small Minute Maid® Apple Juice or Small DASANI® Bottled Water",
      "price": "\$8.49"
    },
    {
      "name": "Kids' Salad with Chicken - Milk Allergy-Friendly",
      "description": "Chopped Romaine with Chilled Pulled Chicken, Tomato, Cucumber, and a Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions.",
      "price": "\$7.79"
    },
    {
      "name": "Baked Beans with Burnt Ends (Side) - Milk Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "French Fries (Side) - Milk Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Fresh Watermelon Slices - Milk Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Allergy-Friendly Chocolate Chip Cookie - Milk Allergy-Friendly",
      "price": "\$3.49"
    },
    {
      "name": "North Carolina Chopped Smoked Pork Butt Platter - Milk Allergy-Friendly",
      "description": "Allergy-Friendly Garlic Toast and choice of Side",
      "price": "\$13.49"
    },
    {
      "name": "Creamy Coleslaw (Side) - Milk Allergy-Friendly",
      "price": "\$4.99"
    }
  ],
  "Peanut/Tree Nut Allergy-Friendly": [
    {
      "name": "Memphis Dry-rub Pork Ribs - Peanut/Tree Nut Allergy-Friendly",
      "description": "Cornbread and choice of Side",
      "price": "\$16.49"
    },
    {
      "name": "Kansas City-smoked Half Chicken - Peanut/Tree Nut Allergy-Friendly",
      "description": "Sweet BBQ Sauce, Cornbread, and Choice of a Side",
      "price": "\$14.79"
    },
    {
      "name": "BBQ Burger - Peanut/Tree Nut Allergy-Friendly",
      "description": "BBQ Burger served on Garlic Toast and topped with BBQ Pulled Pork, Lettuce, Tomato, and Plant-based Garlic Aïoli with choice of Side",
      "price": "\$14.79"
    },
    {
      "name": "BBQ Jackfruit Sandwich - Peanut/Tree Nut Allergy-Friendly",
      "description": "Pulled BBQ Jackfruit with Coleslaw and Pickles on Garlic Toast served with choice of Side",
      "price": "\$13.99"
    },
    {
      "name": "Sliced Texas Beef Brisket Sandwich - Peanut/Tree Nut Allergy-Friendly",
      "description": "House-smoked Beef Brisket Sandwich on Garlic Toast served with choice of Side",
      "price": "\$14.29"
    },
    {
      "name": "North Carolina Chopped Smoked Pork Butt Platter - Peanut/Tree Nut Allergy-Friendly",
      "description": "Cornbread and choice of Side",
      "price": "\$13.49"
    },
    {
      "name": "House Salad with Smoked Chicken - Peanut/Tree Nut Allergy-Friendly",
      "description": "Hearts of Romaine, Tomato, Red Onions, Smokey Ranch, and Cornbread Croutons with Smoked Chicken",
      "price": "\$12.29"
    },
    {
      "name": "House Salad with Beef Brisket - Peanut/Tree Nut Allergy-Friendly",
      "description": "Hearts of Romaine, Tomato, Red Onions, Smokey Ranch, and Cornbread Croutons with Beef Brisket",
      "price": "\$12.29"
    },
    {
      "name": "House Salad with Pulled BBQ Pork - Peanut/Tree Nut Allergy-Friendly",
      "description": "Hearts of Romaine, Tomato, Red Onions, Smokey Ranch, and Cornbread Croutons with Pulled BBQ Pork",
      "price": "\$12.29"
    },
    {
      "name": "Kids' Cheeseburger - Peanut/Tree Nut Allergy-Friendly",
      "description": "Small Grilled Angus Burger topped with American Cheese on Allergy-Friendly Bread served with Coleslaw and Watermelon and a choice of Small Lowfat Milk or Small DASANI® Bottled Water",
      "price": "\$8.49"
    },
    {
      "name": "Kids' Chicken Strips - Peanut/Tree Nut Allergy-Friendly",
      "description": "Served with Coleslaw and Watermelon and a choice of Small Lowfat Milk or Small DASANI® Bottled Water",
      "price": "\$8.49"
    },
    {
      "name": "Kids' Salad with Chicken - Peanut/Tree Nut Allergy-Friendly",
      "description": "Chopped Romaine with Chilled Pulled Chicken, Tomato, Cucumber, and a choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions.",
      "price": "\$7.79"
    },
    {
      "name": "Kids' Macaroni & Cheese - Peanut/Tree Nut Allergy-Friendly",
      "description": "House-made Oven-baked Macaroni & White Cheddar Cheese served with Coleslaw and Watermelon and a choice of Small Lowfat Milk or Small DASANI® Bottled Water",
      "price": "\$6.99"
    },
    {
      "name": "S'mores Brownie - Peanut/Tree Nut Allergy-Friendly",
      "price": "\$5.29"
    },
    {
      "name": "Baked Beans with Burnt Ends (Side) - Peanut/Tree Nut Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Creamy Coleslaw (Side) - Peanut/Tree Nut Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "French Fries (Side) - Peanut/Tree Nut Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Macaroni & Cheese (Side) - Peanut/Tree Nut Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Onion Rings (Side) - Peanut/Tree Nut Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Fresh Watermelon Slices - Peanut/Tree Nut Allergy-Friendly",
      "price": "\$4.99"
    }
  ]
}


{
  "Sesame Allergy-Friendly": [
    {
      "name": "Memphis Dry-rub Pork Ribs - Sesame Allergy-Friendly",
      "description": "Cornbread and choice of Side",
      "price": "\$16.49"
    },
    {
      "name": "BBQ Burger - Sesame Allergy-Friendly",
      "description": "1/3 lb Angus Burger on Garlic Toast topped with BBQ Pork, Lettuce, Tomato, Garlic Aïoli, and Fried Onion Ring served with your choice of Side",
      "price": "\$14.79"
    },
    {
      "name": "Kansas City-smoked Half Chicken - Sesame Allergy-Friendly",
      "description": "Sweet BBQ Sauce, Cornbread, and Choice of a Side",
      "price": "\$14.79"
    },
    {
      "name": "Sliced Texas Beef Brisket Sandwich - Sesame Allergy-Friendly",
      "description": "House-smoked Beef Brisket Sandwich on Garlic Toast served with choice of Side",
      "price": "\$14.29"
    },
    {
      "name": "BBQ Jackfruit Sandwich - Sesame Allergy-Friendly",
      "description": "Pulled BBQ Jackfruit with Coleslaw and Pickles on Garlic Toast served with choice of Side",
      "price": "\$13.99"
    },
    {
      "name": "Cheeseburger - Sesame Allergy-Friendly",
      "description": "1/3 lb Angus Burger on Garlic Toast topped with American Cheese, Lettuce, and Tomato served with choice of Side",
      "price": "\$13.79"
    },
    {
      "name": "North Carolina Chopped Smoked Pork Butt Platter - Sesame Allergy-Friendly",
      "description": "Cornbread and choice of Side",
      "price": "\$13.49"
    },
    {
      "name": "House Salad with Smoked Chicken - Sesame Allergy-Friendly",
      "description": "Hearts of Romaine, Tomato, Red Onions, Smokey Ranch, and Cornbread Croutons with Smoked Chicken",
      "price": "\$12.29"
    },
    {
      "name": "House Salad with Pulled BBQ Pork - Sesame Allergy-Friendly",
      "description": "Hearts of Romaine, Tomato, Red Onions, Smokey Ranch, and Cornbread Croutons with Pulled BBQ Pork",
      "price": "\$12.29"
    },
    {
      "name": "House Salad with Beef Brisket - Sesame Allergy-Friendly",
      "description": "Hearts of Romaine, Tomato, Red Onions, Smokey Ranch, and Cornbread Croutons with Beef Brisket",
      "price": "\$12.29"
    },
    {
      "name": "Kids' Cheeseburger - Sesame Allergy-Friendly",
      "description": "Small Grilled Angus Burger topped with American Cheese served with Coleslaw and Watermelon with a choice of Small Lowfat Milk or Small DASANI® Bottled Water",
      "price": "\$8.49"
    },
    {
      "name": "Kids' Chicken Strips - Sesame Allergy-Friendly",
      "description": "Served with Coleslaw and Watermelon and a choice of Small Lowfat Milk or Small DASANI® Bottled Water",
      "price": "\$8.49"
    },
    {
      "name": "Kids' Salad with Chicken - Sesame Allergy-Friendly",
      "description": "Chopped Romaine with Chilled Pulled Chicken, Tomato, Cucumber, and a choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions.",
      "price": "\$7.79"
    },
    {
      "name": "Kids' Macaroni & Cheese - Sesame Allergy-Friendly",
      "description": "House-made Oven-baked Macaroni & White Cheddar Cheese served with Coleslaw and Watermelon and a choice of Small Lowfat Milk or Small DASANI® Bottled Water.",
      "price": "\$6.99"
    },
    {
      "name": "Banana Pudding - Sesame Allergy-Friendly",
      "price": "\$5.29"
    },
    {
      "name": "S'mores Brownie - Sesame Allergy-Friendly",
      "price": "\$5.29"
    },
    {
      "name": "Baked Beans with Burnt Ends (Side) - Sesame Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Beer-battered Onion Rings (Side) - Sesame Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Creamy Coleslaw (Side) - Sesame Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Fresh Watermelon Slices - Sesame Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Macaroni & Cheese (Side) - Sesame Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Seasoned French Fries (Side) - Sesame Allergy-Friendly",
      "price": "\$4.99"
    }
  ],
  "Soy Allergy-Friendly": [
    {
      "name": "Memphis Dry-rub Pork Ribs - Soy Allergy-Friendly",
      "description": "Cornbread and choice of Side",
      "price": "\$16.49"
    },
    {
      "name": "Kansas City-smoked Half Chicken - Soy Allergy-Friendly",
      "description": "Sweet BBQ Sauce, Cornbread, and Choice of a Side",
      "price": "\$14.79"
    },
    {
      "name": "BBQ Burger - Soy Allergy-Friendly",
      "description": "BBQ Burger served on Allergy-Friendly Garlic Toast and topped with BBQ Pulled Pork, Lettuce, Tomato, and Plant-based Garlic Aïoli with choice of Side",
      "price": "\$14.79"
    },
    {
      "name": "Sliced Texas Beef Brisket Sandwich - Soy Allergy-Friendly",
      "description": "House-smoked Beef Brisket Sandwich on Allergy-Friendly Garlic Toast served with choice of Side",
      "price": "\$14.29"
    },
    {
      "name": "House Salad with Smoked Chicken - Soy Allergy-Friendly",
      "description": "Hearts of Romaine, Tomato, Red Onions, Smokey Ranch, and Cornbread Croutons with Smoked Chicken",
      "price": "\$12.29"
    },
    {
      "name": "House Salad with Pulled BBQ Pork - Soy Allergy-Friendly",
      "description": "Hearts of Romaine, Tomato, Red Onions, Smokey Ranch, and Cornbread Croutons with Pulled BBQ Pork",
      "price": "\$12.29"
    },
    {
      "name": "House Salad with Beef Brisket - Soy Allergy-Friendly",
      "description": "Hearts of Romaine, Tomato, Red Onions, Smokey Ranch, and Cornbread Croutons with Beef Brisket",
      "price": "\$12.29"
    },
    {
      "name": "Kids' Cheeseburger - Soy Allergy-Friendly",
      "description": "Small Grilled Angus Burger topped with American Cheese on Allergy-Friendly Bread served with Coleslaw and Watermelon and a choice of Small Lowfat Milk or Small DASANI® Bottled Water",
      "price": "\$8.49"
    },
    {
      "name": "Kids' Chicken Strips - Soy Allergy-Friendly",
      "description": "Served with Coleslaw and Watermelon and a choice of Small Lowfat Milk or Small DASANI® Bottled Water",
      "price": "\$8.49"
    },
    {
      "name": "Kids' Salad with Chicken - Soy Allergy-Friendly",
      "description": "Chopped Romaine with Chilled Pulled Chicken, Tomato, Cucumber, and a choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutrition Guidelines for Complete Meals without substitutions.",
      "price": "\$7.79"
    },
    {
      "name": "Kids' Macaroni & Cheese - Soy Allergy-Friendly",
      "description": "House-made Oven-baked Macaroni & White Cheddar Cheese served with Coleslaw and Watermelon and a choice of Small Lowfat Milk or Small DASANI® Bottled Water.",
      "price": "\$6.99"
    },
    {
      "name": "Macaroni & Cheese (Side) - Soy Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "Fresh Watermelon Slices - Soy Allergy-Friendly",
      "price": "\$4.99"
    },
    {
      "name": "North Carolina Chopped Smoked Pork Butt Platter - Soy Allergy-Friendly",
      "description": "Allergy-Friendly Garlic Toast and choice of Side",
      "price": "\$13.49"
    },
    {
      "name": "Creamy Coleslaw (Side) - Soy Allergy-Friendly",
      "price": "\$4.99"
    }
  ]
}

{
  "restaurant": "La Cantina de San Angel",
  "location": "EPCOT, World Showcase",
  "type": "Quick Service Restaurant",
  "mealPeriod": "Lunch And Dinner",
  "menu": {
    "Entrées": [
      {
        "name": "Arroz Bowl with Marinated Grilled Chicken",
        "description": "Rice bowl topped with grilled chicken, corn, spicy tomato salsa, pickled onions, queso fresco and cilantro",
        "price": "\$15.00"
      },
      {
        "name": "Arroz Bowl with Barbacoa Beef or Shrimp",
        "description": "Rice bowl topped with barbacoa beef, corn, spicy tomato salsa, pickled onions, queso fresco and cilantro or Rice bowl topped with Mexican corn breaded shrimp, corn, shredded cabbage, salsa verde, and a mango relish",
        "price": "\$15.75"
      },
      {
        "name": "Tacos de Barbacoa",
        "description": "Shredded Beef on homemade Corn Tortillas topped with Red Salsa and Cilantro. Served with Rice and Black Beans with Queso Fresco",
        "price": "\$16.50"
      },
      {
        "name": "Tacos de Pollo",
        "description": "Marinated Grilled Chicken covered in Red Salsa on homemade Corn Tortillas topped with Cilantro. Served with Rice and Black Beans with Queso Fresco",
        "price": "\$15.75"
      },
      {
        "name": "Tacos de Camarón",
        "description": "Mexican corn breaded shrimp on homemade corn tortillas, cabbage, salsa verde, and a mango relish. Served with rice and black beans with queso fresco",
        "price": "\$16.00"
      },
      {
        "name": "Taco Trio",
        "description": "Barbacoa, Pollo, and Camarón Tacos on homemade Corn Tortillas. Served with Rice and Black Beans with Queso Fresco",
        "price": "\$16.00"
      },
      {
        "name": "Empanadas con Queso",
        "description": "Fried Flour Tortillas filled with Cheese, topped with Sour Cream, Salsa Verde, and Queso Fresco. Served with Rice and Black Beans with Queso Fresco",
        "price": "\$14.75"
      },
      {
        "name": "Nachos",
        "description": "Tortilla Chips topped with White Nacho Cheese, Ground Beef & Beans, Tomatoes, Jalapeños, and Sour Cream. Add Guacamole \$3.00",
        "price": "\$15.50"
      },
      {
        "name": "Guacamole with Totopos",
        "description": "Traditional Gucamole with Tortilla Chips",
        "price": "\$12.00"
      }
    ],
    "Sides": [
      {
        "name": "Rice",
        "price": "\$2.99"
      },
      {
        "name": "Black Beans",
        "price": "\$2.99"
      },
      {
        "name": "Fried Plantains",
        "price": "\$4.99"
      },
      {
        "name": "Guacamole",
        "price": "\$6.99"
      },
      {
        "name": "Sour Cream",
        "price": "\$0.75"
      },
      {
        "name": "Nacho Cheese",
        "price": "\$0.75"
      }
    ],
    "Kids' Meals": [
      {
        "name": "Empanadas con Queso",
        "description": "Served with corn chips and nacho cheese. Served with choice of Drink and a side of Fruit",
        "price": "\$9.50"
      },
      {
        "name": "Chicken Tenders",
        "description": "Served with corn chips and nacho cheese. Served with choice of Drink and a side of Fruit",
        "price": "\$9.50"
      },
      {
        "name": "Chicken Tacos",
        "description": "Marinated grilled chicken on homemade corn tortillas, served with corn chips and nacho cheese. Served with choice of Drink and a side of Fruit",
        "price": "\$9.50"
      },
      {
        "name": "Macaroni & Cheese",
        "description": "Cavatappi Pasta in White Cheddar Cheese Sauce and served with choice of Drink and a side of Fruit",
        "price": "\$9.50"
      }
    ],
    "Desserts": [
      {
        "name": "Churros",
        "description": "with chocolate sauce",
        "price": "\$6.25"
      },
      {
        "name": "Churro Sundae",
        "price": "\$7.99"
      },
      {
        "name": "Mickey Ice Cream Sandwich",
        "price": "\$5.40"
      }
    ],
    "Non-Alcoholic Beverages": [
      {
        "name": "La Cantina Slushy",
        "price": "\$6.00"
      },
      {
        "name": "Jarritos - Traditional Mexican Soda",
        "description": "traditional Mexican Soda with choice of Pineapple, Mango, or Fruit Punch",
        "price": "\$4.25"
      },
      {
        "name": "Assorted Fountain Beverages",
        "price": "\$4.75"
      },
      {
        "name": "DASANI® Bottled Water",
        "price": "\$3.75"
      }
    ],
    "Alcoholic Beverages": [
      {
        "name": ""Top Shelf" Clásica on the Rocks",
        "description": "Centinela Reposado Tequila, Alma Finca Orange Liqueur, Fresh Lime Juice, Agave, Dried Chile Salt rim",
        "price": "\$18.50"
      },
      {
        "name": "Acapulco Colada",
        "description": "Ten To One Rum, Nixta Corn Liqueur and Piña Colada Cream (Contains Dairy)",
        "price": "\$17.00"
      },
      {
        "name": "Frozen Mango Margarita",
        "price": "\$14.25"
      },
      {
        "name": "Frozen Lime Margarita",
        "price": "\$14.25"
      },
      {
        "name": "Tequila Sundae",
        "description": "Tequila 100% de agave, lime sorbet, spicy tamarind candy, chile lime rim",
        "price": "\$10.00"
      },
      {
        "name": "Mexican Red Sangria",
        "price": "\$14.00"
      },
      {
        "name": "Hercules Draft Beer",
        "description": "Made with Mexican corn",
        "price": "\$13.00"
      },
      {
        "name": "Seasonal Mexican Craft",
        "price": "\$13.50"
      },
      {
        "name": "Dos Equis Lager Draft Beer",
        "price": "\$12.00"
      }
    ]
  },
}


{
  "restaurant": "Lotus Blossom Café",
  "location": "EPCOT, World Showcase",
  "type": "Quick Service Restaurant",
  "mealPeriod": "Lunch And Dinner",
  "menu": {
    "Appetizers": [
      {
        "name": "Pork Egg Rolls",
        "price": "\$5.75"
      },
      {
        "name": "Chicken Pot Stickers",
        "price": "\$7.25"
      }
    ],
    "Entrées": [
      {
        "name": "Orange Chicken Combo",
        "description": "Served with Steamed Rice, Pork Egg Roll, and Fortune Cookie",
        "price": "\$14.75"
      },
      {
        "name": "Chicken Fried Rice Combo",
        "description": "Served with Pork Egg Roll and Fortune Cookie",
        "price": "\$14.75"
      },
      {
        "name": "Mongolian Beef Noodle Combo",
        "description": "Served with Pork Egg Roll and Fortune Cookie",
        "price": "\$15.25"
      },
      {
        "name": "Stir-Fried Vegetable Noodle Combo",
        "description": "Served with Vegetable Spring Roll and Fortune Cookie",
        "price": "\$14.75"
      }
    ],
    "Kids' Meals": [
      {
        "name": "Sweet-and-Sour Chicken",
        "description": "Served with Steamed Rice, Carrots, Applesauce, and choice of Lowfat Milk, Small Bottled Water, or Apple Juice",
        "price": "\$10.95"
      },
      {
        "name": "Pot Stickers and Egg Roll",
        "description": "Served with Carrots, Applesauce, and choice of Lowfat Milk, Small Bottled Water, or Apple Juice",
        "price": "\$10.95"
      }
    ],
    "Desserts": [
      {
        "name": "Caramel-Ginger Ice Cream",
        "price": "\$3.95"
      },
      {
        "name": "Lychee Ice Cream",
        "price": "\$3.95"
      }
    ],
    "Beverages": [
      {
        "name": "Assorted Fountain Beverage",
        "price": "\$4.29"
      },
      {
        "name": "Black or Green Iced Tea",
        "description": "Unsweetened",
        "price": "\$5.25"
      },
      {
        "name": "Lychee Iced Tea",
        "description": "Sweetened",
        "price": "\$6.25"
      },
      {
        "name": "DASANI® Bottled Water",
        "price": "\$3.75"
      },
      {
        "name": "Apple Juice",
        "price": "\$3.00"
      },
      {
        "name": "Lowfat Milk",
        "price": "\$3.00"
      },
      {
        "name": "Hot Oolong Tea",
        "price": "\$3.95"
      },
      {
        "name": "Hot Cocoa",
        "price": "\$3.95"
      }
    ],
    "Alcoholic Beverages": [
      {
        "name": "TsingTao Bottled Beer",
        "price": "\$10.00"
      },
      {
        "name": "Lucky Foo Pale Ale",
        "description": "Draft Beer",
        "price": "\$9.95"
      },
      {
        "name": "Honey Jasmine Lager",
        "description": "Draft Beer",
        "price": "\$9.95"
      },
      {
        "name": "Plum Wine",
        "description": "on the rocks",
        "price": "\$9.75"
      }
    ]
  },
}

{
  "restaurant": "Takumi-Tei",
  "location": "EPCOT, World Showcase",
  "type": "Signature Dining",
  "mealPeriod": "Dinner",
  "pricing": {
    "adult": "Select from two prix fixe menus "Omakase" multi-course meals priced at \$250 per adult, plus tax and gratuity",
    "child": "Starting at \$100 per child, plus tax and gratuity (Ages 8-12)"
  },
  "menus": {
    "Omakase Menu "Kiku"": [
      {
        "name": "Ichijyu-Sansai",
        "description": "Traditional one-soup-two-dishes style. Sea urchin Chirashi Sushi Deep-fried tofu with white miso soup and Tuna, avocado, zucchini with ponzu jelly"
      },
      {
        "name": "Sashimi*",
        "description": "4 kinds of today's seasonal sashimi, with assorted garnish"
      },
      {
        "name": "Hassun*",
        "description": "7 kinds of seasonal small plates tailored by Takumitei"
      },
      {
        "name": "Shiizakana*",
        "description": "Deep Fried Japanese Wagyu Beef Shiso leaf Roll, Original Yellow Vinegar, Shiso flowers, Yuzu salt, key lime, Baked Flounder with Saikyo Miso, Pickled celery"
      },
      {
        "name": "Onmono*",
        "description": "Please select from the following. Japanese wagyu beef and bamboo shoots with tortoiseshell sauce, maitake mushrooms, chopped myoga and chives, dew ginger or Spiny Lobster and bamboo shoots with tortoiseshell starchy sauce, maitake mushroom, chopped myoga, chives and dew ginger."
      },
      {
        "name": "Gohanmono",
        "description": "Cooked conger eel nigirizushi with simmered sauce, wasabi, gari and Red miso soup"
      },
      {
        "name": "Macha and Kanmi",
        "description": "Please select from the following. Homemade green tea cake, vanilla ice cream, whipped, blackstrap molasses, mint or Japanese pumpkin blancmange with blackstrap molasses, whipped, mint or Florida orange jelly with strawberry sorbet, whipped mint"
      }
    ],
    "Plant-based Omakase Menu "Hasu"": [
      {
        "name": "Ichijyu Sansa",
        "description": "Traditional one-soup-two-dishes style. Bamboo Shoots Chirashi Sushi Deep-fried Tofu with white Miso Soup and Vegetables in amber jelly"
      },
      {
        "name": "Hiyashihachi",
        "description": "Flesh yuba and pickled daikon with assorted garnish"
      },
      {
        "name": "Agemono",
        "description": "Bamboo shoot tempura with yuzu salt and key lime, Grilled red konnyaku with yuzu miso,Tofu paste with spinach, Pickled celery"
      },
      {
        "name": "Nimonowan",
        "description": "Chrysanthemum Flower Vegetable Soup with Maitake Mushrooms, Daikon Radish and Stick Yuba and chopped chives"
      },
      {
        "name": "Onmono",
        "description": "Deep-fried pumpkin with rice flour and 3 kinds of vegetables with soy sauce original sauce, chopped myoga and chives"
      },
      {
        "name": "Gohanmono",
        "description": "Assorted 5 kinds of nigiri sushi made with colorful vegetables and Red miso soup"
      },
      {
        "name": "Macha and Kanmi",
        "description": "Please select from the following. Homemade green tea cake, vanilla ice cream, whipped, blackstrap molasses, mint or Japanese pumpkin blancmange with blackstrap molasses, whipped, mint or Florida orange jelly with strawberry sorbet, whipped mint"
      }
    ],
    "Children's Omakase Menu "Himawari" (Guest ages 8-12)": [
      {
        "name": "Ichijyu Sansa",
        "description": "Traditional one-soup-three-dishes style. Bamboo Shoots Chirashi Sushi, Deep-fried Tofu with white Miso Sauce, Vegetables in amber jelly."
      },
      {
        "name": "Hiyashihachi",
        "description": "Fresh yuba with assorted garnish"
      },
      {
        "name": "Yakimono",
        "description": "Baked Flounder with Saikyo Miso, Homemade thick-baked egg, Grilled red konnyaku with yuzu miso, Tofu paste with spinach, Pickled celery"
      },
      {
        "name": "Donburi",
        "description": "Please select from the following. Tendon with shrimp and shiso leaves or Vegetable Kakiage Tendon or Oyako-don (rice topped with chicken and eggs) and Red miso soup"
      },
      {
        "name": "Macha and Kanmi",
        "description": "Please select from the following. Homemade green tea cake, vanilla ice cream, whipped, blackstrap molasses, mint or Japanese pumpkin blancmange with blackstrap molasses, whipped, mint or Florida orange jelly with strawberry sorbet, whipped mint."
      }
    ]
  },
  "beverages": {
    "Sake - Junmai Daiginjo": [
      {
        "name": "IWA",
        "bottle": "\$492.00",
        "glass": "\$101.00"
      },
      {
        "name": "Dassai 23 - Yamaguchi, Japan",
        "bottle": "\$260.00",
        "glass": "\$53.00"
      },
      {
        "name": "Dassai 39 - Yamaguchi, Japan",
        "bottle": "\$138.00",
        "glass": "\$28.00"
      },
      {
        "name": "Dassai 45 - Yamaguchi, Japan",
        "bottle": "\$75.00",
        "glass": "\$15.00"
      },
      {
        "name": "Junmai Daiginjo - Kubota Manju - Niigata",
        "bottle": "\$236.00",
        "glass": "\$48.00"
      },
      {
        "name": "Kubota - Niigata, Japan",
        "bottle": "\$110.00",
        "glass": "\$23.00"
      },
      {
        "name": "Hakkaisan 45 - Niigata, Japan",
        "bottle": "\$110.00",
        "glass": "\$23.00"
      },
      {
        "name": "KEN - Fukushima, Japan",
        "bottle": "\$244.00",
        "glass": "\$50.00"
      }
    ],
    "Sake - Junmai Ginjo": [
      {
        "name": "Tomoju - Ibaragi, Japan",
        "bottle": "\$93.00",
        "glass": "\$27.00"
      },
      {
        "name": "Fukuju - Hyogo, Japan",
        "bottle": "\$119.00",
        "glass": "\$25.00"
      },
      {
        "name": "Kuroushi - Wakayama, Japan",
        "bottle": "\$213.00",
        "glass": "\$44.00"
      },
      {
        "name": "Moon on the Water - Hiroshima, Japan",
        "bottle": "\$105.00",
        "glass": "\$22.00"
      },
      {
        "name": "Kubota Senju - Niigata, Japan",
        "bottle": "\$81.00",
        "glass": "\$17.00"
      }
    ],
    "Sake - Junmai": [
      {
        "name": "Suijin - Iwate, Japan",
        "bottle": "\$89.00",
        "glass": "\$18.00"
      },
      {
        "name": "Shichida - Saga, Japan",
        "bottle": "\$110.00",
        "glass": "\$23.00"
      },
      {
        "name": "DAN - Yamanashi, Japan",
        "bottle": "\$105.00",
        "glass": "\$22.00"
      },
      {
        "name": "Hakkaisan Tokubetsu - Niigata, Japan",
        "bottle": "\$81.00",
        "glass": "\$17.00"
      }
    ],
    "Sake - Sparkling": [
      {
        "name": "Charles Heidsieck Champagne Brut Reserve - Champagne, France",
        "bottle": "\$230.00",
        "glass": "\$65.00"
      }
    ],
    "Sake - Honjozo": [
      {
        "name": "Hakkaisan Tokubetsu - Niigata, Japan",
        "bottle": "\$75.00",
        "glass": "\$15.00"
      },
      {
        "name": "Nigori "Sacred Mist" - Okayama, Japan",
        "bottle": "\$80.00",
        "glass": "\$16.00"
      }
    ],
    "Sake - Plum": [
      {
        "name": "Plum Liqueur Mito no Kairaku Enultra premium 5 year - Ibaragi, Japan",
        "bottle": "\$178.00",
        "glass": "\$30.00"
      }
    ],
    "Japanese Whiskies (Single)": [
      {
        "name": "Hakushu 12 Single Malt",
        "glass": "\$54.00"
      },
      {
        "name": "Yamazaki 12 Single Malt",
        "glass": "\$44.00"
      },
      {
        "name": "Ichiro Malt and Grain",
        "glass": "\$25.00"
      },
      {
        "name": "Hibiki Harmony",
        "glass": "\$22.00"
      },
      {
        "name": "Nikka Coffey",
        "glass": "\$20.00"
      }
    ],
    "Non-Alcoholic Cocktails": [
      {
        "name": "Blood Orange Spritzer",
        "description": "Blood Orange Monin, Falernum, Sparkling Water",
        "price": "\$8.00"
      },
      {
        "name": "Ginger Mimosa",
        "description": "Orange Juice, Falernum, Ginger Ale",
        "price": "\$8.00"
      },
      {
        "name": "Okinawa Sunshine",
        "description": "Calpico, Pineapple Juice, Orange Juice, Yuzu Juice, Sprite",
        "price": "\$8.00"
      }
    ],
    "Specialty Cocktails": [
      {
        "name": "Kochi",
        "description": "Suijin Sake, Rum, Fresh Mint, Orange, Yuzu Liqueur, Yuzu Juice",
        "price": "\$18.00"
      },
      {
        "name": "Yogan",
        "description": "Haku Japanese Vodka, Lime Juice, Ginger Beer, Lime",
        "price": "\$15.00"
      },
      {
        "name": "Sakurajima",
        "description": "Iwai Whisky, Lemon Juice, Smoked Cherrywood",
        "price": "\$16.00"
      },
      {
        "name": "Kami",
        "description": "KI NO BI Gin, Nigori "Sacred Mist" Sake, Lychee Calpico, Lychee",
        "price": "\$15.00"
      },
      {
        "name": "Dassai Flight",
        "description": "Dassai 45 Junmai Daiginjo, Dassai 39 Junmai Daiginjo, Dassai 23 Junmai Daiginjo",
        "price": "\$55.00"
      },
      {
        "name": "Kubota Flight",
        "description": "Kubota Senju Ginjo, Kubota Junmai Daiginjo, Kubota Manju Junmai Daiginjo",
        "price": "\$50.00"
      },
      {
        "name": "Hakkaisan Flight",
        "description": "Hakkaisan Tokubetsu Junmai, Hakkaisan Tokubetsu Honjozo, Hakkaisan Junamai Daiginjo",
        "price": "\$30.00"
      }
    ],
    "Japanese Beer": [
      {
        "name": "Coedo Ruri Draft",
        "glass": "\$14.00"
      },
      {
        "name": "Koshihikari Rice Beer",
        "glass": "\$20.00"
      }
    ],
    "Wine": [
      {
        "name": "Rockblock Sauvignon Blanc 2022 - Washington, USA",
        "bottle": "\$150.00",
        "glass": "\$45.00"
      },
      {
        "name": "Pahlmeyer Jason Chardonnay 2021 - Napa Valley, CA",
        "bottle": "\$230.00",
        "glass": "\$50.00"
      },
      {
        "name": "Kenzo Estate "Asatsuyu" Sauvignon Blanc 2019 - Napa Valley, USA",
        "bottle": "\$240.00",
        "glass": "\$60.00"
      },
      {
        "name": "Domaine Faiveley Mercurey 1er Cru Clos Des Myglands Monopole Pinot Noir 2021 - Burgundy, France",
        "bottle": "\$270.00",
        "glass": "\$56.00"
      },
      {
        "name": "Grgich Hills Estates, Cabernet Sauvignon 2018 - Napa Valley, USA",
        "bottle": "\$280.00",
        "glass": "\$60.00"
      },
      {
        "name": "Kenzo Estate "Rindo" Flagship Red 2019 - Napa Valley, USA",
        "bottle": "\$610.00",
        "glass": "\$130.00"
      },
      {
        "name": "Kenzo Estate "Murasaki" Proprietary Red 2019 - Napa Valley, CA",
        "bottle": "\$990.00",
        "glass": "\$230.00"
      },
      {
        "name": "Chateau Malherbe, Cotes de Provence Rose 2021 - Provence, France",
        "bottle": "\$180.00",
        "glass": "\$40.00"
      },
      {
        "name": "Chateau Climents, Cypres de Climens Barsac 20

{
  "restaurant": "Fife & Drum Tavern",
  "location": "EPCOT, World Showcase",
  "type": "Snack",
  "mealPeriod": "Snack",
  "menu": {
    "Featured": [
      {
        "name": "Popcorn - Souvenir Bucket",
        "description": "(Plant-based)",
        "price": "\$13.00"
      },
      {
        "name": "Popcorn Bucket Refill",
        "description": "valid for length of stay",
        "price": "\$2.25"
      },
      {
        "name": "Popcorn",
        "description": "(Plant-based)",
        "price": "\$5.50"
      },
      {
        "name": "Jumbo Turkey Leg",
        "price": "\$14.25"
      },
      {
        "name": "Mickey Pretzel",
        "description": "served with Cheese Sauce",
        "price": "\$8.25"
      },
      {
        "name": "Hot Dog",
        "description": "served with Chips",
        "price": "\$10.25"
      },
      {
        "name": "Soft-serve Ice Cream in a Waffle Cone",
        "description": "Vanilla, Chocolate or Swirl",
        "price": "\$6.50"
      }
    ],
    "Beverages": [
      {
        "name": "Assorted Fountain Beverages",
        "price": "\$4.75"
      },
      {
        "name": "DASANI® Bottled Water",
        "price": "\$3.75"
      },
      {
        "name": "The American Dream",
        "description": "Frozen Fanta® Wild Cherry, Vanilla Ice Cream, and Frozen Fanta® Blue Raspberry Slushy",
        "price": "\$6.50"
      },
      {
        "name": "Frozen Minute Maid® Lemonade Slushy",
        "price": "\$6.25"
      },
      {
        "name": "Fanta® Blue Raspberry Frozen Slushy",
        "price": "\$6.25"
      },
      {
        "name": "Fanta® Wild Cherry Frozen Slushy",
        "price": "\$6.25"
      },
      {
        "name": "Barq's® Root Beer Float",
        "description": "Barq's® Root Beer Float with Vanilla Ice Cream",
        "price": "\$6.25"
      }
    ],
    "Alcoholic Beverages": [
      {
        "name": "Bud Light Lager Draft",
        "price": "\$10.00"
      },
      {
        "name": "Yuengling",
        "price": "\$10.50"
      },
      {
        "name": "Samuel Adams Seasonal",
        "price": "\$12.00"
      },
      {
        "name": "Frozen Black Cherry Bourbon Lemonade",
        "description": "Frozen Lemonade made with Red Stag Black Cherry Bourbon",
        "price": "\$15.00"
      },
      {
        "name": "Blue Moon Belgian White Ale",
        "price": "\$10.00"
      }
    ]
  }
}

{
  "restaurant": "Katsura Grill",
  "location": "EPCOT, World Showcase",
  "type": "Quick Service Restaurant",
  "mealPeriod": "Lunch And Dinner",
  "menu": {
    "Sushi": [
      {
        "name": "Tokyo Sushi Combo*",
        "description": "4 pcs. California Roll & 3 pcs. Nigiri",
        "price": "\$14.00"
      },
      {
        "name": "Spicy Roll*",
        "description": "Tuna and Salmon",
        "price": "\$12.00"
      },
      {
        "name": "California Roll*",
        "price": "\$12.00"
      },
      {
        "name": "Vegetable Roll",
        "price": "\$10.00"
      }
    ],
    "Noodle & Salad": [
      {
        "name": "Grilled Chicken Salad",
        "price": "\$13.99"
      },
      {
        "name": "Beef Udon",
        "price": "\$15.99"
      },
      {
        "name": "Shrimp Tempura Udon",
        "price": "\$13.99"
      },
      {
        "name": "Tonkotsu (Pork) Ramen",
        "description": "served with Pork and Vegetables",
        "price": "\$15.99"
      },
      {
        "name": "Yasai (Vegetable) Udon",
        "price": "\$13.99"
      }
    ],
    "Osusume — Recommended Menu": [
      {
        "name": "Shrimp and Chicken Teriyaki",
        "description": "served with Steamed Rice and Mixed Vegetables",
        "price": "\$14.99"
      },
      {
        "name": "Chicken Cutlet Curry",
        "description": "Curry Sauce with Chicken served with Steamed Rice and Mixed Vegetables",
        "price": "\$15.99"
      },
      {
        "name": "Chicken and Beef Teriyaki",
        "description": "served with Steamed Rice and Mixed Vegetables",
        "price": "\$15.99"
      },
      {
        "name": "Chicken Teriyaki",
        "description": "served with Steamed Rice and Mixed Vegetables",
        "price": "\$14.99"
      }
    ],
    "Side Orders": [
      {
        "name": "Yuzu Miso Wings",
        "description": "6pc Chicken wings",
        "price": "\$13.99"
      },
      {
        "name": "Miso Soup",
        "price": "\$4.00"
      },
      {
        "name": "Edamame",
        "description": "served chilled",
        "price": "\$5.00"
      },
      {
        "name": "Salad",
        "description": "served with Ginger Dressing",
        "price": "\$6.00"
      }
    ],
    "Kids' Meal": [
      {
        "name": "Chicken and Shrimp Teriyaki",
        "price": "\$9.50"
      },
      {
        "name": "Beef and Shrimp Teriyaki",
        "description": "served with White Rice, Vegetables, Cookie and a choice of Juice, Milk, or Soda",
        "price": "\$9.50"
      },
      {
        "name": "Chicken Teriyaki",
        "description": "served with White Rice, Vegetables, Cookie and a choice of Juice, Milk, or Soda",
        "price": "\$8.50"
      }
    ],
    "Desserts": [
      {
        "name": "Yuzu Cheesecake",
        "price": "\$6.00"
      },
      {
        "name": "Mousse Cake",
        "price": "\$6.00"
      }
    ],
    "Beverages": [
      {
        "name": "Assorted Fountain Beverages",
        "price": "\$4.99"
      },
      {
        "name": "Apple Juice",
        "price": "\$3.50"
      },
      {
        "name": "Lowfat Milk",
        "price": "\$3.50"
      },
      {
        "name": "DASANI® Bottled Water",
        "price": "\$3.75"
      }
    ],
    "Alcoholic Beverages": [
      {
        "name": "Japanese Cocktails",
        "price": "\$12.50"
      },
      {
        "name": "Plum Wine",
        "price": "\$9.00"
      },
      {
        "name": "Kirin Draft Beer",
        "price": "\$12.00"
      },
      {
        "name": "Sapporo Draft Beer",
        "price": "\$12.00"
      },
      {
        "name": "Kirin Light Beer",
        "price": "\$11.00"
      },
      {
        "name": "Sake",
        "description": "(hot or cold)",
        "price": "\$9.00"
      },
      {
        "name": "Nigori (Unfiltered) Sake",
        "price": "\$10.00"
      }
    ]
  },

}

{
  "restaurant": "Chefs de France",
  "location": "EPCOT, World Showcase",
  "type": "Casual Dining",
  "mealPeriod": "Lunch",
  "menu": {
    "Appetizers": [
      {
        "name": "Cassolette d'escargots de Bourgogne au beurre persillé (Escargot)",
        "description": "Casserole of Burgundian escargots baked in parsley and garlic butter",
        "price": "\$17.95"
      },
      {
        "name": "Tartare de saumon legerement fume, sauce a l'aneth",
        "description": "Raw Salmon tartare lightly smoked, cucumber, dill sauce",
        "price": "\$17.50"
      },
      {
        "name": "Soupe à l'oignon gratinée (French Onion Soup)",
        "description": "French Onion Soup topped with Gruyère cheese",
        "price": "\$13.95"
      },
      {
        "name": "Salade aux lardons et croûtons",
        "description": "Selected greens, house vinaigrette dressing, bacon, tomatoes, croutons",
        "price": "\$12.95"
      },
      {
        "name": "Salade de chèvre chaud (Baked Goat Cheese)",
        "description": "Baked goat cheese with walnuts, grapes, tomatoes, endives, mixed greens",
        "price": "\$16.95"
      }
    ],
    "Entrées": [
      {
        "name": "Filet de saumon, riz pilaf, sauce beurre blanc",
        "description": "Seared Salmon, rice pilaf, sweet peas and carrots, beurre blanc sauce",
        "price": "\$36.95"
      },
      {
        "name": "Jarret de porc braise au miel, pommes puree, tomatoes",
        "description": "Braised Heritage pork shank, mashed potatoes. Scallions, tomatoes",
        "price": "\$39.95"
      },
      {
        "name": "Blanquette de la mer",
        "description": "Sautéed shrimp and scallops, spinach, creamy lobster sauce",
        "price": "\$37.95"
      },
      {
        "name": "Ratatouille sur quinoa",
        "description": "Ratatouille served on quinoa with kale (Plant-based)",
        "price": "\$25.95"
      },
      {
        "name": "Gratin de macaroni",
        "description": "Macaroni baked with cream and Gruyère cheese",
        "price": "\$26.95"
      },
      {
        "name": "Poulet Fermier roti, pommes Lyinnaise, haricot vert",
        "description": "Half all natural rotisserie chicken, Lyonnaise potatoes, green beans",
        "price": "\$32.95"
      },
      {
        "name": "Boeuf Bourguignon, linguine",
        "description": "Braised beef in Cabernet, baby onions, carrots, pasta",
        "price": "\$34.95"
      },
      {
        "name": "Entrecote grille, beurre maître d hotel a la fourme, pomme roties*",
        "description": "Grilled Strip Loin, blue cheese compound butter, roasted potatoes",
        "price": "\$46.95"
      },
      {
        "name": "Plateau de fromages et charcuteries",
        "description": "Imported cheeses, charcuteries, house made bread",
        "price": "\$40.95"
      }
    ],
    "Desserts": [
      {
        "name": "Crème Brûlée",
        "description": "Vanilla Crème Brûlée",
        "price": "\$13.95"
      },
      {
        "name": "Cygne profiterole, glace a la vanille, sauce chocolat",
        "description": "Swan cream puff filled with vanilla ice cream, chocolate sauce",
        "price": "\$13.95"
      },
      {
        "name": "Gateau Opera",
        "description": "Coffee sponge, coffee whipped cream, chocolate ganache, vanilla ice cream",
        "price": "\$14.95"
      },
      {
        "name": "Gateau aux 3 chocolats, glace a la vanille",
        "description": "Three layered chocolate mousse cake, vanilla ice cream",
        "price": "\$14.95"
      },
      {
        "name": "Gâteau au agrumes, crème fraise citron vert, fruits rouges tiède",
        "description": "Citrus cake, strawberry lime cream, warm berries compote",
        "price": "\$13.95"
      },
      {
        "name": "Assiette de Sorbets du jour",
        "price": "\$13.95"
      }
    ],
    "Prix Fixe Meal": [
      {
        "name": "Menu Francais",
        "description": "One Appetizer & Choice of one selected entrée (Filet de saumon, Gratin de macaroni, Rataouille sur quinoa, Poulet fermier roti, Boeuf Bourguignon) & One Dessert & Choice of one glass of: Chardonnay, Cabernet Sauvignon Georges Duboeuf, Non Alcoholic Beverage",
        "price": "\$65.95"
      }
    ],
    "Kids' Entrées": [
      {
        "name": "Blanc de Poulet Grillé (Grilled chicken Tenderloin)",
        "description": "Grilled chicken tenderloin and chicken sauce served with choice of green beans, mashed potatoes, or French fries",
        "price": "\$11.95"
      },
      {
        "name": "Croquette de Boeuf en Brioche (Ground Beef Steak)",
        "description": "Ground beef steak in a brioche bun served with choice of green beans, mashed potatoes, or French fries",
        "price": "\$12.95"
      },
      {
        "name": "Filet de Saumon (Seared Salmon)",
        "description": "Seared Salmon served with choice of green beans, mashed potatoes, or French fries",
        "price": "\$13.95"
      }
    ],
    "Kids' Desserts": [
      {
        "name": "Mousse au Chocolat",
        "description": "Chocolate Mousse",
        "price": "\$6.95"
      },
      {
        "name": "Tarte aux Fraises",
        "description": "Strawberry Tart",
        "price": "\$6.75"
      }
    ],
    "Wines": [
      {
        "name": "Les Vins des Chefs",
        "description": "Georges Duboeuf Selection, Pays d'Oc Chardonnay, Pinot Noir, Merlot, Cabernet Sauvignon",
        "bottle": "\$36.95",
        "glass": "\$7.95",
        "carafe": "\$13.25"
      },
      {
        "name": "Sparkling, Veuve Dubarry, Cuvée Prestige, Brut",
        "bottle": "\$54.95",
        "glass": "\$9.95"
      },
      {
        "name": "Champagne, Malard, Excellence, Brut",
        "bottle": "\$105.00",
        "glass": "\$21.95"
      },
      {
        "name": "Champagne, Veuve Clicquot Ponsardin, Brut, N.V.",
        "bottle": "\$185.00"
      },
      {
        "name": "Champagne, Laurent Perrier Rose, N.V.",
        "bottle": "\$285.00"
      },
      {
        "name": "Champagne, Dom Perignon, 2012",
        "bottle": "\$665.00"
      },
      {
        "name": "Bourgogne Blanc, Bouchard Ainé & fils, 2020",
        "bottle": "\$53.95",
        "glass": "\$11.95"
      },
      {
        "name": "Pouilly Fuissé, Paul Bocuse, 2018",
        "bottle": "\$115.00"
      },
      {
        "name": "Sauvignon Blanc, Louis de Camponac, 2019",
        "bottle": "\$54.25",
        "glass": "\$11.50"
      },
      {
        "name": "Pinot Blanc, Alsace, Pierre Sparr, 2021",
        "bottle": "\$59.95",
        "glass": "\$13.25"
      },
      {
        "name": "Riesling, Alsace, Pierre Sparr, 2021",
        "bottle": "\$62.95",
        "glass": "\$14.50"
      },
      {
        "name": "Vouvray, Loire Valley, Sauvion, 2021",
        "bottle": "\$58.25",
        "glass": "\$12.50"
      },
      {
        "name": "L'Opale de La Presqu'ile de Saint-Tropez, 2021",
        "bottle": "\$71.50",
        "glass": "\$15.25"
      },
      {
        "name": "Bourgogne Rouge, Bouchard Ainé & fils, 2019",
        "bottle": "\$54.95",
        "glass": "\$11.95"
      },
      {
        "name": "Gevrey-Chambertin, P. Bouchard, 2016",
        "bottle": "\$175.00"
      },
      {
        "name": "Beaujolais Villages, G.Duboeuf, 2019",
        "bottle": "\$43.50",
        "glass": "\$9.75"
      },
      {
        "name": "Morgon, G. Duboeuf, 2018",
        "bottle": "\$66.25",
        "glass": "\$14.25"
      },
      {
        "name": "Malbec, Fleur des Templiers, 2020",
        "bottle": "\$48.50",
        "glass": "\$10.95"
      },
      {
        "name": "Château La Gravière, 2019",
        "bottle": "\$46.95",
        "glass": "\$9.95"
      },
      {
        "name": "Château Larose-Trintaudon, Haut-Médoc, 2016",
        "bottle": "\$98.25"
      },
      {
        "name": "Château Baron de Brane, Margaux, 2016",
        "bottle": "\$169.00"
      },
      {
        "name": "Château Mezain, 2018",
        "bottle": "\$51.95",
        "glass": "\$11.25"
      },
      {
        "name": "Château Haut Mondain, 2020",
        "bottle": "\$58.75",
        "glass": "\$13.25"
      },
      {
        "name": "Château Cormeil Figeac, Saint-Emilion, 2016",
        "bottle": "\$132.00"
      },
      {
        "name": "Côtes du Rhône, Les Abeilles, J.L. Colombo, 2019",
        "bottle": "\$55.75",
        "glass": "\$12.25"
      },
      {
        "name": "La Glaciere Blanc, Coteaux du Pont du Guard, Chardonnay",
        "bottle": "\$51.95",
        "glass": "\$11.25"
      },
      {
        "name": "La Glaciere Rouge, Cevennes, Merlot and Syrah Blend",
        "bottle": "\$51.95",
        "glass": "\$11.25"
      }
    ],
    "Cocktails & House Specialties": [
      {
        "name": "French Martini",
        "description": "vodka, Chambord, pineapple juice, lemon lime foam",
        "price": "\$16.75"
      },
      {
        "name": "Cocktail des Chefs",
        "description": "sparkling wine, Lejay cassis",
        "price": "\$13.95"
      },
      {
        "name": "St-Germain Cocktail",
        "description": "sparkling wine, St-Germain, sparkling water",
        "price": "\$18.85"
      },
      {
        "name": "Coupe de Champagne",
        "description": "Malard, Excellence, Brut",
        "price": "\$21.95"
      },
      {
        "name": "Kir Royal",
        "description": "Champagne Malard, Lejay cassis",
        "price": "\$22.95"
      },
      {
        "name": "Kir Imperial",
        "description": "Champagne Malard, Chambord",
        "price": "\$23.95"
      },
      {
        "name": "Kir au Cassis",
        "description": "Chardonnay wine, Lejay cassis",
        "price": "\$11.50"
      },
      {
        "name": "Pernod-Ricard",
        "description": "Anise (liquorice) aperitif, water on the rocks",
        "price": "\$10.45"
      },
      {
        "name": "Dubonnet White or Red",
        "description": "dry or sweet wine aperitif on the rocks",
        "price": "\$9.40"
      },
      {
        "name": "Bière Kronenbourg 1664",
        "description": "French beer - Bottle",
        "price": "\$9.95"
      }
    ],
    "Non-Alcoholic Beverages": [
      {
        "name": "Coca-Cola®, Sprite®, or Diet Coke® Caffeine-free",
        "price": "\$4.75"
      },
      {
        "name": "Thé Glacé - Nestea Iced Tea",
        "price": "\$4.75"
      },
      {
        "name": "Lait - Milk",
        "price": "\$4.29"
      },
      {
        "name": "Jus d'Orange - Orange Juice",
        "price": "\$5.00"
      },
      {
        "name": "Diabolo Menthe",
        "description": "Sprite®, Monin green mint syrup",
        "price": "\$5.25"
      },
      {
        "name": "Shirley Temple",
        "description": "Sprite® and grenadine with a maraschino cherry",
        "price": "\$5.25"
      },
      {
        "name": "Thé",
        "description": "Selections of teas",
        "price": "\$4.50"
      },
      {
        "name": "Café",
        "description": "Locally roasted, signature

{
  "restaurant": "Chefs de France",
  "location": "EPCOT, World Showcase",
  "type": "Casual Dining",
  "mealPeriod": "Dinner",
  "menu": {
    "Appetizers": [
      {
        "name": "Cassolette d'escargots de Bourgogne au beurre persillé (Escargot)",
        "description": "Casserole of Burgundian escargots baked in parsley and garlic butter",
        "price": "\$17.95"
      },
      {
        "name": "Tartare de saumon legerement fume, sauce a l'aneth",
        "description": "Raw Salmon tartare lightly smoked, cucumber, dill sauce",
        "price": "\$17.50"
      },
      {
        "name": "Soupe à l'oignon gratinée (French Onion Soup)",
        "description": "French Onion Soup topped with Gruyère cheese",
        "price": "\$13.95"
      },
      {
        "name": "Salade aux lardons et croûtons",
        "description": "Selected greens, house vinaigrette dressing, bacon, tomatoes, croutons",
        "price": "\$12.95"
      },
      {
        "name": "Salade de chèvre chaud (Baked Goat Cheese)",
        "description": "Baked goat cheese with walnuts, grapes, tomatoes, endives, mixed greens",
        "price": "\$16.95"
      }
    ],
    "Entrées": [
      {
        "name": "Filet de saumon, riz pilaf, sauce beurre blanc",
        "description": "Seared Salmon, rice pilaf, sweet peas and carrots, beurre blanc sauce",
        "price": "\$36.95"
      },
      {
        "name": "Jarret de porc braise au miel, pommes puree, tomatoes",
        "description": "Braised Heritage pork shank, mashed potatoes. Scallions, tomatoes",
        "price": "\$39.95"
      },
      {
        "name": "Blanquette de la mer",
        "description": "Sautéed shrimp and scallops, spinach, creamy lobster sauce",
        "price": "\$37.95"
      },
      {
        "name": "Ratatouille sur quinoa",
        "description": "Ratatouille served on quinoa with kale (Plant-based)",
        "price": "\$25.95"
      },
      {
        "name": "Gratin de macaroni",
        "description": "Macaroni baked with cream and Gruyère cheese",
        "price": "\$26.95"
      },
      {
        "name": "Poulet Fermier roti, pommes Lyinnaise, haricot vert",
        "description": "Half all natural rotisserie chicken, Lyonnaise potatoes, green beans",
        "price": "\$32.95"
      },
      {
        "name": "Boeuf Bourguignon, linguine",
        "description": "Braised beef in Cabernet, baby onions, carrots, pasta",
        "price": "\$34.95"
      },
      {
        "name": "Entrecote grille, beurre maître d hotel a la fourme, pomme roties*",
        "description": "Grilled Strip Loin, blue cheese compound butter, roasted potatoes",
        "price": "\$46.95"
      },
      {
        "name": "Plateau de fromages et charcuteries",
        "description": "Imported cheeses, charcuteries, house made bread",
        "price": "\$40.95"
      }
    ],
    "Desserts": [
      {
        "name": "Crème Brûlée",
        "description": "Vanilla Crème Brûlée",
        "price": "\$13.95"
      },
      {
        "name": "Cygne profiterole, glace a la vanille, sauce chocolat",
        "description": "Swan cream puff filled with vanilla ice cream, chocolate sauce",
        "price": "\$13.95"
      },
      {
        "name": "Gateau Opera",
        "description": "Coffee sponge, coffee whipped cream, chocolate ganache, vanilla ice cream",
        "price": "\$14.95"
      },
      {
        "name": "Gateau aux 3 chocolats, glace a la vanille",
        "description": "Three layered chocolate mousse cake, vanilla ice cream",
        "price": "\$14.95"
      },
      {
        "name": "Gâteau au agrumes, crème fraise citron vert, fruits rouges tiède",
        "description": "Citrus cake, strawberry lime cream, warm berries compote",
        "price": "\$13.95"
      },
      {
        "name": "Assiette de Sorbets du jour",
        "price": "\$13.95"
      }
    ],
    "Prix Fixe Meal": [
      {
        "name": "Menu Francais",
        "description": "One Appetizer & Choice of one selected entrée (Filet de saumon, Gratin de macaroni, Rataouille sur quinoa, Poulet fermier roti, Boeuf Bourguignon) & One Dessert & Choice of one glass of: Chardonnay, Cabernet Sauvignon Georges Duboeuf, Non Alcoholic Beverage",
        "price": "\$65.95"
      }
    ],
    "Kids' Entrées": [
      {
        "name": "Blanc de Poulet Grillé (Grilled chicken Tenderloin)",
        "description": "Grilled chicken tenderloin and chicken sauce served with choice of green beans, mashed potatoes, or French fries",
        "price": "\$11.95"
      },
      {
        "name": "Croquette de Boeuf en Brioche (Ground Beef Steak)",
        "description": "Ground beef steak in a brioche bun served with choice of green beans, mashed potatoes, or French fries",
        "price": "\$12.95"
      },
      {
        "name": "Filet de Saumon (Seared Salmon)",
        "description": "Seared Salmon served with choice of green beans, mashed potatoes, or French fries",
        "price": "\$13.95"
      }
    ],
    "Kids' Desserts": [
      {
        "name": "Mousse au Chocolat",
        "description": "Chocolate Mousse",
        "price": "\$6.95"
      },
      {
        "name": "Tarte aux Fraises",
        "description": "Strawberry Tart",
        "price": "\$6.75"
      }
    ],
    "Wines": [
      {
        "name": "Les Vins des Chefs",
        "description": "Georges Duboeuf Selection, Pays d'Oc Chardonnay, Pinot Noir, Merlot, Cabernet Sauvignon",
        "bottle": "\$36.95",
        "glass": "\$7.95",
        "carafe": "\$13.25"
      },
      {
        "name": "Sparkling, Veuve Dubarry, Cuvée Prestige, Brut",
        "bottle": "\$54.95",
        "glass": "\$9.95"
      },
      {
        "name": "Champagne, Malard, Excellence, Brut",
        "bottle": "\$105.00",
        "glass": "\$21.95"
      },
      {
        "name": "Champagne, Veuve Clicquot Ponsardin, Brut, N.V.",
        "bottle": "\$185.00"
      },
      {
        "name": "Champagne, Laurent Perrier Rose, N.V.",
        "bottle": "\$285.00"
      },
      {
        "name": "Champagne, Dom Perignon, 2012",
        "bottle": "\$665.00"
      },
      {
        "name": "Bourgogne Blanc, Bouchard Ainé & fils, 2020",
        "bottle": "\$53.95",
        "glass": "\$11.95"
      },
      {
        "name": "Pouilly Fuissé, Paul Bocuse, 2018",
        "bottle": "\$115.00"
      },
      {
        "name": "Sauvignon Blanc, Louis de Camponac, 2019",
        "bottle": "\$54.25",
        "glass": "\$11.50"
      },
      {
        "name": "Pinot Blanc, Alsace, Pierre Sparr, 2021",
        "bottle": "\$59.95",
        "glass": "\$13.25"
      },
      {
        "name": "Riesling, Alsace, Pierre Sparr, 2021",
        "bottle": "\$62.95",
        "glass": "\$14.50"
      },
      {
        "name": "Vouvray, Loire Valley, Sauvion, 2021",
        "bottle": "\$58.25",
        "glass": "\$12.50"
      },
      {
        "name": "L'Opale de La Presqu'ile de Saint-Tropez, 2021",
        "bottle": "\$71.50",
        "glass": "\$15.25"
      },
      {
        "name": "Bourgogne Rouge, Bouchard Ainé & fils, 2019",
        "bottle": "\$54.95",
        "glass": "\$11.95"
      },
      {
        "name": "Gevrey-Chambertin, P. Bouchard, 2016",
        "bottle": "\$175.00"
      },
      {
        "name": "Beaujolais Villages, G.Duboeuf, 2019",
        "bottle": "\$43.50",
        "glass": "\$9.75"
      },
      {
        "name": "Morgon, G. Duboeuf, 2018",
        "bottle": "\$66.25",
        "glass": "\$14.25"
      },
      {
        "name": "Malbec, Fleur des Templiers, 2020",
        "bottle": "\$48.50",
        "glass": "\$10.95"
      },
      {
        "name": "Château La Gravière, 2019",
        "bottle": "\$46.95",
        "glass": "\$9.95"
      },
      {
        "name": "Château Larose-Trintaudon, Haut-Médoc, 2016",
        "bottle": "\$98.25"
      },
      {
        "name": "Château Baron de Brane, Margaux, 2016",
        "bottle": "\$169.00"
      },
      {
        "name": "Château Mezain, 2018",
        "bottle": "\$51.95",
        "glass": "\$11.25"
      },
      {
        "name": "Château Haut Mondain, 2020",
        "bottle": "\$58.75",
        "glass": "\$13.25"
      },
      {
        "name": "Château Cormeil Figeac, Saint-Emilion, 2016",
        "bottle": "\$132.00"
      },
      {
        "name": "Côtes du Rhône, Les Abeilles, J.L. Colombo, 2019",
        "bottle": "\$55.75",
        "glass": "\$12.25"
      },
      {
        "name": "La Glaciere Blanc, Coteaux du Pont du Guard, Chardonnay",
        "bottle": "\$51.95",
        "glass": "\$11.25"
      },
      {
        "name": "La Glaciere Rouge, Cevennes, Merlot and Syrah Blend",
        "bottle": "\$51.95",
        "glass": "\$11.25"
      }
    ],
    "Cocktails & House Specialties": [
      {
        "name": "French Martini",
        "description": "vodka, Chambord, pineapple juice, lemon lime foam",
        "price": "\$16.75"
      },
      {
        "name": "Cocktail des Chefs",
        "description": "sparkling wine, Lejay cassis",
        "price": "\$13.95"
      },
      {
        "name": "St-Germain Cocktail",
        "description": "sparkling wine, St-Germain, sparkling water",
        "price": "\$18.85"
      },
      {
        "name": "Coupe de Champagne",
        "description": "Malard, Excellence, Brut",
        "price": "\$21.95"
      },
      {
        "name": "Kir Royal",
        "description": "Champagne Malard, Lejay cassis",
        "price": "\$22.95"
      },
      {
        "name": "Kir Imperial",
        "description": "Champagne Malard, Chambord",
        "price": "\$23.95"
      },
      {
        "name": "Kir au Cassis",
        "description": "Chardonnay wine, Lejay cassis",
        "price": "\$11.50"
      },
      {
        "name": "Pernod-Ricard",
        "description": "Anise (liquorice) aperitif, water on the rocks",
        "price": "\$10.45"
      },
      {
        "name": "Dubonnet White or Red",
        "description": "dry or sweet wine aperitif on the rocks",
        "price": "\$9.40"
      },
      {
        "name": "Bière Kronenbourg 1664",
        "description": "French beer - Bottle",
        "price": "\$9.95"
      }
    ],
    "Non-Alcoholic Beverages": [
      {
        "name": "Coca-Cola®, Sprite®, or Diet Coke® Caffeine-free",
        "price": "\$4.75"
      },
      {
        "name": "Thé Glacé - Nestea Iced Tea",
        "price": "\$4.75"
      },
      {
        "name": "Lait - Milk",
        "price": "\$4.29"
      },
      {
        "name": "Jus d'Orange - Orange Juice",
        "price": "\$5.00"
      },
      {
        "name": "Diabolo Menthe",
        "description": "Sprite®, Monin green mint syrup",
        "price": "\$5.25"
      },
      {
        "name": "Shirley Temple",
        "description": "Sprite® and grenadine with a maraschino cherry",
        "price": "\$5.25"
      },
      {
        "name": "Thé",
        "description": "Selections of teas",
        "price": "\$4.50"
      },
      {
        "name": "Café",
        "description": "Locally roasted, signature
        "price": "\$4.25"
        },
        {
        "name": "Café Espresso",
        "price": "\$4.75"
        },
        {
        "name": "Café Cappuccino",
        "price": "\$5.25"
        }
        ],
        "Imported Water and Sodas": [
        {
        "name": "Evian",
        "description": "Non-Sparkling",
        "price": "\$9.95"
        },
        {
        "name": "Perrier 750mL",
        "description": "Sparkling",
        "price": "\$9.95"
        },
        {
        "name": "Perrier 33mL",
        "description": "Sparkling",
        "price": "\$5.00"
        },
        {
        "name": "Orangina",
        "description": "French orange soda",
        "price": "\$6.75"
        },
        {
        "name": "Limonade",
        "description": "French sparkling Limonade",
        "price": "\$6.25"
        }
      ]
    }

{"restaurant": "Via Napoli Ristorante e Pizzeria": "EPCOT, World Showcase Casual Dining",
 "Meal Period": "Dinner",
 "Antipasti (Small Plates)": [{"Bresaola": "bresaola, arugula and shaved parmesan cheese \$15.00"},
                             {"Calamari Fritti": "fried calamari rings, spicy tomato sauce \$23.00"},
                             {"Mozzarella Caprese": "fior di latte mozzarella, vine-ripened tomato, basil \$14.00"},
                             {"Arancini": "fried risotto balls, fontina cheese, meat ragù \$15.00"},
                             {"Homemade Focaccia": "with sides of marinara and Italian extra virgin olive oil and herbs \$8.50"},
                             {"Tagliere (serves 2)": "chef’s selection of cured meats, cheeses, jam, olives, grapes, and grissini bread \$39.00"}],
 "Insalate": [{"Cesare": "romaine lettuce, parmesan, savory bread crumbs. add chicken 8 | add shrimp 9 \$21.00"},
              {"House Salad (price per person, minimum 2)": "mixed greens, cucumber, pepperoncino peppers, peppadew peppers, diced tomatoes, olives, balsamic vinaigrette \$9.00"}],
 "Paste": [{"Tortellini": "stuffed pasta, sautéed pancetta, sweet peas, parmesan cheese cream sauce \$29.00"},
            {"Spaghetti e Polpettine": "tomato and homemade meatballs \$29.00"},
            {"Mezze Maniche Carbonara": "short tube-shaped pasta, creamy egg sauce, guanciale, pecorino cheese \$31.00"},
            {"Manicotti": "tube pasta filled with ricotta cheese, pomodoro tomato sauce, béchamel cream sauce, toasted breadcrumbs, thyme, parmesan cheese, fresh basil \$27.00"},
            {"Fettucine via Napoli": "fettucine pasta tossed in a parmesan cream sauce. add chicken 8 | add shrimp 9 \$28.00"}],
 "Secondi Piatti": [{"Branzino*": "mediterranean sea bass, lemon oil, sautéed green beans, cherry tomatoes \$39.00"},
                    {"Chicken Parmesan": "traditionally prepared with house-made tomato sauce and fresh mozzarella cheese, served with spaghetti, tomato sauce \$34.00"},
                    {"Filetto di Manzo*": "two medallions of beef filet grilled to your liking, served with fingerling potatoes, baby carrots green beans, topped with rosemary butter \$49.00"}],
 "Contorni": [{"Green Beans": "\$9.00"},
               {"Fingerling Potatoes": "\$9.00"}],
 "Pizze Speciali": [{"Carciofi Pizza - Individual": "white pizza - artichoke, fontina, mozzarella, truffle oil \$25.00"},
                     {"Carciofi Pizza - Large": "white pizza - artichoke, fontina, mozzarella, truffle oil \$42.00"},
                     {"Carciofi Pizza - Mezzo Metro": "white pizza - artichoke, fontina, mozzarella, truffle oil \$58.00"},
                     {"Prosciutto e Melone Pizza - Individual": "white pizza - fontina, mozzarella, prosciutto, cantaloupe, arugula \$26.00"},
                     {"Prosciutto e Melone Pizza - Large": "white pizza - fontina, mozzarella, prosciutto, cantaloupe, arugula \$42.00"},
                     {"Prosciutto e Melone Pizza - Mezzo Metro": "white pizza - fontina, mozzarella, prosciutto, cantaloupe, arugula \$58.00"},
                     {"Capricciosa Pizza - Individual": "tomato sauce, mozzarella parmacotto ham, olives, artichokes, mushrooms, oregano \$24.00"},
                     {"Capricciosa Pizza - Large": "tomato sauce, mozzarella parmacotto ham, olives, artichokes, mushrooms, oregano \$42.00"},
                     {"Capricciosa Pizza - Mezzo Metro": "tomato sauce, mozzarella parmacotto ham, olives, artichokes, mushrooms, oregano \$58.00"},
                     {"Quattro Formaggi Pizza - Individual": "white pizza - mozzarella, parmesan, fontina, provolone \$25.00"},
                     {"Quattro Formaggi Pizza - Large": "white pizza - mozzarella, parmesan, fontina, provolone \$42.00"},
                     {"Quattro Formaggi Pizza - Mezzo Metro": "white pizza - mozzarella, parmesan, fontina, provolone \$57.00"},
                     {"Margherita Pizza - Individual": "tomato sauce, mozzarella, basil \$21.00"},
                     {"Margherita Pizza - Large": "tomato sauce, mozzarella, basil \$36.00"},
                     {"Margherita Pizza - Mezzo Metro": "tomato sauce, mozzarella, basil \$48.00"},
                     {"Meat Lover Pizza - Individual": "tomato sauce, mozzarella, italian spicy sausage, pancetta, parmacotto ham, pepperoni \$26.00"},
                     {"Meat Lover Pizza - Large": "tomato sauce, mozzarella, italian spicy sausage, pancetta, parmacotto ham, pepperoni \$45.00"},
                     {"Meat Lover Pizza - Mezzo Metro": "tomato sauce, mozzarella, italian spicy sausage, pancetta, parmacotto ham, pepperoni \$60.00"}],
 "Pizze - Build Your Own": {"Build Your Own Pizza (21 | 36 | 48)": "tomato sauce, mozzarella",
                           "Classic Toppings (4.5 | 6 | 7 each)": "arugula, artichokes, onions, fresh cherry tomatoes, mushrooms, olives, red peppers",
                           "Specialty Toppings (5 | 7 | 8.5 each)": "anchovies, fontina cheese, italian spicy sausage, pancetta, parmacotto ham, pepperoni",
                           "Prosciutto (7 | 9 | 11 each)": null},
 "Dolci (Desserts)": [{"Tiramisù": "mascarpone cream, espresso coffee, lady fingers, and chocolate \$14.00"},
                      {"Cannolo Siciliano": "crisp pastry filled with sweet ricotta, chocolate, and candied orange \$12.00"},
                      {"Cannolo di Cioccolato e Nocciola": "chocolate-covered cannolo filled with hazelnut ricotta cream, garnished with hazelnuts \$12.00"},
                      {"Cheesecake alle Fragole": "ricotta cheesecake, fresh strawberries compote, whipped cream \$12.00"},
                      {"Torta al Cioccolato": "chocolate tart, dark chocolate ganache, white chocolate cream, chocolate sauce \$13.00"}],
 "Gelati e Sorbetti": [{"chocolate and vanilla, or strawberry": "\$12.00"},
                       {"Limoncello Float": "Sicilian limoncello over homemade limoncello gelato and fresh raspberry (21+ \$19.00"}],
 "Kids' Appetizers": {"Bocconcini": "breaded fried mozzarella bites \$7.50 Kids' menu items for children ages 9 and younger. Look for the Disney Check icon on printed menus to find options that meet Disney's nutrition guidelines."},
 "Kids' Entrées": [{"Pizza Margarita": "fresh mozzarella and tomato sauce \$11.00 Kids' menu items for children ages 9 and younger. Look for the Disney Check icon on printed menus to find options that meet Disney's nutrition guidelines."},
                   {"Spaghetti": "tomato sauce and meatball \$11.00 Kids' menu items for children ages 9 and younger. Look for the Disney Check icon on printed menus to find options that meet Disney's nutrition guidelines."},
                   {"Chicken Tender": "fried breaded chicken, marinara sauce \$11.50 Kids' menu items for children ages 9 and younger. Look for the Disney Check icon on printed menus to find options that meet Disney's nutrition guidelines."}],
 "Kids' Desserts": [{"Bombolone": "Italian doughnuts filled with cream \$8.00 Kids' menu items for children ages 9 and younger. Look for the Disney Check icon on printed menus to find options that meet Disney's nutrition guidelines."},
                   {"Gelati e Sorbetti": "chocolate and vanilla, strawberry \$6.00 Kids' menu items for children ages 9 and younger. Look for the Disney Check icon on printed menus to find options that meet Disney's nutrition guidelines."}],
 "Non-Alcoholic Beverages": [{"Italian Soda": "aranciata or limonata \$7.00"},
                              {"Italian Water": "1 liter, still, or sparkling \$9.00"},
                              {"Fresh Unsweetened Brewed Iced Tea": "\$4.25"},
                              {"Coke, Diet Coke, Sprite, or Lemonade": "\$4.75"},
                              {"Strawberry Acqua Fresca": "\$8.00"},
                              {"Chocolate Milk": "\$3.50"}],
 "Caffè": [{"Espresso": "\$5.00"},
            {"Double Espresso": "\$7.00"},
            {"Cappuccino": "\$6.00"}],
 "Cocktails": [{"Limoncello Flight": "Limoncello Classic | Limoncello Cream | Limoncello Pistachio \$24.00"},
               {"Limoncello Mule": "Grey Goose L’Orange vodka, limoncello, peach purée, orange juice, pineapple juice, lime juice, ginger beer \$19.00"},
               {"Mirto Mule": "vodka, mirto, orange juice, pineapple juice, peach purée, lime juice, ginger beer \$18.00"},
               {"Americano": "Gaspare Campari’s famous cocktail with sweet vermouth and club soda \$17.00"},
               {"Sicilian Sunset": "vodka, orangecello, orange juice, pineapple juice, over shaved ice \$17.00"},
               {"Via Vesuvio": "blood orange vodka, prosecco, raspberries \$18.00"},
               {"Negroni": "Monkey 47 gin, Campari, sweet vermouth \$19.00"},
               {"Amaretto Sour": "Maker’s Mark bourbon, amaretto liqueur, lemon-lime soda, lemon juice \$19.00"},
               {"Royale Cuba Libre": "Cruzan Aged rum, prosecco, spray of Coke aroma \$18.00"},
               {"Tequila Sunrise": "Maestro Dobel tequila, orange juice, grenadine \$18.00"},
               {"Via Napoli's Earth Cocktail": "Tito’s vodka, Midori, orange juice, and pineapple juice \$17.00"},
               {"Italian Siesta": "Silver Tequila, Campari, grapefruit juice, lime juice \$18.00"}],
 "Sangria": [{"Sangria Flight": "Prosecco | Gavi White Wine | Langhe Red Wine \$26.00"},
              {"Italian Beer Sangria": "Peroni beer, St. Germain, pear purée, orange juice, lemon juice \$15.00"},
              {"Prosecco Terre di Bacco (Also available by the pitcher)": "\$16.00"},
              {"Gavi Batasiolo (Also available by the pitcher)": "\$16.00"},
              {"Langhe Terre di Bacco (Also available by the pitcher)": "\$16.00"}],
 "Vini": "Full Wine List Available Ask your server for a list of available wines by the glass and by the bottle",
 "Birre (Beer Selections)": [{"Beer Flight (4.5 oz pours)": "Peroni | Cipriani Carciofo | Cipriani Radicchio \$26.00"},
                             {"Peroni (Also available by the pitcher)": "\$14.00"},
                             {"Bud Light (Also available by the pitcher)": "\$11.00"},
                             {"Blue Moon": "\$16.00"},
                             {"Seasonal Draft (Ask your server for details)": "\$16.00"},
                             {"Menabrea Bionda": "\$14.00"},
                             {"Menabrea Ambrata": "\$14.00"},
                             {"Cipriani Chiara": "\$16.00"},
                             {"Cipriani Radicchio": "\$16.00"}],
 "Aperitif Cocktails": [{"Strawberry Dream Rossini": "strawberry purée, prosecco, strawberry popsicle \$18.00"},
                        {"Bellini": "peach purée, prosecco \$16.00"},
                        {"Lemon Drop": "vodka and limoncello over shaved ice \$16.00"},
                        {"Strawberry Limoncello": "served frozen with strawberry garnish \$15.00"},
                        {"Aperol Spritz": "Aperol, prosecco, splash of soda \$15.00"},
                        {"Pomegranate Cosmopolitan": "pomegranate juice, vodka \$17.00"},
                        {"Tiramisù Martini": "vanilla vodka, Baileys, Kahlúa, espresso, cream, cocoa \$17.00"},
                        {"Espresso Martini": "made with Lavazza espresso \$18.00"},
                        {"Cannoli Martini": "biscotti liqueur, cream, chocolate, crushed cannoli shell \$17.00"}]}

{
  "restaurant": {
    "name": "Biergarten Restaurant",
    "location": "EPCOT, World Showcase",
    "type": "Casual Dining",
    "meal_period": "Dinner"
  },
  "pricing": {
    "adult": "\$49 per adult, plus tax and gratuity",
    "child": "\$27 per child (3-9), plus tax and gratuity"
  },
  "buffet_offerings": {
    "note": "Partial Listing",
    "items": [
      "Seasonal Salads",
      "Traditional Sausages",
      "Rotisserie Chicken",
      "Sauerkraut (Plant-based)",
      "Potatoes",
      "Spätzle",
      "Schnitzel",
      "Nudel Gratin",
      "Assorted Desserts"
    ]
  },
  "allergy_friendly_offerings": "Allergen Guide available upon arrival to the location",
  "beverages": {
    "non_alcoholic": [
      "Assorted Fountain Beverages (Coca-Cola®, Diet Coke®, Sprite®, Fanta® Orange, Minute Maid® Zero Sugar Lemonade)",
      "German Spezi (Coca-Cola® and Fanta® Orange)",
      "Freshly Brewed Iced Tea",
      "Freshly Brewed Joffrey's Coffee™"
    ]
  },
  "beer_selection": [
    {
      "name": "German Beer Flight",
      "description": "Four Pours - 5 oz each (Beck's Pilsner, Warsteiner Dunkel, König Ludwig Weissbier, and Schöfferhofer Grapefruit Hefeweizen)",
      "price": "\$16.75"
    },
    {
      "name": "Schöfferhofer Grapefruit Hefeweizen",
      "size": "1/2 Liter or Liter",
      "price_range": "\$11.00-\$17.00",
      "description": "A unique combination of sparkling smooth hefeweizen with grapefruit juice. Refreshing well-rounded taste with tangy character and hints of sweetness that is pleasing to the palate. The world's first unfiltered grapefruit hefeweizen-mix"
    },
    {
      "name": "König Ludwig Weissbier",
      "size": "1/2 Liter or Liter",
      "price_range": "\$11.00-\$17.00",
      "description": "Bavarian hefeweizen wheat beer with a full-bodied lively taste perfectly balanced with complex fruit aromas"
    },
    {
      "name": "Beck's Pilsner",
      "size": "1/2 Liter or Liter",
      "price_range": "\$11.00-\$17.00",
      "description": "Classic German lager beer with a distinctive full-bodied taste, fresh hoppy bouquet, golden color and full, rich head. Adding to its complexity is a slightly fruity but firm crispness and a dry, clean finish"
    },
    {
      "name": "Warsteiner Dunkel",
      "size": "1/2 Liter or Liter",
      "price_range": "\$11.00-\$17.00",
      "description": "Classic German-style dark pilsner that has a deep chestnut brown hue with a smooth, toasty malt flavor and mocha aromas"
    }
  ],
  "wine_selection": {
    "white_wines": [
      {
        "name": "German White Wine Flight",
        "description": "Three Pours 2-oz each (Villa Wolf Pinot Gris, J.H. Selbach Blue Label Riesling, and Valckenberg Madonna Riesling Spätlese)",
        "price": "\$18.00"
      },
      {
        "name": "Villa Wolf Pinot Gris, Pfalz",
        "description": "full-bodied and dry with refreshing, unoaked fruit and a crisp texture.",
        "bottle_price": "\$49.00",
        "glass_price": "\$12.00"
      },
      {
        "name": "J.H. Selbach Blue Label Riesling, Mosel",
        "description": "crisp aromas of lemon, white peach, and melon with a hint of mineral on the palate.",
        "bottle_price": "\$81.00",
        "glass_price": "\$19.00"
      },
      {
        "name": "Dr. Loosen, Dr. L Riesling, Mosel",
        "description": "lightly sweet, green apple and citrus flavors elegantly laced with racy acidity and minerality from steep slate slopes.",
        "bottle_price": "\$56.00",
        "glass_price": "\$13.00"
      },
      {
        "name": "Valckenberg Madonna Riesling Spätlese, Rheinhessen",
        "description": "silky sweet aromas with flavors of apple, peach, and spiced pear.",
        "bottle_price": "\$49.00",
        "glass_price": "\$12.00"
      }
    ],
    "red_wines": [
      {
        "name": "August Kesseler Pinot Noir Spätburgunder, Rheingau",
        "description": "delicate, fine, light in style, and well structured with nice cherry flavors, a hint of black currant, and plenty of spice.",
        "bottle_price": "\$59.00",
        "glass_price": "\$15.00"
      },
      {
        "name": "Heinz Eifel Shine Dornfelder, Rheinhessen",
        "description": "full-bodied with flavors of dark red fruits with a well-balanced sweetness.",
        "bottle_price": "\$49.00",
        "glass_price": "\$12.00"
      }
    ]
  },
  "schnapps_and_shots": [
    {
      "name": "Jägermeister",
      "price": "\$14.00"
    },
    {
      "name": "Bärenjäger Honey & Bourbon",
      "price": "\$14.00"
    }
  ]
}

{
  "restaurant": {
    "name": "Sunshine Seasons",
    "location": "EPCOT, World Nature",
    "type": "Quick Service Restaurant",
    "meal_period": "Breakfast"
  },
  "menu": {
    "entrees": {
      "Breakfast Sandwich": {
        "description": "Smoked Bacon, Eggs, and Cheddar on a Croissant",
        "price": "\$10.99"
      }
    },
    "bakery": {
      "Cinnamon Roll": {
        "price": "\$4.79"
      },
      "Croissant": {
        "price": "\$3.99"
      },
      "Chocolate Croissant": {
        "price": "\$4.49"
      },
      "Muffin": {
        "price": "\$4.29"
      }
    },
    "snacks": {
      "Yogurt Dipper Kid's Pack": {
        "price": "\$6.49"
      },
      "Açai Parfait": {
        "price": "\$4.69"
      },
      "Apple Pack": {
        "price": "\$4.69"
      },
      "Mango Parfait": {
        "description": "Greek Yogurt, Granola, and Shaved Coconut",
        "price": "\$4.49"
      },
      "Assorted Fruit Cups (Plant-based)": {
        "price": "\$4.19"
      },
      "Cuties® Mandarin 3-pack (Plant-based)": {
        "price": "\$4.19"
      },
      "Assorted Cereal": {
        "price": "\$2.99"
      },
      "Apple Slices (Plant-based)": {
        "price": "\$2.59"
      }
    },
    "specialty_beverages": {
      "Seasonal Milkshake": {
        "price": "\$8.99"
      },
      "Tropical Boba Juice": {
        "description": "Minute Maid® Strawberry, Minute Maid® Mango, and Minute Maid® Zero Sugar Lemonade with Boba Pearls",
        "price": "\$5.49"
      }
    },
    "beverages": {
      "Monster™ Energy": {
        "price": "\$5.49"
      },
      "Monster™ Energy Zero Ultra": {
        "price": "\$5.49"
      },
      "Joffrey's Shakin' Jamaican™ Ready-to-Drink Cold Brew with Oat Milk & Sweetened": {
        "price": "\$5.29"
      },
      "Simply® Orange": {
        "price": "\$5.29"
      },
      "Freshly Brewed Joffrey's Coffee™": {
        "price": "\$3.79"
      },
      "Hot Cocoa": {
        "price": "\$3.79"
      },
      "Twinings® Hot Tea": {
        "price": "\$3.79"
      },
      "DASANI® Bottled Water 20-oz Bottled Beverage": {
        "price": "\$3.75"
      },
      "Chocolate Soy Milk": {
        "price": "\$3.29"
      },
      "Vanilla Soy Milk": {
        "price": "\$3.29"
      },
      "Milk": {
        "price": "\$2.29"
      },
      "Minute Maid® Apple Juice": {
        "price": "\$2.29"
      },
      "Small Chocolate Milk": {
        "price": "\$2.29"
      }
    }
  }
}

{
  "restaurant": {
    "name": "Sunshine Seasons",
    "location": "EPCOT, World Nature",
    "type": "Quick Service Restaurant"
  },
  "mealPeriod": "Lunch",
  "menu": {
    "entrées": {
      "Oak-grilled Rotisserie Chicken": "Served with Black Beans and Yellow Rice \$12.99",
      "Oak-grilled Salmon": "Served with Mashed Potatoes and Ratatouille \$13.79",
      "Stir-fried Chicken": "Stir-fried Chicken with Teriyaki Chicken, Peppers, Onions, Pineapple, and a Tangy Sweet-and-Sour Sauce \$12.29",
      "Mongolian Beef": "with Vegetable Fried Rice \$13.49",
      "Stir-fried Shrimp": "with Honey Ginger Sauce, Seasonal Vegetables and Cashews \$13.29",
      "Roast Beef Sandwich": "Chilled Roast Beef, Chimichurri Aïoli, Cheddar, Arugula, and Red Onion on a Flour-topped Kaiser Roll served with Potato Chips \$11.29",
      "Birria Tacos": "with Beef, Monterrey Jack, Onions, Cilantro, and Lime served with Consommé \$9.99",
      "Cheese Pizza Roll": "Served with Pasta Salad \$11.29",
      "Pepperoni Pizza Roll": "Served with Pasta Salad \$11.79",
      "Mediterranean Vegetable Sandwich": "Roasted Red Pepper, Red Onion, Tomato, Arugula, Hummus, and Balsamic Vinaigrette on Herbed Focaccia served with Potato Chips (Plant-based) \$9.99"
    },
    "grabNGoEntrées": {
      "Power Greens Salad with Chicken": "Mixed Greens, Quinoa, Blueberries, Blackberries, Almonds, Feta, and Balsamic Vinegar \$13.29",
      "Power Greens Salad": "Mixed Greens, Quinoa, Blueberries, Blackberries, Almonds, Feta, and Balsamic Vinegar \$11.29",
      "Caesar Salad with Shrimp": "Romaine Lettuce, Croutons, Parmesan, and Caesar Dressing \$13.99",
      "Caesar Salad with Chicken": "Romaine Lettuce, Croutons, Parmesan, and Caesar Dressing \$11.99",
      "Caesar Salad": "Romaine Lettuce, Croutons, Parmesan, and Caesar Dressing \$9.79",
      "Mediterranean Veggie Wrap": "\$10.49",
      "Roasted Turkey BLT Wrap": "\$9.99"
    },
    "kidsDisneyCheckMeals": {
      "note": "Kids' menu items for children ages 9 and younger. Look for the Disney Check icon on printed menus to find options that meet Disney's nutrition guidelines.",
      "meals": {
        "Salmon": "Served with Jasmine Rice, Applesauce, and choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutritional Guidelines for Complete Meals without substitutions \$8.49",
        "Chicken Drumstick": "Served with Rice, Applesauce, and choice of Small Lowfat Milk or Small DASANI® Bottled Water. Meets Disney Nutritional Guidelines for Complete Meals without substitutions \$7.79"
      }
    },
    "grabNGoKidsDisneyCheckMeals": {
      "Turkey Sandwich Kid's Pack": "\$7.79",
      "PB&J Uncrustable": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water \$6.79",
      "Yogurt Dipper Kid's Pack": "\$6.49"
    },
    "kidsMeals": {
      "Cheese Pizza Roll": "Served with Pasta Salad, Applesauce, and choice of Small Lowfat Milk or Small DASANI® Bottled Water \$7.59",
      "Pepperoni Pizza Roll": "Served with Pasta Salad, Applesauce, and choice of Small Lowfat Milk or Small DASANI® Bottled Water \$7.79",
      "Macaroni & Cheese": "Served with Green Beans, Applesauce and choice of Small Lowfat Milk or Small DASANI® Bottled Water \$6.99"
    },
    "snacks": {
      "Cinnamon Roll": "\$4.79",
      "Roasted Red Pepper Hummus": "\$4.79",
      "Açai Parfait": "\$4.69",
      "Apple Pack": "\$4.69",
      "Chocolate Croissant": "\$4.49",
      "Mango Parfait": "Greek Yogurt, Granola, and Shaved Coconut \$4.49",
      "Muffin": "\$4.29",
      "Assorted Fruit Cups (Plant-based)": "\$4.19",
      "Cuties® Mandarin 3-pack (Plant-based)": "\$4.19",
      "Croissant": "\$3.99",
      "Mini Babybel® Snack Cheese 3-pack": "\$3.29",
      "Assorted Chips": "\$3.29",
      "Assorted Cereal": "\$2.99",
      "Assorted Granola Bars": "\$3.29",
      "Apple Slices (Plant-based)": "\$2.59",
      "Assorted Candy": "\$2.49",
      "Carrots (Plant-based)": "\$2.19",
      "Pickle-in-a-Pouch": "\$2.29",
      "Applesauce (Plant-based)": "\$0.99"
    },
    "desserts": {
      "Peanut Butter Whoopie Pie": "\$4.29",
      "Turtle Brownie": "\$5.29",
      "Chocolate Chunk Cookie": "\$3.99",
      "Assorted Artisanal Cookies": "\$4.49"
    },
    "specialtyBeverages": {
      "Seasonal Milkshake": "\$8.99",
      "Tropical Boba Juice": "Minute Maid® Strawberry, Minute Maid® Mango, and Minute Maid® Zero Sugar Lemonade with Boba Pearls \$5.49"
    },
    "beverages": {
      "Assorted Fountain Beverages": null,
      "Assorted Coca-Cola® Offerings": "\$4.49",
      "Monster™ Energy": "\$5.49",
      "Monster™ Energy Zero Ultra": "\$5.49",
      "Joffrey's Shakin' Jamaican™ Ready-to-Drink Cold Brew with Oat Milk & Sweetened": "\$5.29",
      "Simply® Orange": "\$5.29",
      "Hot Cocoa": "\$3.79",
      "Twinings® Hot Tea": "\$3.79",
      "DASANI® Bottled Water 20-oz Bottled Beverage": "\$3.75",
      "Chocolate Soy Milk": "\$3.29",
      "Vanilla Soy Milk": "\$3.29",
      "Milk": "\$2.29",
      "Minute Maid® Apple Juice": "\$2.29",
      "Small Chocolate Milk": "\$2.29",
      "Small DASANI® Water 12-oz Bottled Beverage": "\$2.50"
    },
    "beveragesWithAlcohol": {
      "Bloody Mary": "\$11.50",
      "Schöfferhofer Grapefruit Hefeweizen - Germany": "Easy and refreshing with light notes of Citrus and Spice with low bitterness \$11.50",
      "Orange Blossom Pilsner": "\$11.25",
      "Cigar City Jai Alai IPA - Tampa, FL": "This bigger brother to the Pale Ale employs a significant amount of Hops with high bitterness and Citrus and Floral aromas \$12.00",
      "Corona Extra Lager - Mexico": "16-oz Can - Golden-colored with flavors that are dry, clean, crisp, and refreshing with subtle bitterness \$10.50",
      "Blue Moon Belgian White Ale": "\$9.75",
      "Yuengling Traditional Lager - Pottsville, PA": "16-oz Can - Fuller flavored with a higher malt presence than Pale Lagers \$9.75",
      "Bud Light Lager - St. Louis, MO": "Golden-colored with flavors that are dry, clean, crisp, and refreshing with subtle bitterness \$9.25",
      "White Claw Black Cherry Hard Seltzer": "\$12.00",
      "RAMONA Blood Orange Wine Spritz": "\$11.00",
      "RAMONA Meyer Lemon Wine Spritz": "\$11.00",
      "RAMONA Dry Ruby Grapefruit Wine Spritz": "\$11.00",
      "Heineken 0.0 Non-Alcoholic Lager": "\$9.25"
    }
  }
}
{
  "menu": {
    "allergyFriendlyOptions": {
      "entrées": {
        "note": "Guests must speak to a Cast Member about their allergy-friendly request",
        "items": {
          "Oak-grilled Salmon": "Served with Mashed Potatoes and Ratatouille (For Gluten/Wheat, Egg, Peanut/Tree Nut, Sesame, Shellfish, and Soy Allergies) \$13.79",
          "Rotisserie Chicken": "Served with Yellow Rice and Black Beans (For Gluten/Wheat, Egg, Milk, Peanut/Tree Nut, Sesame, Shellfish, and Soy Allergies) \$12.99",
          "Mongolian Beef": "Served with White Rice (For Fish/Shellfish, Milk, and Peanut Allergies) \$13.49",
          "Birria Tacos": "with Beef, Monterrey Jack, Onions, Cilantro, and Lime served with Consommé (For Gluten/Wheat, Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame, and Soy Allergies) \$9.99",
          "Stir-fried Chicken": "Teriyaki Chicken, Peppers, Onions, Pineapple, White Rice, and a Tangy Sweet-and-Sour Sauce (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, and Peanut/Tree Nut Allergies) \$12.29",
          "Stir-fried Shrimp": "Served with White Rice (For Egg, Fish, Milk, and Peanut Allergies) \$13.29",
          "Vegetable Korma": "with Plant-based Chicken, White Rice, and Cashews (For Egg, Fish/Shellfish, and Milk Allergies) \$10.29",
          "Roast Beef Sandwich": "Chilled Roast Beef, Chimichurri Aïoli, Cheddar, Arugula, and Red Onion on a Kaiser Roll served with Potato Chips (For Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies) \$11.29",
          "Cheese Pizza Roll": "Served with Chips or Pasta Salad (For Egg, Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies) \$11.29",
          "Pepperoni Pizza Roll": "Served with Chips or Pasta Salad (For Egg, Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies) \$11.79",
          "Power Salad with Chicken": "(For Gluten/Wheat, Egg, Fish/Shellfish, Sesame, and Soy Allergies) \$13.79",
          "Power Salad": "(For Gluten/Wheat, Egg, Fish/Shellfish, Sesame, and Soy Allergies) \$11.99",
          "Mediterranean Vegetable Sandwich": "Roasted Red Pepper, Red Onion, Tomato, Arugula, Hummus, and Balsamic Vinaigrette on Herbed Focaccia served with Potato Chips (For Egg, Fish/Shellfish, Milk, and Peanut/Tree Nut Allergies) \$9.99"
        }
      },
      "kidsEntrées": {
        "note": "Guests must speak to a Cast Member about their allergy-friendly request",
        "items": {
          "Kids' Salmon": "Served with Green Beans, Applesauce and choice of Small Lowfat Milk or Small DASANI® Water (For Gluten/Wheat, Egg, Milk, Peanut/Tree Nut, Sesame, Shellfish, and Soy Allergies) \$8.49",
          "PB&J Uncrustable": "Served with Carrot Sticks, Applesauce and choice of Small Lowfat Milk or Small DASANI® Bottled Water (For Egg, Fish/Shellfish, Milk, Sesame, and Soy Allergies) \$6.79",
          "Kids' Chicken Drumstick": "Served with White Rice, Applesauce, and choice of Small Lowfat Milk or Small DASANI® Water (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies) \$7.79",
          "Kids' Macaroni & Cheese": "Served with Green Beans, Applesauce, and choice of Small Lowfat Milk or Small DASANI® Water (For Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies) \$6.99"
        }
      },
      "snacks": {
        "note": "Guests must speak to a Cast Member about their allergy-friendly request",
        "items": {
          "Brownie": "(For Gluten/Wheat, Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies) \$4.99",
          "Mango Parfait": "Greek Yogurt, Granola, and Shaved Coconut (For Gluten/Wheat, Egg, Fish/Shellfish, Peanut, Sesame, and Soy Allergies) \$4.49",
          "Roasted Red Pepper Hummus": "with Cucumbers, Olives, and Multigrain Crackers (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, and Peanut/Tree Nut Allergies) \$4.79",
          "Açai Parfait": "(For Gluten/Wheat, Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame, and Soy Allergies) \$4.69",
          "Chocolate Candy Bar": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies) \$4.50",
          "Apple Pack": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies) \$4.69",
          "Assorted Fruit Cups": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies) \$4.19",
          "Allergy-Friendly Cookies": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies) \$3.49",
          "Apple Slices": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies) \$2.59",
          "Pickle-in-a-Pouch": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies) \$2.29",
          "Applesauce": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies) \$0.99"
        }
      },
      "desserts": {
        "note": "Guests must speak to a Cast Member about their allergy-friendly request",
        "items": {
          "Plant-based Cookies 'n "Cream" Chocolate Mousse Cup": "(For Egg, Fish/Shellfish, Milk, and Sesame Allergies) \$5.29"
        }
      }
    }
  }
}

{
  "restaurant": {
    "name": "Sunshine Seasons",
    "location": "EPCOT, World Nature",
    "type": "Quick Service Restaurant",
    "meal_period": "Snack"
  },
  "menu": {
    "grab_n_go_entrees": {
      "Power Greens Salad with Chicken": {
        "description": "Mixed Greens, Quinoa, Blueberries, Blackberries, Almonds, Feta, and Balsamic Vinegar",
        "price": "\$13.29"
      },
      "Power Greens Salad": {
        "description": "Mixed Greens, Quinoa, Blueberries, Blackberries, Almonds, Feta, and Balsamic Vinegar",
        "price": "\$11.29"
      },
      "Caesar Salad with Shrimp": {
        "description": "Romaine Lettuce, Croutons, Parmesan, and Caesar Dressing",
        "price": "\$13.99"
      },
      "Caesar Salad with Chicken": {
        "description": "Romaine Lettuce, Croutons, Parmesan, and Caesar Dressing",
        "price": "\$11.99"
      },
      "Caesar Salad": {
        "description": "Romaine Lettuce, Croutons, Parmesan, and Caesar Dressing",
        "price": "\$9.79"
      },
      "Mediterranean Veggie Wrap": {
        "price": "\$10.49"
      },
      "Roasted Turkey BLT Wrap": {
        "price": "\$9.99"
      }
    },
    "kids_disney_check_meals": {
      "note": "Kids' menu items for children ages 9 and younger. Look for the Disney Check icon on printed menus to find options that meet Disney's nutrition guidelines.",
      "Turkey Sandwich Kid's Pack": {
        "price": "\$7.79"
      },
      "PB&J Uncrustable": {
        "description": "Served with choice of two Sides and choice of Small Lowfat Milk or Small DASANI® Bottled Water",
        "price": "\$6.79"
      },
      "Yogurt Dipper Kid's Pack": {
        "price": "\$6.49"
      }
    },
    "desserts": {
      "Cookies 'n "Cream" Chocolate Mousse Cup (Plant-based)": {
        "price": "\$5.29"
      },
      "Assorted Artisanal Cookies": {
        "price": "\$4.49"
      },
      "Peanut Butter Whoopie Pie": {
        "price": "\$4.29"
      },
      "Turtle Brownie": {
        "price": "\$5.29"
      },
      "Chocolate Chunk Cookie": {
        "price": "\$3.99"
      }
    },
    "snacks": {
      "Cinnamon Roll": {
        "price": "\$4.79"
      },
      "Roasted Red Pepper Hummus": {
        "price": "\$4.79"
      },
      "Açai Parfait": {
        "price": "\$4.69"
      },
      "Apple Pack": {
        "price": "\$4.69"
      },
      "Chocolate Croissant": {
        "price": "\$4.49"
      },
      "Mango Parfait": {
        "description": "Greek Yogurt, Granola, and Shaved Coconut",
        "price": "\$4.49"
      },
      "Muffin": {
        "price": "\$4.29"
      },
      "Assorted Fruit Cups (Plant-based)": {
        "price": "\$4.19"
      },
      "Cuties® Mandarin 3-pack (Plant-based)": {
        "price": "\$4.19"
      },
      "Croissant": {
        "price": "\$3.99"
      },
      "Mini Babybel® Snack Cheese 3-pack": {
        "price": "\$3.29"
      },
      "Assorted Chips": {
        "price": "\$3.29"
      },
      "Assorted Cereal": {
        "price": "\$2.99"
      },
      "Assorted Granola Bars": {
        "price": "\$3.29"
      },
      "Apple Slices (Plant-based)": {
        "price": "\$2.59"
      },
      "Assorted Candy": {
        "price": "\$2.49"
      },
      "Carrots (Plant-based)": {
        "price": "\$2.19"
      },
      "Pickle-in-a-Pouch": {
        "price": "\$2.29"
      },
      "Applesauce (Plant-based)": {
        "price": "\$0.99"
      }
    },
    "specialty_beverages": {
      "Seasonal Milkshake": {
        "price": "\$8.99"
      },
      "Tropical Boba Juice": {
        "description": "Minute Maid® Strawberry, Minute Maid® Mango, and Minute Maid® Zero Sugar Lemonade with Boba Pearls",
        "price": "\$5.49"
      }
    },
    "beverages": {
      "Assorted Fountain Beverages": {
        "price": null
      },
      "Assorted Coca-Cola® Offerings": {
        "price": "\$4.49"
      },
      "Monster™ Energy": {
        "price": "\$5.49"
      },
      "Monster™ Energy Zero Ultra": {
        "price": "\$5.49"
      },
      "Joffrey's Shakin' Jamaican™ Ready-to-Drink Cold Brew with Oat Milk & Sweetened": {
        "price": "\$5.29"
      },
      "Simply® Orange": {
        "price": "\$5.29"
      },
      "Hot Cocoa": {
        "price": "\$3.79"
      },
      "Twinings® Hot Tea": {
        "price": "\$3.79"
      },
      "DASANI® Bottled Water 20-oz Bottled Beverage": {
        "price": "\$3.75"
      },
      "Chocolate Soy Milk": {
        "price": "\$3.29"
      },
      "Vanilla Soy Milk": {
        "price": "\$3.29"
      },
      "Milk": {
        "price": "\$2.29"
      },
      "Minute Maid® Apple Juice": {
        "price": "\$2.29"
      },
      "Small Chocolate Milk": {
        "price": "\$2.29"
      },
      "Small DASANI® Water 12-oz Bottled Beverage": {
        "price": "\$2.50"
      }
    },
    "alcoholic_beverages": {
      "Bloody Mary": {
        "price": "\$11.50"
      },
      "Schöfferhofer Grapefruit Hefeweizen - Germany": {
        "description": "Easy and refreshing with light notes of Citrus and Spice with low bitterness",
        "price": "\$11.50"
      },
      "Orange Blossom Pilsner": {
        "price": "\$11.25"
      },
      "Cigar City Jai Alai IPA - Tampa, FL": {
        "description": "This bigger brother to the Pale Ale employs a significant amount of Hops with high bitterness and Citrus and Floral aromas",
        "price": "\$12.00"
      },
      "Corona Extra Lager - Mexico": {
        "description": "16-oz Can - Golden-colored with flavors that are dry, clean, crisp, and refreshing with subtle bitterness",
        "price": "\$10.50"
      },
      "Blue Moon Belgian White Ale": {
        "price": "\$9.75"
      },
      "Yuengling Traditional Lager - Pottsville, PA": {
        "description": "16-oz Can - Fuller flavored with a higher malt presence than Pale Lagers",
        "price": "\$9.75"
      },
      "Bud Light Lager - St. Louis, MO": {
        "description": "Golden-colored with flavors that are dry, clean, crisp, and refreshing with subtle bitterness",
        "price": "\$9.25"
      },
      "White Claw Black Cherry Hard Seltzer": {
        "price": "\$12.00"
      },
      "RAMONA Blood Orange Wine Spritz": {
        "price": "\$11.00"
      },
      "RAMONA Meyer Lemon Wine Spritz": {
        "price": "\$11.00"
      },
      "RAMONA Dry Ruby Grapefruit Wine Spritz": {
        "price": "\$11.00"
      },
      "Heineken 0.0 Non-Alcoholic Lager": {
        "price": "\$9.25"
      }
    },
    "allergy_friendly_snacks": {
      "note": "Guests must speak to a Cast Member about their allergy-friendly request",
      "Brownie": {
        "description": "(For Gluten/Wheat, Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies)",
        "price": "\$4.99"
      },
      "Mango Parfait": {
        "description": "Greek Yogurt, Granola, and Shaved Coconut (For Gluten/Wheat, Egg, Fish/Shellfish, Peanut, Sesame, and Soy Allergies)",
        "price": "\$4.49"
      },
      "Roasted Red Pepper Hummus": {
        "description": "with Cucumbers, Olives, and Multigrain Crackers (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, and Peanut/Tree Nut Allergies)",
        "price": "\$4.79"
      },
      "Açai Parfait": {
        "description": "(For Gluten/Wheat, Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame, and Soy Allergies)",
        "price": "\$4.69"
      },
      "Chocolate Candy Bar": {
        "description": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)",
        "price": "\$4.50"
      },
      "Apple Pack": {
        "description": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)",
        "price": "\$4.69"
      },
      "Assorted Fruit Cups": {
        "description": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)",
        "price": "\$4.19"
      },
      "Allergy-Friendly Cookies": {
        "description": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)",
        "price": "\$3.49"
      },
      "Apple Slices": {
        "description": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)",
        "price": "\$2.59"
      },
      "Pickle-in-a-Pouch": {
        "description": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)",
        "price": "\$2.29"
      },
      "Applesauce": {
        "description": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)",
        "price": "\$0.99"
      }
    },
    "allergy_friendly_desserts": {
      "note": "Guests must speak to a Cast Member about their allergy-friendly request",
      "Plant-based Cookies 'n "Cream" Chocolate Mousse Cup": {
        "description": "(For Egg, Fish/Shellfish, Milk, and Sesame Allergies)",
        "price": "\$5.29"
      }
    }
  }
}
{"restaurant": "Shiki-Sai: Sushi Izakaya": "EPCOT, World Showcase Casual Dining",
"Meal Period": "Dinner",
"Nigiri (2 pieces per order)": {"Tuna": "\$8.00",
"Bluefin Tuna Akami fresh from Japan": "\$16.00",
"Bluefin Chu-Toro fresh from Japan": "\$22.00",
"Bluefin Otoro fresh from Japan": "\$26.00",
"Hamachi (Yellowtail)": "\$9.00",
"Madai (Japanese Sea Bream)": "\$9.00",
"Salmon": "\$7.00",
"Shime-Saba (Mackerel)": "\$6.00",
"Ama-Ebi (Sweet Shrimp)": "\$16.00",
"Hotate (Scallops)": "\$12.00",
"Tako (Octopus)": "\$7.00",
"Tamago (Egg)": "\$7.00",
"Unagi (Freshwater Eel)": "\$8.00",
"Ikura (Salmon Roe)": "\$18.00",
"Masago (Smelt Roe)": "\$7.00",
"Negitoro (Green Onions and Minced Tuna)": "\$14.00",
"Ebi (Tiger prawn)": "\$10.00",
"Uni (Sea Urchin) *1 piece": "\$24.00"},
"Sashimi": {"Tuna": "\$18.00",
"Salmon": "\$18.00",
"Sashimi Moriawase 1-2 pax": "\$50.00",
"Sashimi Moriawase 3-4 pax": "\$100.00"},
"Sushi Combination": {"Sashimi Moriawase 1-2 pax": "\$25.00",
"Take for 1-2 1-2 pax": "\$50.00",
"Matsu for 3-4 3-4 pax": "\$100.00"},
"Chef Specials": {"Fune for 4-6 "Boat presentation showcasing a premium assortment of sushi and sashimi": "\$300.00",
"Hashi for 2-4 Bridge presentation featuring an assortment of sushi and sashimi": "\$100.00",
"Aji Sugata Zukuri Artfully arranged aji (Japanese horse mackerel) sashimi": "\$38.00",
"Anago Ippon Nigiri Grilled saltwater eel over a bed of rice": "\$18.00",
"Kobore Sushi Overflowing sushi." Negi toro, tuna, and salmon roe with green onion": "\$30.00",
"Dragon Roll Barbequed freshwater eel, avocado and shrimp tempura": "\$28.00",
"Tokyo Negi Roll Green onion tempura rolled with tuna tataki and topped with jalapeño aïoli, shredded carrot, and sliced jalapeño": "\$20.00",
"Golden Philadelphia Roll Fresh salmon, cream cheese and salmon roe tempura battered": "\$20.00",
"Temaki Sushi Set "Create your own" handrolled sushi with a variety of proteins and fillings": "\$32.00"},
"Donburi": {"Kaisen Don Chef's choice fish served over rice": "\$38.00",
"Spicy Tuna Don Sliced tuna over a bowl of rice (Gluten-free)": "\$28.00",
"Unagi Don Grilled freshwater eel served over tamagoyaki on a bed of steamed rice, drizzled with a savory sauce": "\$20.00"},
"Roll & Temaki": {"Snow Crab California Roll": "\$18.00",
"Spicy Tuna Roll": "\$16.00",
"Shrimp Tempura Roll": "\$18.00",
"Tekka Maki (Tuna)": "\$12.00",
"Kappa Maki (Cucumber)": "\$7.00",
"Oshinko Roll (Daikon)": "\$8.00",
"Natto Roll": "\$8.00",
"Ume Shiso Roll": "\$8.00",
"Avocado Roll": "\$7.00",
"Salmon Roll": "\$12.00",
"Bluefin Negitoro Roll": "\$18.00",
"Spicy Crunch Roll": "\$18.00",
"Negi Hamachi Roll": "\$18.00"},
"Starters": {"Edamame Steamed soybeans seasoned with your choice of seasoning (Maldon Sea Salt, Spicy Garlic, Wasabi)": "\$8.00",
"Tsukemono Pickled crispy Japanese vegetables": "\$7.00",
"Japanese Potato Salad With crispy bacon, smoked daikon and sweet red bean paste": "\$8.00",
"Gobo chips Strips of crispy fried burdock root seasoned with salt and aonori": "\$8.00",
"Miso soup With wakame, tofu, and scallions": "\$6.00",
"Takoyaki Fried batter filled with octopus, topped with spicy mayo and tonkatsu sauce": "\$10.00",
"Clam Miso Soup Miso soup enhanced with clams": "\$10.00",
"Kara-age Chicken Japanese-style fried chicken flavored with garlic and ginger and served with lemon": "\$12.00"},
"Izakaya Classics": {"Maguro Tataki Seared tuna with zesty citrus ponzu sauce": "\$24.00",
"Sakamushi Clam Steamed clams in a sake-infused broth": "\$18.00",
"Rock Shrimp Tempura Crispy shrimp tossed in creamy yuzu sauce": "\$24.00",
"Ika Geso Fried squid tentacles served with spicy aioli": "\$18.00",
"Fish Tempura": "\$18.00",
"Salmon Miso Yaki Grilled and miso-glazed": "\$22.00",
"Chicken Nanban Deep-fried, tossed in soy sauce and served with tartar sauce": "\$16.00",
"A5 Wagyu (4oz) Premium grade imported from Japan": "\$120.00",
"Grilled Wagyu Gyoza 3 pc Pan fried dumplings filled with smoky A5 Japanese wagyu beef": "\$20.00",
"Eggplant Topped with miso sauce": "\$9.00",
"Agedashi Tofu Deep-fried tofu with shimeji mushrooms in a flavorful broth": "\$14.00",
"Vegetable Tempura": "\$15.00",
"Tomato "Garden" Salad Tomato, avocado, grilled mushroom tossed in truffle oil with creamy goma dressing": "\$12.00",
"Tomato Ocean" Salad Tomato, avocado, crab, shrimp dressed in a tangy tosazu sauce": "\$18.00"},
"From the Grill": {"Kushi Assorted Six of our signature skewers featuring two each of beef, chicken, and shrimp": "\$30.00",
"Individual Kushi - Beef": "\$8.00",
"Individual Kushi - Chicken": "\$7.00",
"Individual Kushi - Shrimp": "\$7.00",
"Individual Kushi - Seasonal Vegetable": "\$6.00",
"Okonomiyaki Japanese savory pancake filled with bacon": "\$28.00",
"Vegetable Okonomiyaki Veggie-filled okonomiyaki": "\$25.00",
"Beef Yaki-Udon Stir-fried udo noodles tossed with beef and vegetables": "\$28.00",
"Beef Omu-Udon Yaki-udon folded into an omelet": "\$28.00"},
"Rice & Noodles": {"Ishiyaki-Sukiyaki Rice Grill strips of beef in hot stone bowl at your tableside along with spinach and rice in a sweet garlic sauce": "\$28.00",
"Vegetable Nabeyaki Udon Hot pot-style udon soup with mushroom, yuba, and spinach": "\$24.00",
"Kamo Udon Udon noodles topped with slices of braised duck": "\$30.00",
"Mentaiko Udon Creamy udon noodles topped with spicy cod roe": "\$28.00"},
"Kids' Menu": {"Temaki Sushi Set "Create your own" hand-rolled sushi using nori sheets and a variety of proteins and fillings": "\$18.00",
"Kids Bento A balanced meal set with a variety of proteins and sides": "\$20.00"},
"Desserts": {"Ichigo Parfait Layers of luscious strawberries, cheesecake, and vanilla ice cream": "\$18.00",
"Mango Mousse Cake Mango mousse finished with a sweet mango glaze": "\$10.00",
"Yuzu Cheesecake Creamy delight with a hint of tangy citrus zest": "\$10.00",
"Soft Serve Ice Cream": "\$6.00"},
"Non-alcoholic Specialties": {"Violet Yuzu Lemonade Yuzu juice, lemonade, blue butterfly pea flower": "\$12.00",
"Gari Gari Soda Soda with Japanese ice popsicle": "\$12.00",
"Okinawa Wave Blue curacao and Calpico flavored mocktail the color of the Okinawan ocean": "\$12.00",
"Calpis Dragon Pink ombre-colored mocktail with dragon fruit and Calpico": "\$12.00",
"Ramune Japanese soda in its distinctive bottle with a marble seal": "\$8.00",
"Low-fat Milk, Coca-Cola products, Green Tea": "\$5.00"},
"Beer": {"Kirin Draft": "\$12.00",
"Sapporo Draft": "\$14.00",
"Local Craft Draft Beer Kindly inquire with your server": "\$14.00",
"Kirin Light": "\$12.00"},
"Sake": {"House Sake Hot or Cold (Ozeki Junmai)": "\$10.00",
"Kibo Floral & Dry (6oz can)": "\$25.00",
"Otokoyama Namacho Woody & Rich (6oz can)": "\$31.00",
"Bushido Smotth & Crisp (6oz can)": "\$24.00",
"Night Swim Refreshing (6oz can)": "\$20.00",
"Perfect Snow Creamy & Mild (6oz can)": "\$19.00",
"Premium Sake Flight 2 oz pours of Dassai 45, Moon on the Water, Karatamba": "\$30.00",
"Can Sake Sampling Flight 2 oz pours of Bushido, Night Swim, Otokoyama": "\$28.00",
"Dassai 45 - Otter Festival Light & Fragrant. Glass": "\$20.00",
"Carafe": "\$48.00",
"Tensei - Infinite Summer Rich & Dry. Glass": "\$18.00",
"Carafe": "\$45.00",
"Moon on the Water Light & Dry. Glass": "\$18.00",
"Carafe": "\$45.00",
"Shoune Light & Dry. Glass": "\$20.00",
"Carafe": "\$48.00",
"Karatamba Bold & Extra Dry. Glass": "\$12.00",
"Carafe": "\$26.00",
"Hana Awaka Sparkling Sake Sweet & Refreshing (8.5oz bottle) Bottle": "\$28.00",
"Hana Kohaku -Plum Sake Sweet & Light. Glass": "\$12.00",
"Carafe": "\$26.00"},
"Shochu": {"Ginza Suzume Barley Shochu": "\$6.00",
"Kuro Kirishima Potato Shochu": "\$8.00"},
"Specialty Cocktails": {"Violet Sake Popular violet-colored sake cocktail": "\$16.00",
"Tokyo Sunset Sunset-colored cocktail with pineapple, coconut rum & orange juice with a splash of grenadine": "\$16.00",
"Sake Sangria Fruit-infused sake cocktail": "\$18.00",
"Mt. Fuji Refreshing sake cocktail with blue curacao and pineapple": "\$16.00",
"Summer's End Summery, refreshing sake cocktail with strawberry, sake, apple juice, and a splash of citrus juice": "\$16.00",
"Shochu Squeeze Choice of fresh citrus with shochu soda": "\$16.00",
"Toki Highball Suntory Toki whiskey, soda, yuzu juice": "\$18.00",
"Chu-Hai Gari Gari Sour Orange Shochu & orange popsicle with soda": "\$16.00",
"Gari Gari Sour Ramune Shochu & Ramune-flavored popsicle with soda": "\$16.00"},
"Japanese Craft Spirits": {"Toki Suntory Whiskey": "\$15.00",
"Hibiki Harmony Suntory Whiskey": "\$20.00",
"Kaiyo Kaiyo Whiskey": "\$18.00",
"Roku Suntory Gin": "\$12.00",
"Haku Suntory Vodka": "\$12.00"},
"Wine": {"Zenato Pino Grigio delle Venezie, Veneto, Italy Bottle": "\$48.00",
"Glass": "\$18.00",
"Villa Maria Sauvignon Blanc, Marlborough County, New Zealand Bottle": "\$48.00",
"Glass": "\$18.00",
"Rainstorm Pinot Noir, Willamette Valley, OR Bottle": "\$52.00",
"Glass": "\$18.00",
"Lincourt Steel Chardonnay, Central Coast, CA Bottle": "\$48.00",
"Glass": "\$18.00",
"Angeline Cabernet Sauvignon, Sonoma, CA Bottle": "\$52.00",
"Glass": "\$18.00",
"Munn Napa Prestige Brut, Napa, CA Bottle": "\$80.00",
"Glass": "\$20.00"}}

{
  "restaurant": {
    "name": "Kringla Bakeri Og Kafe",
    "location": "EPCOT, World Showcase",
    "type": "Snack",
    "meal_period": "Snack"
  },
  "menu": {
    "norwegian_treats": {
      "School Bread": {
        "description": "Sweet Roll filled with Custard and dipped in Coconut",
        "price": "\$4.79"
      },
      "Norwegian Kringla": {
        "description": "Pretzel-shaped Pastry with Assorted Toppings (Almonds or Chocolate) (Plant-based)",
        "price": "\$6.79"
      },
      "Rice Cream": {
        "description": "Creamy Rice Pudding topped with Strawberry Sauce",
        "price": "\$4.29"
      },
      "Lefse": {
        "description": "Soft Flatbread rolled with Cinnamon, Sugar and Butter",
        "price": "\$3.49"
      },
      "Triple Chocolate Chip Cookie": {
        "price": "\$5.79"
      },
      "Verden's Beste Kake": {
        "description": "Vanilla Cake with Custard and Almond-Meringue Topping",
        "price": "\$4.59"
      },
      "Eplekake": {
        "description": "Apple Cake with Caramel Drizzle",
        "price": "\$4.79"
      },
      "Mickey Cinnamon Roll": {
        "price": "\$6.49"
      }
    },
    "beverages": {
      "Assorted Fountain Beverages": {
        "price": "\$5.29"
      },
      "Freshly Brewed Joffrey’s Coffee": {
        "description": "regular or decaf",
        "price": "\$3.79"
      },
      "Kristoff Kaffe": {
        "description": "Frozen Coffee with Coffee-Chocolate Sauce and garnished with Coffee-Chocolate Crunch",
        "price": "\$6.29"
      }
    },
    "alcoholic_beverages": {
      "Nordic Draft Beer": {
        "description": "Aass Pilsner (pronounced Ouse), Einstök White Ale or Einstök Toasted Porter",
        "price": "\$12.00"
      },
      "Viking Coffee": {
        "description": "Baileys Irish Cream Liqueur and Kamora Coffee Liqueur",
        "price": "\$15.00"
      },
      "Frozen Viking Coffee": {
        "description": "Baileys Irish Cream Liqueur and Kamora Coffee Liqueur with Coffee-Chocolate Sauce and garnished with Coffee-Chocolate Crunch",
        "price": "\$15.50"
      }
    }
  }
}
{
  "restaurant": {
    "name": "Nine Dragons Restaurant",
    "location": "EPCOT, World Showcase",
    "type": "Casual Dining",
    "meal_period": "Dinner"
  },
  "menu": {
    "appetizers": {
      "Vegetable Spring Rolls": "\$6.00",
      "Chicken Pot Stickers": "\$9.00",
      "Sichuan Chicken Dumplings": "\$13.00",
      "Crispy Duck Bao Buns": "\$15.00",
      "House Hot & Sour Soup": "\$9.00",
      "Side of Vegetable Egg Fried Rice": "\$5.25"
    },
    "entrees": {
      "Crispy Duck Fried Rice": "\$28.00",
      "Canton Pepper Beef": "\$25.00",
      "Honey Sesame Chicken": "\$23.00",
      "Spicy Honey Crispy Chicken": "\$23.00",
      "Kung Pao Duo": {
        "description": "Chicken & Shrimp with Peanuts",
        "price": "\$26.00"
      },
      "Spicy Mala Happy Family": {
        "description": "Beef, Chicken, Shrimp, and Vegetables",
        "price": "\$28.00"
      },
      "Salt and Pepper Shrimp": {
        "description": "with Spinach Noodles",
        "price": "\$27.00"
      },
      "Kowloon Spare Ribs": "\$30.00",
      "Vegetable & Tofu Stir Fry": "\$20.00"
    },
    "desserts": {
      "Strawberry-Red Bean Ice Cream": "\$4.25",
      "Caramel-Ginger Ice Cream": "\$4.25"
    },
    "kids_menu": {
      "note": "Kids' menu items for children ages 9 and younger. Look for the Disney Check icon on printed menus to find options that meet Disney's nutrition guidelines.",
      "entrees": {
        "Honey Chicken Nuggets": "\$10.00",
        "Sweet-and-Sour Shrimp with Lo Mein Noodles": "\$11.00",
        "Kid's Deluxe": {
          "description": "Shrimp, Chicken, Carrots, Broccoli, and Vegetable Egg Fried Rice",
          "price": "\$13.00"
        }
      }
    },
    "beverages": {
      "soft_drinks": {
        "Assorted Coca-Cola Soft Drinks": "\$4.75",
        "Raspberry Iced Tea (Sweetened)": "\$4.75",
        "Iced Green Tea (Unsweetened)": "\$4.75",
        "Fruit Juices": {
          "description": "Orange, Apple, Pineapple, Cranberry",
          "price": "\$5.00"
        },
        "Lowfat Milk": "\$4.25",
        "Chocolate Milk": "\$4.25",
        "Hot Chocolate": "\$4.25",
        "Hot Coffee": "\$4.25",
        "Hot Jasmine Tea": "\$3.95",
        "DASANI® Bottled Water": "\$3.75",
        "Perrier Water": "\$5.00"
      },
      "non_alcoholic_specialties": {
        "Strawberry Slushy": "\$6.25",
        "Mango Slushy": "\$6.25",
        "Shangri-La Slushy": {
          "description": "Strawberry and Mango Blend",
          "price": "\$6.25"
        }
      },
      "specialty_cocktails_and_beer": {
        "ByJo Mo": {
          "description": "BaiJiu Spirit, Peach Schnapps, Mango and Orange Juices, Sparkling Water",
          "price": "\$15.00"
        },
        "Ginger Zinger": {
          "description": "Light Rum, Ginger Liqueur, Lemon-Lime Soda",
          "price": "\$15.00"
        },
        "Jade Beauty": {
          "description": "Vodka, Honeydew Melon Liqueur, Pineapple Juice, Lemon-Lime Soda",
          "price": "\$15.00"
        },
        "Lychee Blossom": {
          "description": "Lychee Liqueur, Sparkling Water, Rose Syrup",
          "price": "\$15.00"
        },
        "South Sea Dream": {
          "description": "Citrus Vodka, Triple Sec, Guava Juice",
          "price": "\$15.00"
        },
        "Dragon Blossom Draft Beer": "\$9.75",
        "Tsingtao Beer": "\$10.00"
      }
    },
    "wine_list": {
      "whites": {
        "Chardonnay Mondavi, "Private Selection", CALIFORNIA": {
          "bottle": "\$49.00",
          "glass": "\$12.00"
        },
        "Chenin Blanc Dry Creek, CALIFORNIA": {
          "bottle": "\$54.00",
          "glass": "\$13.50"
        },
        "Pinot Grigio Riff, ITALY": {
          "bottle": "\$49.00",
          "glass": "\$12.00"
        },
        "Riesling Pacific Rim, "J", WASHINGTON ST.": {
          "bottle": "\$42.00",
          "glass": "\$11.00"
        },
        "Sauvignon Blanc Brancott, NEW ZEALAND": {
          "bottle": "\$56.00",
          "glass": "\$14.00"
        }
      },
      "rose": {
        "Pinot Noir Rosé Rainstorm, "Silver Linings", OREGON": {
          "bottle": "\$46.00",
          "glass": "\$11.50"
        }
      },
      "reds": {
        "Cabernet Sauvignon Borne of Fire, WASHINGTON ST.": {
          "bottle": "\$72.00",
          "glass": "\$15.00"
        },
        "Malbec Terrazas, "Altos del Plata", ARGENTINA": {
          "bottle": "\$53.00",
          "glass": "\$13.50"
        },
        "Merlot Two Vines, CALIFORNIA": {
          "bottle": "\$42.00",
          "glass": "\$11.00"
        },
        "Pinot Noir Castle Rock, CALIFORNIA": {
          "bottle": "\$49.00",
          "glass": "\$12.50"
        },
        "Conundrum Red Blend, California": {
          "bottle": "\$56.00",
          "glass": "\$13.50"
        }
      },
      "sparkling": {
        "Brut Mumm Napa, "Prestige", CALIFORNIA (187ml)": {
          "bottle": "\$19.00"
        },
        "Cuvée Mumm Napa, "M", CALIFORNIA": {
          "bottle": "\$86.00"
        }
      },
      "sweet": {
        "Moscato Roscato, ITALY": {
          "bottle": "\$53.00"
        },
        "Plum Takara, CALIFORNIA": {
          "bottle": "\$49.00",
          "glass": "\$12.00"
        },
        "Port Ferreira, 10 Years Old Tawny, PORTUGAL": {
          "bottle": "\$54.00",
          "glass": "\$13.00"
        }
      }
    }
  }
}


{
  "restaurant": {
    "name": "Monsieur Paul",
    "location": "EPCOT, World Showcase",
    "type": "Signature Dining",
    "meal_period": "Dinner"
  },
  "prix_fixe_menu": {
    "name": "Menu Dégustation",
    "price": "\$195 per adult, plus tax and gratuity",
    "courses": {
      "starter": {
        "cocktail": "Apéritif, amuse-bouche",
        "amuse_bouche": "Amuse-Bouche served with Monsieur Paul's Cocktail"
      },
      "appetizers": {
        "title": "Hors d'oeuvres (Choose One)",
        "options": {
          "Salade de homard du Maine, vinaigrette aux fruits de la Passion": "Maine Lobster salad with passion fruit vinaigrette",
          "Cassolette d'escargot à la cressonnière sur une émulsion de pomme de terre": "Escargot cassolette with watercress and potato emulsion",
          "Soupe de moules aux pistils de safran": "Saffron mussels soup"
        }
      },
      "fish": {
        "title": "Fish Courses (Choose One)",
        "options": {
          "Bar en croute feuilletée, sauce Choron, grand mets de Monsieur Paul": "Sea bass in puff pastry, sauce Choron, Monsieur Paul style (served for two or more)",
          "Snapper en écailles de pommes de terre": "Snapper in potato scales, Thyme sauce",
          "Coquilles Saint Jacques au potimarron et sirop d'érable": "Seared scallops served with maple pumpkin velouté"
        }
      },
      "palate_cleanser": {
        "title": "Trou Normand",
        "description": "Palate Cleanser served with Pear Brandy and Sorbet"
      },
      "meat": {
        "title": "Meat Courses (Choose One)",
        "options": {
          "Carré d'agneau rôtie en cocotte, choux vert frisé farci aux champignons des bois et châtaignes, jus court au thym frais": "Rack of lamb roasted in a cocotte, curly green cabbage stuffed with mushrooms and chestnuts, fresh thyme juices",
          "Filet de bœuf rôti, fricassée de cèpes, pomme de terre mousseline, sauce Bordelaise": "Center cut beef tenderloins grilled, porcini fricassee, mashed potatoes mousseline, Bordelaise sauce",
          "Volaille Fermière en fricassée aux morilles, riz pilaf à la Matignon de légumes et truffes": "Chicken fricassee with morels, rice pilaf with vegetables and black truffles"
        }
      },
      "cheese": {
        "title": "Cheese",
        "description": "Assiette de fromages: Imported cheeses plate"
      },
      "desserts": {
        "title": "Desserts (Choose One)",
        "options": {
          "Sphère de chocolat au lait, glace au chocolat, sauce tiède au chocolat et cognac": "Chocolate almond cake, chocolate cream, hazelnut biscuit, chocolate ice cream, warm chocolate Cognac sauce",
          "Tarte aux pommes fine, crème d'amandes": "Thin apple art, almond cream",
          "Vacherin classique": "Meringue, vanilla ice cream, raspberry sorbet, vanilla Chantilly, raspberry coulis"
        }
      },
      "finale": {
        "title": "Mignardises & Digestif",
        "description": "Assorted Mini Desserts served with a Digestif Cocktail"
      }
    }
  }
}

{"restaurant": "Le Cellier Steakhouse": "EPCOT, World Showcase Signature Dining",
"Meal Period": "Lunch",
"Appetizers": {"Bison Tartare*": "Kibbeh Nayeh, Radish, Mint, Garlic Aïoli, Toasted Bread \$19.00",
"Braised Wagyu Beef Ragu": "Ricotta-Lemon Cavatelli, Dandelions, Fennel, Parmesan \$18.00",
"Canadian Cheddar Cheese Soup": "Moosehead Pale Ale and Nueske’s Applewood-smoked Bacon \$13.00",
"Canadian Cove P.E.I. Mussels": "Vadouvan Curry, Yogurt, Herb Pistou, Pommes Frites \$21.00",
"Artisanal Cheese Plate": "Craft Cheeses, Honeycomb, House-made Jam, Toasted Sourdough \$23.00",
"Shrimp Cocktail": "Lemon, Mignonette, Cocktail Sauce \$21.00",
"Steakhouse Wedge Salad": "Tomatoes, Bacon Lardons, Edamame, Ranch Dressing, Caveman Blue Cheese, Crispy Onions \$16.00",
"Land Greens Salad": "Shaved Fennel, Florida Citrus, Radish, Lemon Vinaigrette, Sunflower Seeds \$16.00"},
"Entrées - Butcher's Cuts": {"16-oz. Rib-Eye Steak*": "Butcher’s Cuts accompanied by one (1) Side and one (1) Sauce \$59.00",
"12-oz. New York Strip Steak*": "Butcher’s Cuts accompanied by one (1) Side and one (1) Sauce \$59.00",
"12 oz. Milk-Fed Porcelet Rib Chop*": "Butcher’s Cuts Accompanied by one (1) Side and one (1) Sauce \$59.00",
"28 oz. Rib-Eye Steak for Two*": "Butcher’s Cuts Accompanied by one (1) Side and one (1) Sauce \$115.00"},
"Enhancements": {"Lump Crab Oscar": "\$18.00",
"Sauce Flight": "Enhance your experience with a Flight of five (5) Sauces: Chardonnay-Truffle Butter, Cabernet Demi, Cognac-Peppercorn, Béarnaise, Sauce Verte \$9.00",
"Roasted Bone Marrow": "\$15.00",
"Caveman Blue Cheese": "\$6.00"},
"Entrées - Land & Sea": {"Le Cellier Filet Mignon*": "Mushroom Risotto, Pomodoraccio Tomatoes, Truffle Butter Sauce, Petit Herbs \$62.00",
"14-oz Dry-aged Duroc Pork Chop*": "Butcher’s Cuts Accompanied by one (1) Side and one (1) Sauce \$46.00",
"Green Circle Chicken": "Confit Roulade, Lentils, Roasted Turnips, Beurre Rouge, Greens \$40.00",
"Mushroom Tart": "Pâte Brisée, Trumpet Mushrooms, Sherry Wine, Turnips, Mâche, Winter Truffle, Jus \$36.00",
"Halibut": "Leeks, Roasted Onions, Fennel, Peas, Onion Soubise, Salsify \$49.00"},
"Sides": {"Creamed Spinach": "Canadian Cheddar, Garlic \$10.50",
"Charred Broccolini": "Miso-Butter, Crispy Shallots \$10.50",
"Hand-cut Pomme Frites": "Parmesan, Fines Herbes \$10.50",
"Macaroni & Cheese": "Applewood-smoked Bacon, Smoked Gouda \$14.00",
"Mashed Potatoes": "Mascarpone, Roasted Garlic \$14.00",
"Roasted Carrots": "Pistou, Pistachios, Dukkah \$10.50",
"Crispy Brussels Sprouts": "Maple-Bacon Marmalade, Golden Raisins \$10.50",
"Braised Mushrooms": "Sherry Wine, Fines Herbes \$10.50"},
"Poutine Offerings": {"Classic Poutine": "Hand-cut Pomme Frites, Cheese Curds, Cheddar, Sauce Bordelaise \$17.00"},
"Desserts": {"Maple Crème Brûlée": "Chantilly, Gooseberries, Tuile \$14.00",
"Pouding Chômeur": "Warm Brioche, Custard, Maple Syrup, Vanilla Bean Gelato \$13.00",
"Victoria Gardens Sorbet": "Hibiscus Meringue, Garden Blooms \$12.00",
"Profiterole": "Craquelin, Cheesecake Inlay, Marionberry, Sorrel \$14.00",
"Boutique Collection": "Artisanal Chocolates, Almond Cookies, Macarons \$16.00",
"Peanut Butter-Chocolate Torte": "Peanut Butter Custard, Chocolate Cake, Warm 65% Disney Couverture Ganache \$15.00"},
"Kids' Appetizers (À la Carte)": {"Cheddar Soup": "\$3.25",
"Garden Salad with Ranch Dressing": "\$3.25"},
"Kids' menu items for children ages 9 and younger. Look for the Disney Check icon on printed menus to find options that meet Disney's nutrition guidelines.": null,
"Kids' Create-Your-Own Entrées (choose one)": {"Grilled Chicken": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice \$15.00",
"Grilled Steak": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice \$19.00",
"Sustainable Fish": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice \$19.00",
"Macaroni & Cheese": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice \$14.00",
"Grilled Cheese Sandwich": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice \$14.00"},
"Kids' Create-Your-Own Selections": {"Steamed Carrots": null,
"Seasonal Vegetables": null,
"Roasted Potatoes": null,
"Mashed Potates": null,
"Mushroom Risotto": null,
"Nanaimo Sundae": null,
"Chocolate Moose": null,
"Fresh Fruit": null},
"Kids' Specialty Drink": {"Specialty Character Drink": "Minute Maid® Zero Sugar Lemonade with flavors of Cotton Candy served in a souvenir Character Cup \$6.50"},
"Featured Wines by the Glass": {"Les Cadrans de Lassègue Merlot, Saint-Émilion Grand Cru, Bordeaux": "\$21.00",
"Frank Family Cabernet, Napa Valley": "\$29.00",
"Dutton Goldfield Pinot Noir, Russian River Valley": "\$24.00",
"Silverado Vineyards Chardonnay, Los Carneros": "\$18.00",
"Le Cellier Icewine Flight": "\$23.00"},
"Dessert Wines": {"Mission Hill Reserve Riesling Icewine, Okanagan Valley Bottle": "\$85.00",
"Inniskillin Vidal Icewine, Niagara Peninsula Bottle": "\$110.00",
"Glass": "\$29.00",
"Château des Charmes Vidal Icewine, Niagara Peninsula Bottle": "\$64.00",
"Glass": "\$22.00",
"Meeker FroZin Zinfandel Icewine, Sonoma County Bottle": "\$95.00",
"Glass": "\$17.00",
"Emotions Sauternes, Chateau De La Tour Blanche Bottle": "\$53.00",
"Glass": "\$14.00"},
"After Dinner Drinks": {"Le Cellier Icewine Flight": "\$23.00",
"Canadian Coffee with Brown Jug Bourbon Cream": "\$13.00"},
"Beer (Bottled, Can, or Draft)": {"La Fin du Monde - Draft This triple-style golden ale has a mildly hoppy palate with notes of grains, fruit and spice, followed by a smooth, dry finish. A perfect balance of sugar, acidity, bitterness, spices and alcohol Glass": "\$11.25",
"Maudite - Bottle This red amber ale is inspired by Abbey beers and Belgian double-style ales and has a velvety palate of caramelized sugar and marmalade, slightly roasted with a spicy finish Glass": "\$11.25",
"Blanche de Chambly - Bottle This White Champagne-style beer has notes of dried orange peel, wheat and coriander seeds Glass": "\$11.25",
"Trois Pistoles - Bottle Full-bodied palate with notes of lightly smoked rum, grains, herbs and spices Glass": "\$11.25",
"Moosehead Lager - Draft Glass": "\$8.00",
"Molson Canadian Glass": "\$8.50",
"Labatt Blue Glass": "\$8.50",
"Labatt Blue Light Glass": "\$8.50"},
"Allergy-Friendly Appetizers": {"Guests must speak to a Cast Member about their allergy-friendly request": null,
"Bison Tartare*": "Kibbeh Nayeh, Radish, Mint, Garlic Aïoli, Toasted Bread (For Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies) \$19.00",
"Canadian Cheddar Cheese Soup": "Moosehead Pale Ale, Applewood-smoked Bacon (For Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame Allergies) \$13.00",
"Canadian Cove P.E.I. Mussels": "Vadouvan Curry, Yogurt, Herb Pistou, Pommes Frites (For Gluten/Wheat, Egg, Fish, Peanut/Tree Nut, Sesame, and Soy Allergies) \$21.00",
"Artisanal Cheese Plate": "Craft Cheeses, Honeycomb, House-made Jam, Toasted Sourdough (For Egg, Fish/Shellfish, Peanut, Sesame Allergies) \$23.00",
"Shrimp Cocktail": "Lemon, Mignonette, Cocktail Sauce (For Gluten/Wheat, Egg, Milk, Peanut/Tree Nut, Sesame, Soy Allergies) \$21.00",
"Steakhouse Wedge Salad": "Tomatoes, Bacon Lardons, Edamame, Ranch Dressing, Caveman Blue Cheese, Crispy Onions (For Gluten/Wheat, Fish/Shellfish, Peanut/Tree Nut, Sesame Allergies) \$16.00",
"Land Greens Salad": "Shaved Fennel, Florida Citrus, Radish, Lemon Vinaigrette, Sunflower Seeds (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut, Sesame, Soy Allergies) \$16.00",
"Braised Wagyu Beef Ragu": "Ricotta-Lemon Cavatelli, Dandelions, Fennel, Parmesan (For Fish/Shellfish, Peanut/Tree Nut, Sesame, Soy Allergies) \$18.00"},
"Allergy-Friendly Entrées - Butcher's Cuts": {"Guests must speak to a Cast Member about their allergy-friendly request": null,
"16-oz. Rib-Eye Steak*": "Butcher’s Cuts accompanied by one (1) Side and one (1) Sauce (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, Soy Allergies) \$59.00",
"12-oz. New York Strip Steak*": "Butcher’s Cuts accompanied by one (1) Side and one (1) Sauce (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, Soy Allergies) \$59.00",
"12 oz. Milk-Fed Porcelet Rib Chop*": "Butcher’s Cuts Accompanied by one (1) Side and one (1) Sauce (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, Soy Allergies) \$59.00",
"28 oz. Rib-Eye Steak for Two*": "Butcher’s Cuts Accompanied by one (1) Side and one (1) Sauce (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, Soy Allergies) \$115.00"},
"Allergy-Friendly Enhancements": {"Guests must speak to a Cast Member about their allergy-friendly request": null,
"Lump Crab Oscar": "(For Gluten/Wheat, Fish, Peanut/Tree Nut, Sesame, Soy Allergies) \$18.00",
"Roasted Bone Marrow": "(For Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, Soy Allergies) \$15.00",
"Caveman Blue Cheese": "(For Gluten/Wheat, Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame, Soy Allergies) \$6.00"},
"Allergy-Friendly Entrées - Land & Sea": {"Guests must speak to a Cast Member about their allergy-friendly request": null,
"Le Cellier Filet Mignon*": "Mushroom Risotto, Pomodoraccio Tomatoes, Truffle Butter Sauce, Petit Herbs (For Gluten/Wheat, Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame, Soy Allergies) \$62.00",
"14-oz Dry-aged Duroc Pork Chop*": "Butcher’s Cuts Accompanied by one (1) Side and one (1) Sauce (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, Soy Allergies) \$46.00",
"Green Circle Chicken": "Confit Roulade, Lentils, Roasted Turnips, Beurre Rouge, Greens (For Gluten/Wheat, Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame Allergies) \$40.00",
"Mushroom Tart": "Pâte Brisée, Trumpet Mushrooms, Sherry Wine, Turnips, Mâche, Winter Truffle, Jus (For Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame Allergies) \$36.00",
"Halibut": "Leeks, Roasted Onions, Fennel, Peas, Onion Soubise, Salsify (For Gluten/Wheat, Egg, Peanut/Tree Nut, Sesame, Shellfish, Soy Allergies) \$49.00"},
"Allergy-Friendly Sides": {"Guests must speak to a Cast Member about their allergy-friendly request": null,
"Creamed Spinach": "Canadian Cheddar, Garlic (For Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame, Soy Allergies) \$10.50",
"Charred Broccolini": "Miso-Butter, Crispy Shallots (For Gluten/Wheat, Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame Allergies) \$10.50",
"Hand-cut Pomme Frites": "Parmesan, Fines Herbes (For Gluten/Wheat, Fish/Shellfish, Peanut/Tree Nut, Sesame, Soy Allergies) \$10.50",
"Macaroni & Cheese": "Applewood-smoked Bacon, Smoked Gouda (For Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame, Soy Allergies) \$14.00",
"Mashed Potatoes": "Mascarpone, Roasted Garlic (For Gluten/Wheat, Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame, Soy Allergies) \$14.00",
"Roasted Carrots": "Pistou, Pistachios, Dukkah (For Gluten/Wheat, Egg, Fish/Shellfish, Soy Allergies) \$10.50",
"Braised Mushrooms": "Sherry Wine, Fines Herbes (For Gluten/Wheat, Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame, Soy Allergies) \$10.50",
"Crispy Brussels Sprouts": "Maple-Bacon Marmalade, Golden Raisins (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, Soy Allergies) \$10.50"},
"Allergy-Friendly Poutine": {"Guests must speak to a Cast Member about their allergy-friendly request": null,
"Classic Poutine": "Hand-cut Pomme Frites, Cheese Curds, Cheddar, Sauce Bordelaise (For Gluten/Wheat, Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame, Soy Allergies) \$17.00"},
"Allergy-Friendly Desserts": {"Guests must speak to a Cast Member about their allergy-friendly request": null,
"Peanut Butter-Chocolate Torte": "Peanut Butter Custard, Chocolate Cake, Warm 65% Disney Couverture Ganache (For Fish/Shellfish and Sesame Allergies) \$15.00",
"Maple Crème Brûlée": "Chantilly, Gooseberries, Tuile (For Fish/Shellfish, Peanut/Tree Nut, Sesame, and Soy Allergies) \$14.00",
"Profiterole": "Craquelin, Cheesecake Inlay, Marionberry, Sorrel (For Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies) \$14.00",
"Boutique Collection": "Artisanal Chocolates, Almond Cookies, Macarons (For Fish/Shellfish and Sesame Allergies) \$16.00",
"Victoria Gardens Sorbet": "Hibiscus Meringue, Garden Blooms (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut, Sesame, and Soy Allergies) \$12.00",
"Pouding Chômeur": "Warm Brioche, Custard, Maple Syrup, Vanilla Bean Gelato (For Fish/Shellfish, Peanut/Tree Nut, Sesame, Soy Allergies) \$13.00"},
"Allergy-Friendly Kids' Appetizers": {"Guests must speak to a Cast Member about their allergy-friendly request": null,
"Cheddar Soup": "(For Egg, Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies) \$3.25",
"Garden Salad with Ranch Dressing": "(For Gluten/Wheat, Fish/ Shellfish, Peanut/Tree Nut, Sesame, and Soy Allergies) \$3.25"},
"Allergy-Friendly Kids' Entrées": {"Guests must speak to a Cast Member about their allergy-friendly request": null,
"Grilled Chicken": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies) \$15.00",
"Grilled Steak": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice (For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies) \$19.00",
"Sustainable Fish": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice (For Gluten/Wheat, Egg, Milk, Peanut/Tree Nut, Sesame, Shellfish, and Soy Allergies) \$19.00",
"Macaroni & Cheese": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice (For Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame, and Soy Allergies) \$14.00",
"Grilled Cheese Sandwich": "Served with choice of two (2) Selections and choice of Small Lowfat Milk, Small DASANI® Water, or Small Minute Maid® Apple Juice (For Fish/Shellfish and Peanut/Tree Nut Allergies) \$14.00"},
"Allergy-Friendly Kids' Selections": {"Guests must speak to a Cast Member about their allergy-friendly request": null,
"Mashed Potates": "(For Gluten/Wheat, Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame, and Soy Allergies)",
"Steamed Carrots": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)",
"Roasted Potatoes": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)",
"Seasonal Vegetables": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)",
"Mushroom Risotto": "(For Gluten/Wheat, Egg, Fish/Shellfish, Peanut/Tree Nut, Sesame, and Soy Allergies)",
"Fresh Fruit": "(For Gluten/Wheat, Egg, Fish/Shellfish, Milk, Peanut/Tree Nut, Sesame, and Soy Allergies)",
"Chocolate Moose": "(For Fish/Shellfish, Peanut/Tree Nut, and Sesame Allergies)",
"Nanaimo Sundae": "(For Fish/Shellfish, Peanut, and Sesame Allergies)"}}

{"restaurant": "Tutto Italia Ristorante": "EPCOT, World Showcase Casual Dining",
"Meal Period": "Lunch",
"Antipasti": {"Polipo Grigliato": "Grilled Mediterranean octopus, potatoes, pancetta, Calabrian chili, caperberry, parsley, lemon, extra virgin olive oil \$24.00",
"Calamari Fritti served with Marinara Piccante": "\$23.00",
"Caesar Salad": "Romaine lettuce, olive crostini, cherry tomatoes, shaved Grana Padano DOP \$18.00",
"Fior di Latte Caprese": "Red and yellow grape tomato salad, balsamic emulsion, extra virgin olive oil \$18.00",
"Insalata Mista": "Mixed Greens, endive, arugula, radicchio, frisée, white asparagus, radish and balsamic vinaigrette \$15.00",
"Carpaccio di Manzo*": "Charred Wagyu beef, Arugula, Parmesan Cheese and Lemon Dressing \$24.00",
"Tortino di Melanzane": "Baked eggplant parmigiana, pomodoro, mozzarella, parmesan \$19.00",
"Prosciutto di Parma": "Parma ham, melon carpaccio \$20.00",
"Pasta E Fagioli": "Cannellini bean soup, ham and Gragnano pasta mista \$10.00",
"Tagliere Serves two people. Prosciutto di Parma, Salame, Capocollo, Pecorino Tartufato, Asiago, Gorgonzola, Fontina, Artichoke, Cerignola Olive and Grissini": "\$45.00"},
"Secondi": {"Salmone*": "Grilled filet of Salmon, Cannellini, Salsa Fresca, Tomatoes, Capers, Olives and Anchovies \$37.00",
"Bistecca*": "12 oz. grilled NY strip steak, Chianti and Balsamic-glazed Cipollini Onions \$47.00",
"Pesce Spada*": "Grilled Swordfish, crushed potatoes, Scillian tomato pesto and piccata sauce \$36.00",
"Parmigiana": "Breaded chicken breast, mozzarella, parmesan, fresh spaghetti and tomato sauce \$34.00",
"Mare e Monti": "Slow braised chuck short rib, Maine lobster ravioli, rosemary butter \$52.00"},
"Pasta": {"Fettuccine": "Creamy Alfredo Sauce \$26.00",
"Lasagne alla Bolognese": "Traditional Emilia-Romagna preparation with beef and pork ragù, béchamel, parmesan \$29.00",
"Spaghetti": "Beef and pork meatballs, pomodoro sauce \$29.00",
"Gnocchi Sorrentina": "Potato dumplings, roasted tomatoes, pomodoro sauce, burrata cheese \$29.00",
"Tutto Risotto": "Chef's seasonal creation \$40.00"},
"Contorni (Sides)": {"Spaghetti Plain, butter, pomodoro or cream sauce": "\$8.00",
"Crispy Potatoes": "\$8.00",
"Green Beans": "\$8.00",
"Mushrooms": "\$8.00",
"Meatballs in Pomodoro Sauce": "\$9.00",
"Grilled Chicken Breast": "\$9.00",
"Oishii Shrimp (4)": "\$15.00"},
"Kids' Entrées": {"Mozzarella Sticks with Marinara sauce": "\$11.00",
"Spaghetti with tomato sauce and Beef & Pork meatballs.": "\$11.00",
"Chicken Tenders with green beans": "\$11.00",
"Cheese or Pepperoni Pizza": "\$11.00",
"Green Beans": "\$8.00"},
"Kids' menu items for children ages 9 and younger. Look for the Disney Check icon on printed menus to find options that meet Disney's nutrition guidelines.": null,
"Kids' Beverages": {"Pink Italian Lemonade served with a Glow Cube and a candy straw": "\$11.00",
"Lemonade Add a Glow Cube for \$5 | Add a Candy Straw for \$2": "\$7.00",
"Shirley Temple Add a Glow Cube for \$5 | Add a Candy Straw for \$2": "\$5.00",
"Piña Colada Add a Glow Cube for \$5 | Add a Candy Straw for \$2": "\$8.00",
"Strawberry Daiquiri Add a Glow Cube for \$5 | Add a Candy Straw for \$2": "\$8.00"},
"Dolci": {"Tiramisù The classic coffee-flavored Italian dessert. Ours is created with ladyfingers dipped in coffee, layered with a whipped mixture of eggs, sugar and mascarpone cheese and topped with fresh cocoa powder": "\$14.00",
"Cannolo Siciliano": "Crispy pastry filled with sweet ricotta, chocolate, and candied orange \$12.00",
"Torta di Ricotta": "Ricotta cheesecake, Blackberry and mint compote with whipped cream \$13.00",
"Torta di Genovese": "Praline chocolate mousse and candied hazelnuts \$14.00",
"Limoncello Float (21+) Sicilian limoncello over homeade limocello gelato and fresh strawberryy (menu offering contains alcohol)": "\$19.00",
"Gelati e Sorbetti Choice of one – chocolate, vanilla, strawberry, or lemon": "\$12.00"},
"Birra": {"Cipriani Carciofo First & only artichoke beer in the USA Bottle": "\$16.00",
"Peroni Pitcher": "\$39.00",
"Glass": "\$14.00",
"Michelob Ultra Pitcher": "\$35.00",
"Glass": "\$13.00",
"Bud Light Pitcher": "\$28.00",
"Glass": "\$11.00",
"Blue Moon Pitcher": "\$43.00",
"Glass": "\$16.00"},
"Vino": {"Prosecco, Terre Di Bacco, Glera NV Bottle": "\$52.00",
"Glass": "\$13.00",
"Rosa Regale, Spumante Dolci Banfi, Brachetto NV Bottle": "\$64.00",
"Glass": "\$14.00",
"Moscato, Batasiolo, Moscato NV Bottle": "\$52.00",
"Glass": "\$13.00",
"Brachetto, Batasiolo, Spumante, Brachetto NV Bottle": "\$74.00",
"Glass": "\$18.00",
"Pinot Grigio, Terre di Bacco Bottle": "\$45.00",
"Glass": "\$12.00",
"Gavi, Batasiolo, Cortese Bottle": "\$62.00",
"Glass": "\$15.00",
"Pecorino, Il Feuduccio Bottle": "\$72.00",
"Glass": "\$17.00",
"Sauvignon Blanc, Terre di Bacco Bottle": "\$59.00",
"Glass": "\$14.00",
"Verdicchio Dei Castelli Di Jesi, Marchetti Bottle": "\$63.00",
"Glass": "\$15.00",
"Soave Classico Superiore, Pieropan Bottle": "\$61.00",
"Glass": "\$14.00",
"Chardonnay, Batasiolo Bottle": "\$63.00",
"Glass": "\$15.00",
"Centine Rosé, Banfi Bottle": "\$52.00",
"Glass": "\$13.00",
"Chianti, Terre Di Bacco Bottle": "\$45.00",
"Glass": "\$12.00",
"Chianti Classico, Vescine Capotondo Bottle": "\$65.00",
"Glass": "\$16.00",
"Chianti Classico Riserva, Vescine Bottle": "\$104.00",
"Glass": "\$25.00",
"Dolcetto D'Alba, Batasiolo Bottle": "\$65.00",
"Glass": "\$15.00",
"Pinot Nero, Lavis Bottle": "\$59.00",
"Glass": "\$14.00",
"Valpolicella, Allegrini Bottle": "\$69.00",
"Glass": "\$15.00",
"Cabernet, Terre Di Bacco Bottle": "\$52.00",
"Glass": "\$13.00",
"Langhe Nebbiolo, Massolino Bottle": "\$95.00",
"Glass": "\$22.00",
"Belnero, Banfi, Sangiovese Bottle": "\$104.00",
"Glass": "\$24.00",
"Montepulciano D'Abruzzo, La Quercia Bottle": "\$52.00",
"Glass": "\$13.00",
"Lucente, Luce Bottle": "\$99.00",
"Glass": "\$23.00",
"Aglianico Riserva, La Fortezza Bottle": "\$143.00",
"Glass": "\$35.00",
"Ali Toscana, Donna Laura Bottle": "\$65.00",
"Glass": "\$15.00",
"Amarone Sartori, Corte Bra Corvina Bottle": "\$175.00",
"Glass": "\$39.00",
"Nero D'Avola, Stemmari Bottle": "\$59.00",
"Glass": "\$15.00",
"Langhe Nebbiolo, Terre Di Bacco Bottle": "\$53.00",
"Glass": "\$14.00"},
"Frizzante Cocktails": {"Italicus Spritz Italicus Rosolio di Bergamotto, prosecco, Cerignola Olive": "\$20.00",
"White Wine Spritzer A splash of sparkling mineral water with a lemon twist": "\$12.00",
"Bellini Peach purée, prosecco": "\$16.00",
"Frizzante Campari, mandarin juice, prosecco": "\$18.00"},
"Distinctly Italian": {"Italian Margarita Tequila, Limoncello, fresh lime juice": "\$18.00",
"Italian Martini Citrus vodka, limoncello, triple sec, lemon juice, sour mix": "\$18.00",
"Sardinia Mule Wild Sardinia Vodka, ginger beer and lime juice": "\$17.00",
"Espresso Martini Vanilla vodka, coffee liqueur, Italian espresso": "\$18.00",
"Pomegranate Cosmopolitan Citrus vodka, triple sec, pomegranate juice": "\$17.00",
"Italian Sangria Cabernet Terre di Bacco, rum, fruit juice": "\$16.00",
"Campari & Soda": "\$14.00",
"Cynar & Soda With a slice of orange": "\$14.00",
"Martini Your Way Up or on the rocks": "\$20.00",
"Sicilian Iced Tea Amaro Averna, Orangecello, lemon juice": "\$17.00",
"Red Passion Campari, grapefruit juice": "\$17.00",
"Americano Campari, sweet vermouth, club soda, orange twist": "\$17.00"},
"Limoncello": {"Limoncello Flight Regular | Crema | Pistachio": "\$24.00",
"Fabrizia Sicilian lemons transformed in a wonderful experience": "\$12.00",
"Fabrizia Crema A silky and creamy alternative spin on a classic": "\$12.00",
"Fabrizia Pistacchio made with toasted Sicilian pistachios and cream": "\$12.00",
"Di Capri The original recipe from Capri Island": "\$15.00"},
"Sambuca": {"Molinari Extra Flavored with anise and a mixture of herbs and spices": "\$13.00",
"Basilica Black Elderberries and anise provide a licorice color and flavor": "\$11.00"},
"Amari E Liquori": {"Amaro Averna Semi-bitter, velvety and warm on the palate with a bittersweet taste": "\$13.00",
"Amaro Montenegro Orange, coriander, cherries, pekoe tea and cucumber": "\$13.00",
"Amaro Ramazzotti Smooth and delicate with a perfect balance of sweet and bitter": "\$13.00",
"Caravella Orangecello Syrupy and sweet with a strong orange blossom character": "\$13.00",
"Cynar Artichoke liqueur": "\$13.00",
"Disaronno Amaretto Almond taste that reflects the essence of 17 selected herbs": "\$15.00",
"Frangelico Hazelnut Liqueur Toasted hazelnuts with hints of vanilla and chocolate": "\$15.00",
"Fernet Branca A bitter aromatic spirit made from 40+ herbs and spices": "\$13.00"},
"Grappa": {"Gra'it Distilled from a blend of the seven finest Italian grape pomaces and aged 12 months in Slovenian oak casks": "\$31.00",
"Marcati Il Bacio Delle Muse Riserva Bright golden color with notes of vanilla and red berries": "\$16.00",
"Marcati Di Amarone The fruit-rich pomace produces a very fruity and velvety grappa with an irresistible aroma": "\$20.00",
"Nonino Il Moscato Elegant, aromatic, soft and sensual": "\$27.00"},
"Marsala & Brandy": {"Sweet Sweet, fortified, full-body wine": "\$12.00",
"Dry Dry, fortified, full-body wine": "\$12.00",
"Stock 84 Smooth, mellow flavors and soft aroma with a very faint fruitness": "\$20.00"}}

{
  "restaurant": {
    "name": "La Crêperie de Paris",
    "location": "EPCOT, World Showcase",
    "type": "Casual Dining",
    "meal_periods": ["Breakfast"]
  },
  "menu": {
    "appetizers": {
      "Soupe du Jour": {
        "description": "Soup of the Day",
        "price": "\$9.25"
      },
      "Salade Maison": {
        "description": "Mixed Greens, Tomatoes, Onions, and Vinaigrette",
        "price": "\$9.25"
      }
    },
    "prix_fixe": {
      "adult": {
        "description": "Choice of Soup of the Day or Salade Maison; choice of one Galette with a Glass of Hard Cider, Soda, or Juice; Choice of one Dessert Crêpe",
        "price": "\$39.95"
      },
      "children": {
        "description": "Choice of one Galette (Brie Cheese, Ratatouille, or Ham and Cheese) and choice of one Crêpe (Sugar, Red Berries or Hazelnut Chocolate Spread)",
        "price": "\$16.95",
        "note": "For children ages 9 and younger. Look for the Disney Check icon on printed menus to find options that meet Disney's nutrition guidelines."
      }
    },
    "galettes": {
      "Classique": {
        "description": "Ham, Egg, Swiss Cheese",
        "price": "\$18.50"
      },
      "Poulet": {
        "description": "Chicken, Bechamel Cheese Sauce, Mushrooms",
        "price": "\$18.50"
      },
      "Chèvre": {
        "description": "Goat Cheese, Spinach, Walnuts",
        "price": "\$18.50"
      },
      "Saumon": {
        "description": "Smoked Salmon, Crème Fraîche, Chives, Lemon",
        "price": "\$18.50"
      },
      "Ratatouille": {
        "description": "Tomato, Zucchini, Eggplant",
        "price": "\$18.50"
      },
      "Savoyarde": {
        "description": "Raclette Cheese, Caramelized Onions, Bacon, Imported Bayonne Ham",
        "price": "\$18.50"
      }
    },
    "dessert_crepes": {
      "Gourmande": {
        "description": "Hazelnut-Chocolate Spread, Whipped Cream",
        "price": "\$10.95"
      },
      "Banane": {
        "description": "Banana, Caramel Beurre Salé",
        "price": "\$10.95"
      },
      "Melba": {
        "description": "Peach, Red Berries Sauce, Almonds",
        "price": "\$10.95"
      },
      "Poire": {
        "description": "Pear, Chocolate Ganache, Whipped Cream",
        "price": "\$10.95"
      },
      "Pomme": {
        "description": "Caramelized Apples, Caramel Beurre Salé",
        "price": "\$10.95"
      },
      "add_ons": {
        "Whipped Cream, Ice Cream, Sauce": {
          "price": "\$3.50"
        },
        "Add a Shot to Any Crêpe": {
          "description": "Grand Marnier, Rhum, or Calvados",
          "price": "\$8.75"
        }
      }
    },
    "beverages": {
      "cidres": {
        "Brut": {
          "bottle": "\$29.00",
          "glass": "\$6.75"
        },
        "Demi Sec": {
          "bottle": "\$29.00",
          "glass": "\$6.75"
        },
        "Doux": {
          "bottle": "\$29.00",
          "glass": "\$6.75"
        },
        "Rose": {
          "bottle": "\$40.00",
          "glass": "\$7.50"
        }
      },
      "wines": {
        "Chardonnay": {
          "bottle": "\$36.95",
          "glass": "\$7.95"
        },
        "Carbernet Sauvignon": {
          "bottle": "\$36.95",
          "glass": "\$7.95"
        },
        "Merlot": {
          "bottle": "\$36.95",
          "glass": "\$7.95"
        },
        "Rosé de Provence": {
          "bottle": "\$69.50",
          "glass": "\$14.95"
        }
      },
      "miscellaneous": {
        "Biere Kronenbourg": {
          "description": "Beer",
          "price": "\$9.95"
        },
        "Champagne Malard": {
          "price": "\$21.95"
        },
        "Mimosa": {
          "price": "\$12.50"
        },
        "French Martini": {
          "price": "\$16.75"
        }
      },
      "soft_drinks": {
        "Evian": {
          "size": "750mL",
          "price": "\$9.95"
        },
        "Jus de Pomme": {
          "description": "Apple Juice",
          "price": "\$5.00"
        },
        "Limonade": {
          "description": "French Sparkling Limonade",
          "price": "\$6.95"
        }
      },
      "hot_beverages": {
        "Espresso": {
          "price": "\$4.75"
        },
        "Cappuccino": {
          "price": "\$5.25"
        },
        "Thé": {
          "description": "Tea",
          "price": "\$4.50"
        },
        "Café": {
          "description": "Coffee",
          "price": "\$4.25"
        }
      }
    }
  }
}

{
  "restaurant": {
    "name": "Yorkshire County Fish Shop",
    "location": "EPCOT, World Showcase",
    "type": "Quick Service Kiosk",
    "meal_periods": ["Lunch", "Dinner"]
  },
  "menu": {
    "entrees": {
      "Beer-battered Fish and Chips": "\$13.49"
    },
    "snacks": {
      "Cuties® Mandarin 3-pack": "\$4.19",
      "Chips": "\$4.49"
    },
    "beverages": {
      "non_alcoholic": {
        "Assorted Fountain Beverages (Coca-Cola® Offerings)": "\$4.49",
        "DASANI® Bottled Water": "\$3.75",
        "Freshly Brewed Joffrey's Coffee™ Regular": "\$3.79",
        "Twinings® English Breakfast Tea": "\$3.79"
      },
      "alcoholic": {
        "Bombardier Amber - United Kingdom": {
          "size": "20-oz Draft",
          "description": "A fruity aroma and rich malty taste provide a crisp, mouth-watering beer",
          "price": "\$11.25"
        },
        "Harp Lager - Ireland": {
          "size": "20-oz Draft",
          "description": "This classic Irish Pale Lager has a pleasant buttery-sweet malt aroma, crisp and dry, with a smooth finish",
          "price": null
        }
      }
    }
  }
}

]



''';


