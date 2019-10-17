class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :style
      t.string :variety
      t.text :producer
      t.text :appearance
      t.text :aroma
      t.text :tasting_notes
      t.text :memories
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
