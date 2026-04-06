class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :title
      t.date :start
      t.date :end
      t.boolean :allday

      t.timestamps
    end
  end
end
