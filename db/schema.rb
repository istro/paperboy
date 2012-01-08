# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120108004447) do

  create_table "dealers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.integer  "c_penalty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", :force => true do |t|
    t.string   "route_id"
    t.date     "report_date"
    t.integer  "draw"
    t.integer  "complaints"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reports", ["route_id", "report_date"], :name => "index_reports_on_route_id_and_report_date"

  create_table "routes", :force => true do |t|
    t.integer  "dealer_id"
    t.integer  "pay_scale"
    t.integer  "comp_allowance"
    t.integer  "bonus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
