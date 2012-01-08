class CreateDealers < ActiveRecord::Migration
  def change
    create_table :dealers do |t|
      t.integer :id, :primary_key => true
      t.string :name
      t.string :email
      t.string :password
      t.integer :c_penalty

      t.timestamps
    end
  end
end
