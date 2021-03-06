# Want to make a nested data structure that will tell of the members of the elite four in the game Pokemon Crystal. 

#For the sake of including a boolean value as one of the values of one of keys in one of our hashes, let's assume that this hash is being used by someone who is completing a challenge run of Pokemon Crystal where they only use Pikachu.
# This means that the user would be interested in which Pokemon are weak to electric type attacks or not (hence calling for a true/false value)

# Data Structure Level 0 (Outermost): Hash called pokemon_crystal_elite4
pokemon_crystal_elite4 = {

# Key values of pokemon_crystal_elite4 are to be elite1, elite2, elite3, elite4 (in that order)

# Data Structure Level 1: values of keys of pokemon_crystal_elite4 will be hashes
  
  elite1: {

  # Desired keys and data type of respective values to store in each hash in Level 1
    # key0 - name
    # value0 - a string

    name:
      "Will",

    # key1 - specialty type
    # value1 - a string

    specialty_type:
      "psychic",

    # key2 - number of Pokemon
    # value2 - an integer

    numb_of_pokemon:
      5,

    # key3 - Pokemon
    # value3 - an array

        # Data Structure Level 2: value of key3 (Pokemon) will be an array

    pokemon:
      [

      # Data Structure Level 3: each array index will be a hash 

        {

        # Desired keys and values to store in each hash in Level 3
          #key0 - name
          #value0 - a string

          name:
            "Xatu",

          #key1 - level
          #value1 - an integer

          level:
            40,

          #key2 - type(s)
          #value2 - a string

          type:
            "psychic/flying",

          #key3 - moveset
          #value3 - an array

          moveset:
            [

            # Data Structure Level 4: value of key3 (moveset) will be an array
              # each array index will be a string

              "Quick Attack",
              "Future Sight",
              "Confuse Ray",
              "Psychic"

            ], ## indicates end of array for moveset key value

          #key4 - weak to lightning?
          # value4 - a boolean

          weak_to_lightning:
            true

        }, ## indicates end of hash for index0 of pokemon array

        {

          name:
            "Jynx",

          level:
            41,

          type:
            "ice/psychic",

          moveset:
            [

              "Double Slap",
              "Lovely Kiss",
              "Ice Punch",
              "Psychic"

            ], ## indicates end of array for moveset key value

          weak_to_lightning:
            false

        }, ## indicates end of hash for index1 of pokemon array

        {

          name:
            "Exeggutor",

          level:
            41,

          type:
            "grass/psychic",

          moveset:
            [

              "Reflect",
              "Leech Seed",
              "Egg Bomb",
              "Psychic"

            ], ## indicates end of array for moveset key value

          weak_to_lightning:
            false

        }, ## indicates end of hash for index2 of pokemon array

        {

          name:
            "Slowbro",

          level:
            41,

          type:
            "water/psychic",

          moveset:
            [

              "Curse",
              "Amnesia",
              "Body Slam",
              "Psychic"

            ], ## indicates end of array for moveset key value

          weak_to_lightning:
            true

        }, ## indicates end of hash for index3 of pokemon array

        {

          name:
            "Xatu",

          level:
            42,

          type:
            "psychic/flying",

          moveset:
            [

              "Quick Attack",
              "Future Sight",
              "Confuse Ray",
              "Psychic"

            ], ## indicates end of array for moveset key value

          weak_to_lightning:
            true

        }, ## indicates end of hash for index4 of pokemon array

      ], ## indicates end of array for pokemon key value

    # key4 - reward
    # value4 - an integer

    reward:
      4200

  }, ## indicates end of hash for elite1 key value

  elite2: {

      name:
        "Koga",

      specialty_type:
        "poison",

      numb_of_pokemon:
        5,

      pokemon:
        [

          {

            name:
            "Ariados",

           level:
              40,

           type:
              "bug/poison",

           moveset:
             [

              "Double Team",
              "Spider Web",
              "Baton Pass",
              "Giga Drain"

             ], ## indicates end of array for moveset key value

           weak_to_lightning:
              false

          }, ## indicates end of hash for index0 of pokemon array

          {

            name:
            "Venomoth",

           level:
              41,

           type:
              "bug/poison",

           moveset:
             [

              "Supersonic",
              "Gust",
              "Psychic",
              "Toxic"

             ], ## indicates end of array for moveset key value

           weak_to_lightning:
              false

          }, ## indicates end of hash for index1 of pokemon array

          {

            name:
            "Forretress",

           level:
              43,

           type:
              "bug/steel",

           moveset:
             [

              "Protect",
              "Swift",
              "Explosion",
              "Spikes"

             ], ## indicates end of array for moveset key value

           weak_to_lightning:
              false

          }, ## indicates end of hash for index2 of pokemon array

          {

            name:
            "Muk",

           level:
              42,

           type:
              "poison",

           moveset:
             [

              "Minimize",
              "Acid Armor",
              "Sludge Bomb",
              "Toxic"

             ], ## indicates end of array for moveset key value

           weak_to_lightning:
              false

          }, ## indicates end of hash for index3 of pokemon array

          {

            name:
            "Crobat",

           level:
              44,

           type:
              "poison/flying",

           moveset:
             [

              "Double Team",
              "Quick Attack",
              "Wing Attack",
              "Toxic"

             ], ## indicates end of array for moveset key value

           weak_to_lightning:
              true

          } ## indicates end of hash for index4 of pokemon array

        ], ## indicates end of array for pokemon key value

      reward:
        4400

  }, ## indicates end of hash for elite2 key value

  elite3: {

      name:
        "Bruno",

      specialty_type:
        "fighting",

      numb_of_pokemon:
        5,

      pokemon:
        [

          {

            name:
            "Hitmontop",

           level:
              42,

           type:
              "fighting",

           moveset:
             [

              "Pursuit",
              "Quick Attack",
              "Dig",
              "Detect"

             ], ## indicates end of array for moveset key value

           weak_to_lightning:
              false

          }, ## indicates end of hash for index0 of pokemon array

          {

            name:
            "Hitmonlee",

           level:
              42,

           type:
              "fighting",

           moveset:
             [

              "Swagger",
              "Double Kick",
              "Hi Jump Kick",
              "Foresight"

             ], ## indicates end of array for moveset key value

           weak_to_lightning:
              false

          }, ## indicates end of hash for index1 of pokemon array

          {

            name:
            "Hitmonchan",

           level:
              42,

           type:
              "fighting",

           moveset:
             [

              "Thunderpunch",
              "Fire Punch",
              "Ice Punch",
              "Mach Punch"

             ], ## indicates end of array for moveset key value

           weak_to_lightning:
              false

          }, ## indicates end of hash for index2 of pokemon array

          {

            name:
            "Onix",

           level:
              43,

           type:
              "rock/ground",

           moveset:
             [

              "Bind",
              "Earthquake",
              "Sandstorm",
              "Rock Slide"

             ], ## indicates end of array for moveset key value

           weak_to_lightning:
              false

          }, ## indicates end of hash for index3 of pokemon array

          {

            name:
            "Machamp",

           level:
              46,

           type:
              "fighting",

           moveset:
             [

              "Rock Slide",
              "Foresight",
              "Vital Throw",
              "Cross Chop"

             ], ## indicates end of array for moveset key value

           weak_to_lightning:
              false

          } ## indicates end of hash for index4 of pokemon array

        ], ## indicates end of array for pokemon key value

      reward:
        4600


  }, ## indicates end of hash for elite3 key value

  elite4: {

      name:
        "Karen",

      specialty_type:
        "dark",

      numb_of_pokemon:
        5,

      pokemon:
        [

          {

            name:
            "Umbreon",

           level:
              42,

           type:
              "dark",

           moveset:
             [

              "Sand-Attack",
              "Confuse Ray",
              "Faint Attack",
              "Mean Look"

             ], ## indicates end of array for moveset key value

           weak_to_lightning:
              false

          }, ## indicates end of hash for index0 of pokemon array

          {

            name:
            "Vileplume",

           level:
              42,

           type:
              "grass/poison",

           moveset:
             [

              "Stun Spore",
              "Acid",
              "Moonlight",
              "Petal Dance"

             ], ## indicates end of array for moveset key value

           weak_to_lightning:
              true

          }, ## indicates end of hash for index1 of pokemon array

          {

            name:
            "Gengar",

           level:
              45,

           type:
              "ghost/poison",

           moveset:
             [

              "Lick",
              "Spite",
              "Curse",
              "Destiny Bond"

             ], ## indicates end of array for moveset key value

           weak_to_lightning:
              false

          }, ## indicates end of hash for index2 of pokemon array

          {

            name:
            "Murkrow",

           level:
              44,

           type:
              "dark/flying",

           moveset:
             [

              "Quick Attack",
              "Whirlwind",
              "Pursuit",
              "Faint Attack"

             ], ## indicates end of array for moveset key value

           weak_to_lightning:
              true

          }, ## indicates end of hash for index3 of pokemon array

          {

            name:
            "Houndoom",

           level:
              47,

           type:
              "dark/fire",

           moveset:
             [

              "Roar",
              "Pursuit",
              "Flamethrower",
              "Crunch"

             ], ## indicates end of array for moveset key value

           weak_to_lightning:
              false

          } ## indicates end of hash for index4 of pokemon array

        ], ## indicates end of array for pokemon key value

      reward:
        4700

  }, ## indicates end of hash for elite4 key value

} ## indicates end of hash for pokemon_crystal_elite4


