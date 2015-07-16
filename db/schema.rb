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

ActiveRecord::Schema.define(version: 20150715101124) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "articles", force: :cascade do |t|
    t.string   "titre",       limit: 255
    t.string   "surtitre",    limit: 255
    t.string   "soustitre",   limit: 255
    t.text     "descriptif",  limit: 65535
    t.text     "contenu",     limit: 65535
    t.float    "popularite",  limit: 24
    t.integer  "rubrique_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "articles", ["rubrique_id"], name: "index_articles_on_rubrique_id", using: :btree

  create_table "evenements", force: :cascade do |t|
    t.string   "titre",      limit: 255
    t.string   "descriptif", limit: 255
    t.integer  "status",     limit: 4
    t.string   "lieu",       limit: 255
    t.float    "latitude",   limit: 24
    t.float    "longitude",  limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "rubriques", force: :cascade do |t|
    t.string   "titre",      limit: 255
    t.string   "descriptif", limit: 255
    t.integer  "status",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "spip_articles", primary_key: "id_article", force: :cascade do |t|
    t.text     "surtitre",       limit: 65535,                      null: false
    t.text     "titre",          limit: 65535,                      null: false
    t.text     "soustitre",      limit: 65535,                      null: false
    t.integer  "id_rubrique",    limit: 8,          default: 0,     null: false
    t.text     "descriptif",     limit: 65535,                      null: false
    t.text     "chapo",          limit: 16777215,                   null: false
    t.text     "texte",          limit: 4294967295,                 null: false
    t.text     "ps",             limit: 16777215,                   null: false
    t.datetime "date",                                              null: false
    t.string   "statut",         limit: 10,         default: "0",   null: false
    t.integer  "id_secteur",     limit: 8,          default: 0,     null: false
    t.datetime "maj",                                               null: false
    t.string   "export",         limit: 10,         default: "oui"
    t.datetime "date_redac",                                        null: false
    t.integer  "visites",        limit: 4,          default: 0,     null: false
    t.integer  "referers",       limit: 4,          default: 0,     null: false
    t.float    "popularite",     limit: 53,         default: 0.0,   null: false
    t.string   "accepter_forum", limit: 3,          default: "",    null: false
    t.datetime "date_modif",                                        null: false
    t.string   "lang",           limit: 10,         default: "",    null: false
    t.string   "langue_choisie", limit: 3,          default: "non"
    t.integer  "id_trad",        limit: 8,          default: 0,     null: false
    t.text     "extra",          limit: 4294967295
    t.integer  "id_version",     limit: 4,          default: 0,     null: false
    t.text     "nom_site",       limit: 255,                        null: false
    t.string   "url_site",       limit: 255,        default: "",    null: false
    t.string   "virtuel",        limit: 255,        default: "",    null: false
  end

  add_index "spip_articles", ["id_rubrique"], name: "id_rubrique", using: :btree
  add_index "spip_articles", ["id_secteur"], name: "id_secteur", using: :btree
  add_index "spip_articles", ["id_trad"], name: "id_trad", using: :btree
  add_index "spip_articles", ["lang"], name: "lang", using: :btree
  add_index "spip_articles", ["statut", "date"], name: "statut", using: :btree

  create_table "tmp_article", id: false, force: :cascade do |t|
    t.string   "titre",       limit: 50
    t.string   "surtitre",    limit: 50
    t.string   "soustitre",   limit: 50
    t.text     "descriptif",  limit: 65535
    t.text     "contenu",     limit: 65535
    t.float    "popularite",  limit: 24
    t.integer  "rubrique_id", limit: 4
    t.datetime "created"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",               limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "articles", "rubriques"
end
