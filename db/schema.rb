# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_02_05_093817) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kg_games", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kg_players", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.string "target"
    t.string "kill_mean"
    t.string "state", default: "alive"
    t.integer "number_of_kills"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "kg_game_id", null: false
    t.bigint "kill_mean_id"
    t.index ["kg_game_id"], name: "index_kg_players_on_kg_game_id"
  end

  create_table "kill_means", force: :cascade do |t|
    t.string "name"
    t.string "objective"
    t.string "action_zone"
    t.string "weapon"
    t.string "flavor_test"
    t.integer "difficulty"
    t.string "card_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "kg_players", "kg_games"
end
