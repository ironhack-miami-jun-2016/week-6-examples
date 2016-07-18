# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fire = Type.create(name: "Fire", weakness: "Water", strength: "Grass")
electric = Type.create(name: "Electric", weakness: "Ground", strength: "Water")
water = Type.create(name: "Water", weakness: "Electric", strength: "Fire")
grass = Type.create(name: "Grass", weakness: "Fire", strength: "Water")
normal = Type.create(name: "Normal", weakness: "Fighting", strength: nil)
flying = Type.create(name: "Flying", weakness: "Electric", strength: "Bug")


pikachu = Pokemon.create(name: "Pikachu", hp: 500, cp: 500)
charizard = Pokemon.create(name: "Charizard", hp: 1500, cp: 1500)
snorlax = Pokemon.create(name: "Snorlax", hp: 2500, cp: 2500)
blastoise = Pokemon.create(name: "Blastoise", hp: 1500, cp: 1500)
oddish = Pokemon.create(name: "Oddish", hp: 50, cp: 134)


# Types for Pikachu
PokemonType.create(pokemon_id: pikachu.id, type_id: electric.id)

# Types for Charizard
charizard.types.push( fire )
charizard.types.push( flying )

# Types for Snorlax
PokemonType.create(pokemon_id: snorlax.id, type_id: normal.id)

# Types for Blastoise
blastoise.types.push( water )

# Types for Oddish
grass.pokemons.push( oddish )

