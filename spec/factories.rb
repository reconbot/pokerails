FactoryBot.define do
  factory :user do
    # Use sequence to make sure that the value is unique
    email { Faker::Internet.unique.email }
    name { Faker::Name.unique.name }

    trait :with_pokemon do
      after(:create) do |user, evaluator|
        create :pokemon, trainers: [user]
      end
    end
  end

  factory :pokemon do
    sequence(:pokedex_number)
    name { "Pokemon #{Faker::FunnyName.unique.name}" }
    japanese_name { name }
    weight_kg { Faker::Number.decimal(l_digits: 2) }


    trait :with_trainer do
      after(:create) do |pokemon, evaluator|
        create :user, pokemon: [pokemon]
      end
    end
  end
end
