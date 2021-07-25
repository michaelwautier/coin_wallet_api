class CreateCoins < ActiveRecord::Migration[6.1]
  def change
    create_table :coins do |t|
      t.string :symbol
      t.integer :price_usd
      t.float :price_btc
      t.references :wallet, null: false, foreign_key: true
      t.float :amount_owned

      t.timestamps
    end
  end
end