###################################################################################################################

# A demonstration of accessing deeply nested data from the structure.

# Example 1: Access just the information for elite4 #2

pokemon_crystal_elite4[:elite2]

# Example 2: Find out the name of elite4 #4

pokemon_crystal_elite4[:elite4][:name]

# Example 3: Upcase the specialty_type of elite4 #3 in the hash

pokemon_crystal_elite4[:elite3][:specialty_type].upcase!

# Example 4: check if the # of pokemon key matches with the array length in the pokemon key value for elite4 #1

pokemon_crystal_elite4[:elite1][:numb_of_pokemon] == pokemon_crystal_elite4[:elite1][:pokemon].length

# Example 5: Access the keys of the hash that represents elite4 #2’s second pokemon

pokemon_crystal_elite4[:elite2][:pokemon][2].keys

# Example 6: access just the second key of the hash that represent elite4 #2’s second pokemon

pokemon_crystal_elite4[:elite2][:pokemon][2].keys[2]

# Example 7: list all of the names of elite4 #3’s pokemon

pokemon_crystal_elite4[:elite3][:pokemon].each do |index|
  puts index.values[0]
end

# Example 8: change the name of Hitmonchan’s first move from “Thunderpunch” to “Thunder Punch”

pokemon_crystal_elite4[:elite3][:pokemon][2].values[3][0] = “Thunder Punch”

