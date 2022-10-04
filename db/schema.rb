
ActiveRecord::Schema[7.0].define(version: 2022_10_03_185147) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "markers", force: :cascade do |t|
    t.string "marker"
    t.string "platform"
    t.string "frequency"
    t.string "livemetrics"
    t.string "customerimpact"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
