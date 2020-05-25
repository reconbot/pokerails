module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :pokemon, [Types::PokemonType], null: false, description: "All the Pokemon"
    def pokemon
      Pokemon.all
    end

    field :trainers, [Types::UserType], null: false, description: "All the Trainers"
    def trainers
      User.all
    end
  end
end
