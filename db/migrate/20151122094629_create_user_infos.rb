class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string  :user_id,   null: false, default: ""
      t.string  :name,      null: false, default: ""
      t.string  :address,   null: false, default: ""
      t.string  :gender,    null: false, default: ""
      t.integer :age,       null: false, default: 0
      t.string  :p_num,     null: false, default: ""

      t.timestamps null: false
    end
  end
end
