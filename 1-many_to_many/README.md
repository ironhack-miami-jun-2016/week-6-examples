Many To Many Associations
=========================

Many to many associations need an addional model to work.
I call it the _middle man_.
In the `Pokemon` and `Type` example, I called it `PokemonType`.
Here are the commands that I used to generate the models:


```bash
$ rails generate model  Pokemon            name:string        hp:integer       cp:integer
$ rails generate model  Type               name:string  weakness:string   stength:string

$ rails generate model  PokemonType  pokemon_id:integer  type_id:integer
```

See the final schema in [the `db/schema.rb`](db/schema.rb).


See the three models for the specific wiring:
- [`Pokemon` model](app/models/pokemon.rb)
- [`Type` model](app/models/type.rb)
- [`PokemonType` model](app/models/pokemon_type.rb)


Read more about many to many associations in Rails in the
[Rails Guide](http://guides.rubyonrails.org/association_basics.html#the-has-many-through-association).
