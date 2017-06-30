class AddXpToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :xp, :bigint, default: 0
  end
end
