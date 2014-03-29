class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
