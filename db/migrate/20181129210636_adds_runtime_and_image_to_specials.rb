class AddsRuntimeAndImageToSpecials < ActiveRecord::Migration[5.2]
  def change
    add_column :specials, :runtime, :integer
    add_column :specials, :thumbnail, :string
  end
end
