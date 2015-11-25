class CreateContactMessages < ActiveRecord::Migration
  def change
    create_table :contact_messages do |t|
      t.text 			:name
      t.text 			:company
      t.text 			:email
      t.text 			:message

      t.timestamps null: false
    end
  end
end
