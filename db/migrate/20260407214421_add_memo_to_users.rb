class AddMemoToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :memo, :string
  end
end
