class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :photo
      t.string :datenaissance
      t.string :lieu
      t.string :siteinternet
      t.references :user

      t.timestamps
    end
    add_index :information, :user_id
  end
end
