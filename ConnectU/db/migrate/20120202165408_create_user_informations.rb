class CreateUserInformations < ActiveRecord::Migration
  def change
    create_table :user_informations do |t|
      t.string :photo
      t.string :datenaissance
      t.string :lieu
      t.string :siteinternet
      t.references :user

      t.timestamps
    end
    add_index :user_informations, :user_id
  end
end
