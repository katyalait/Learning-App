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

ActiveRecord::Schema.define(version: 20180403145333) do

  create_table "applications_foreground", primary_key: "_id", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "timestamp"
    t.string "device_id", limit: 36
    t.string "package_name", limit: 35
    t.string "application_name", limit: 21
    t.integer "is_system_app"
  end

  create_table "aware_device", primary_key: "_id", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "timestamp"
    t.string "device_id", limit: 36
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

  create_table "contexts", primary_key: "ID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "user_id", limit: 36
    t.integer "topic_id"
    t.bigint "start_time"
    t.bigint "end_time"
    t.decimal "latitude", precision: 10, scale: 8
    t.decimal "longitude", precision: 10, scale: 8
    t.integer "app_id"
    t.string "topics", limit: 100
    t.integer "percentage", limit: 1
    t.string "description", limit: 200
    t.integer "duration"
  end

  create_table "far_app_list", primary_key: "ID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "package_name", null: false
    t.string "application_name", null: false
  end

  create_table "learning_goals", primary_key: "ID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "user_id", limit: 36
    t.integer "topic_id"
    t.string "goal", limit: 120
    t.bigint "start_date"
    t.bigint "end_date"
    t.boolean "completed"
    t.string "apps", limit: 150
  end

  create_table "locations", primary_key: "ID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "timestamp"
    t.string "device_id", limit: 36
    t.decimal "double_latitude", precision: 10, scale: 8
    t.decimal "double_longitude", precision: 10, scale: 8
    t.decimal "double_bearing", precision: 14, scale: 11
    t.decimal "double_speed", precision: 14, scale: 13
    t.decimal "double_altitude", precision: 15, scale: 12
    t.string "provider", limit: 7
    t.decimal "accuracy", precision: 5, scale: 3
  end

  create_table "topic_list", primary_key: "ID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "topic_name", limit: 50
    t.integer "parent_topic"
    t.string "description", limit: 120
  end

  create_table "used_locations", primary_key: "ID", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
  end

  create_table "users", primary_key: "ID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "aware_device_id", null: false
    t.string "Username", limit: 20, null: false
    t.string "Role", limit: 12, null: false
    t.string "Hash", limit: 300, null: false
  end

  create_table "usertopics", primary_key: "ID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "user_id", limit: 36
    t.integer "topic_id"
  end

end
