# Want to make a nested data structure that will tell of the members of the elite four in the game Pokemon Crystal. 

#For the sake of including a boolean value as one of the values of one of keys in one of our hashes, let's assume that this hash is being used by someone who is completing a challenge run of Pokemon Crystal where they only use Pikachu.
# This means that the user would be interested in which Pokemon are weak to electric type attacks or not (hence calling for a true/false value)

# Data Structure Level 0 (Outermost): Hash called pokemon_crystal_elite4
pokemon_crystal_elite4 = {

# Key values of pokemon_crystal_elite4 are to be elite1, elite2, elite3, elite4, champ (in that order)

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

    pokemon:
      [

      # Data Structure Level 2: value of key3 (Pokemon) will be an array

      # Data Structure Level 3: each array index will be a hash 

        # Desired keys and values to store in each hash in Level 3
          #key0 - name
          #value0 - a string

          #key1 - level
          #value1 - an integer

          #key2 - type(s)
          #value2 - a string

          #key3 - moveset
          #value3 - an array

            # Data Structure Level 4: value of key3 (moveset) will be an array
              # each array index will be a string

          #key4 - weak to lightning?
          # value4 - a boolean

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
        [],

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

        ], ## indicates end of array for pokemon key value

      reward:
        4700

  }, ## indicates end of hash for elite4 key value

  champ: {

      name:
        "Lance",

      specialty_type:
        "dragon",

      numb_of_pokemon:
        6,

      pokemon:
        [

        ], ## indicates end of array for pokemon key value

      reward:
        5000

  } ## indicates end of hash for champ key value

} ## indicates end of hash for pokemon_crystal_elite4