class CreateApis < ActiveRecord::Migration
  def change
    create_table :apis do |t|
      t.string :name
      t.string :company
      t.string :description
      t.string :website

      t.timestamps
    end
  end
end
