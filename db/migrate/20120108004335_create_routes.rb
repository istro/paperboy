class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :id, :primary_key => true
      t.integer :dealer_id
      t.integer :pay_scale
      t.integer :comp_allowance
      t.integer :bonus

      t.timestamps
    end
  end
end
