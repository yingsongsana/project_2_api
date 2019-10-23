class AddCountryToWines < ActiveRecord::Migration[5.2]
  def change
    add_column :wines, :country, :string
  end
end
