class CreateStatuts < ActiveRecord::Migration
  def change
    create_table :statuts do |t|
      t.string :body
      t.string :auteur
      t.references :user

      t.timestamps
    end
    add_index :statuts, :user_id
  end
end
