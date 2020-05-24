require 'csv'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

pokemon = CSV.read('./data/pokemon.csv', headers: true).map do |row|
  row.to_h.slice("pokedex_number", "name", "japanese_name", "weight_kg")
end
ActiveRecord::Base.transaction do
  pokemon.each do |pokemon|
    pp pokemon unless pokemon["weight_kg"]
    Pokemon.create(pokemon)
  end
end
