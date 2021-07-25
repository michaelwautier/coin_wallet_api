class CreateWallets < ActiveRecord::Migration[6.1]
  def change
    create_table :wallets do |t|
      t.integer :value_usd
      t.float :value_btc
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
