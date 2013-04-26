class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :uid
      t.string :url
      t.string :image
      t.string :avatar

      t.timestamps
    end
  end
end
