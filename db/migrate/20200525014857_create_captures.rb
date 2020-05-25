class CreateCaptures < ActiveRecord::Migration[6.0]
  def change
    create_table :captures, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :pokemon, null: false, foreign_key: true, type: :uuid
      t.timestamps
    end
  end
end
