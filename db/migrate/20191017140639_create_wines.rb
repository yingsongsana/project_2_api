class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :style
      t.string :variety
      t.string :producer
      t.string :appearance
      t.string :aroma
      t.string :tasting_notes
      t.string :memories

      t.timestamps
    end
  end
end
