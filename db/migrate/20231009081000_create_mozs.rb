class CreateMozs < ActiveRecord::Migration[6.1]
  def change
    create_table :mozs do |t|
      t.integer :mozuku
      t.integer :nozomi

      t.timestamps
    end
  end
end
