class AddFieldsToListing < ActiveRecord::Migration
  def change
    add_column :listings, :name, :string
    add_column :listings, :start_bid, :decimal, :precision => 8, :scale => 2
    add_column :listings, :description, :text
  end
end
