

ActiveRecord::Schema.define(version: 20151218160141) do

  create_table "expense_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "gl_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.string   "cost"
    t.string   "location"
    t.text     "reason"
    t.string   "person_entertained"
    t.integer  "total_miles"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "occurrence_id"
    t.integer  "expense_type_id"
  end

  create_table "occurrences", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "occur"
  end

end
