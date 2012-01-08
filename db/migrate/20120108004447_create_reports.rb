class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :route_id
      t.date :report_date
      t.integer :draw
      t.integer :complaints

      t.timestamps
    end
    add_index :reports, [:route_id, :report_date]
  end
end
