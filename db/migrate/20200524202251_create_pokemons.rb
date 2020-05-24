class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons, id: :uuid do |t|
      t.integer :pokedex_number, null: false
      t.string :name, null: false
      t.string :japanese_name, null: false
      t.string :image, null: true
      t.float :weight_kg, null: false
      t.timestamps
    end
  end
end
