class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :steamid
      t.string :nome
      t.string :nickname
      t.string :image
      t.string :profile
      t.string :status

      t.timestamps null: false
    end
  end
end
