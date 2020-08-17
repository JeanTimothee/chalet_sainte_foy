class AddNameToChalets < ActiveRecord::Migration[6.0]
  def change
    add_column :chalets, :name, :string
  end
end
