class AddImageUrlToChoices < ActiveRecord::Migration[6.1]
  def change
    add_column :choices, :image_url, :string
  end
end
