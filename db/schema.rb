# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140603171624) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["confirmation_token"], name: "index_admins_on_confirmation_token", unique: true
  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  add_index "admins", ["unlock_token"], name: "index_admins_on_unlock_token", unique: true

  create_table "albums", force: true do |t|
    t.string   "title"
    t.string   "album_cover"
    t.integer  "album_type"
    t.boolean  "status"
    t.integer  "admin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "albums", ["admin_id"], name: "index_albums_on_admin_id"

  create_table "audios", force: true do |t|
    t.string   "title"
    t.string   "audio_file"
    t.integer  "album_id"
    t.integer  "admin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "audios", ["admin_id"], name: "index_audios_on_admin_id"
  add_index "audios", ["album_id"], name: "index_audios_on_album_id"

  create_table "chapters", force: true do |t|
    t.string   "title"
    t.integer  "admin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chapters", ["admin_id"], name: "index_chapters_on_admin_id"

  create_table "pages", force: true do |t|
    t.string   "page_text"
    t.string   "page_audio"
    t.integer  "chapter_id"
    t.integer  "admin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["admin_id"], name: "index_pages_on_admin_id"
  add_index "pages", ["chapter_id"], name: "index_pages_on_chapter_id"

  create_table "videos", force: true do |t|
    t.string   "title"
    t.string   "video_file"
    t.boolean  "status"
    t.integer  "admin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "videos", ["admin_id"], name: "index_videos_on_admin_id"

end
