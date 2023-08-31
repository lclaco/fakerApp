class AddYeastTypeToBeer < ActiveRecord::Migration[7.0]
  def change
    add_column :beers, :yeastType, :string
  end
end
