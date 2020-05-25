module Types
  class PokemonType < Types::BaseObject
    field :id, ID, null: false
    field :pokedex_number, Int, null: false
    field :name, String, null: false
    field :japanese_name, String, null: false
    field :image, String, null: true
    field :weight_kg, Float, null: false
    field :trainers, [UserType], null: false
  end
end
