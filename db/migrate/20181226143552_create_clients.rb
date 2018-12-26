class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.text :name
      t.text :phone
      t.text :master
      t.text :datetime
      t.timestamps
    end
  end
end
