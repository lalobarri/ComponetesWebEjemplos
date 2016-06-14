class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :eamil
      t.string :password_digest
      t.string :token_digest

      t.timestamps null: false
    end
    add_index :users, :eamil
  end
end
