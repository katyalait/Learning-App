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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180320174448) do

  create_table "applications_foreground", primary_key: "_id", id: :integer, default: nil, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.bigint "timestamp"
    t.string "device_id", limit: 36, collation: "utf8_unicode_ci"
    t.string "package_name", limit: 35, collation: "utf8_unicode_ci"
    t.string "application_name", limit: 21, collation: "utf8_unicode_ci"
    t.integer "is_system_app"
  end

  create_table "aware_device", primary_key: "_id", id: :integer, default: nil, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.bigint "timestamp"
    t.string "device_id", limit: 36, collation: "utf8_unicode_ci"
    t.string "board", limit: 7
    t.string "brand", limit: 7
    t.string "device", limit: 5
    t.string "build_id", limit: 20
    t.string "hardware", limit: 4
    t.string "manufacturer", limit: 7
    t.string "model", limit: 8
    t.string "product", limit: 7
    t.string "serial", limit: 8
    t.string "release", limit: 5
    t.string "release_type", limit: 4
    t.integer "sdk"
    t.string "label", limit: 10
  end

  create_table "far_app_list", primary_key: "ID", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "package_name", null: false
    t.string "application_name", null: false
    t.index ["package_name"], name: "package_name", unique: true
  end

  create_table "far_learning_apps", primary_key: "ID", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "UserID", limit: 150, null: false
    t.integer "AppID", null: false
    t.integer "Learning", null: false
  end

  create_table "learning_topics", primary_key: "ID", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "UserID", limit: 150, null: false
    t.string "Topic", limit: 50, null: false
  end

  create_table "location_durations", primary_key: "ID", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "UserID", limit: 150, null: false
    t.string "Label", limit: 50, null: false
    t.datetime "StartTime", null: false
    t.datetime "EndTime", null: false
    t.decimal "Latitude", precision: 10, scale: 8, null: false
    t.decimal "Longitude", precision: 10, scale: 8, null: false
  end

  create_table "locations", primary_key: "_id", id: :integer, default: nil, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.bigint "timestamp"
    t.string "device_id", limit: 36
    t.decimal "double_latitude", precision: 10, scale: 8
    t.decimal "double_longitude", precision: 10, scale: 8
    t.decimal "double_bearing", precision: 14, scale: 11
    t.decimal "double_speed", precision: 14, scale: 13
    t.decimal "double_altitude", precision: 15, scale: 12
    t.string "provider", limit: 7
    t.decimal "accuracy", precision: 5, scale: 3
    t.string "label", limit: 50
  end

  create_table "plugin_survey1", primary_key: "_id", id: :integer, default: nil, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.bigint "timestamp"
    t.string "device_id", limit: 36
    t.integer "survey_id"
    t.integer "question_id"
    t.string "question", limit: 70
    t.string "answer", limit: 150
    t.string "trigger", limit: 13
    t.string "application", limit: 10
    t.bigint "duration"
    t.string "previous", limit: 57
    t.bigint "app_table_id"
  end

  create_table "tests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", primary_key: "ID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "aware_device_id", null: false
    t.string "Username", limit: 20, null: false
    t.string "Role", limit: 11, null: false
    t.string "Hash", limit: 300, null: false
  end

end
