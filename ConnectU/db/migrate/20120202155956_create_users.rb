class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :prenom
      t.string :nom
      t.string :mail
      t.string :password_digest
      t.string :isvisible

      t.timestamps
    end
  end
end
