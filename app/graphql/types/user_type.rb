module Types
  class UserType < Types::BaseObject
    field :name, String, null: false
    field :email, String, null: false
    field :pokemon, [PokemonType], null: false
  end
end
