class CreateSlogs < ActiveRecord::Migration
  def change
    create_table :slogs do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
