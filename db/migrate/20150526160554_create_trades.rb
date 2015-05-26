class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :usuario_id
      t.string :itemid
      t.string :tradeid
      t.string :status
      t.decimal :preco
      t.text :obs
      t.boolean :destaque
      t.string :name
      t.string :image
      t.string :quality
      t.string :exterior
      t.string :rarity

      t.timestamps null: false
    end
  end
end
