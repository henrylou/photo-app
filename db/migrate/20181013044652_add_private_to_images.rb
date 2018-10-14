class AddPrivateToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :private, :boolean, default: false
  end
end
