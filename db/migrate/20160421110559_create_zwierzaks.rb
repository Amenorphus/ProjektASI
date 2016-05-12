class CreateZwierzaks < ActiveRecord::Migration[5.0]
  def change
    create_table :zwierzaks do |t|
      t.string :imie
      t.string :gatunek
      t.string :rasa
      t.date :data_ur

      t.timestamps
    end
  end
end
