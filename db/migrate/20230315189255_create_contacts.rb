class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :fullname
      t.string :phone_number
      t.belongs_to :users, index: { unique: true }, foreign_key: true
      t.timestamps
    end
  end
end
