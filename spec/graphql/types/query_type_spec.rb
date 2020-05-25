# spec/graphql/types/query_type_spec.rb
require "rails_helper"

RSpec.describe Types::QueryType do
  describe "items" do
    let!(:pokemon) { FactoryBot.create_list(:pokemon, 2) }

    let(:query) do
      %(query {
        pokemon {
          name
        }
      })
    end

    subject(:result) do
      PokerailsSchema.execute(query).as_json
    end

    it "returns all pokemon" do
      expect(result.dig("data", "pokemon")).to match_array(
        pokemon.map { |pokemon| { "name" => pokemon.name } }
      )
    end
  end
end
