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

ActiveRecord::Schema.define(version: 20150729125142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "titre"
    t.string   "surtitre"
    t.string   "soustitre"
    t.text     "descriptif"
    t.text     "contenu"
    t.float    "popularite"
    t.integer  "rubrique_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "slug"
    t.integer  "type_article"
    t.integer  "view_count"
    t.string   "image_a_la_une_file_name"
    t.string   "image_a_la_une_content_type"
    t.integer  "image_a_la_une_file_size"
    t.datetime "image_a_la_une_updated_at"
    t.integer  "status"
  end

  add_index "articles", ["rubrique_id"], name: "index_articles_on_rubrique_id", using: :btree
  add_index "articles", ["slug"], name: "index_articles_on_slug", unique: true, using: :btree

  create_table "evenements", force: :cascade do |t|
    t.string   "titre"
    t.string   "descriptif"
    t.integer  "status"
    t.string   "lieu"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "view_count"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "redactor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "redactor_assets", ["assetable_type", "assetable_id"], name: "idx_redactor_assetable", using: :btree
  add_index "redactor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_redactor_assetable_type", using: :btree

  create_table "rubriques", force: :cascade do |t|
    t.string   "titre"
    t.string   "descriptif"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  add_index "rubriques", ["slug"], name: "index_rubriques_on_slug", unique: true, using: :btree

  create_table "spip_articles", primary_key: "id_article", force: :cascade do |t|
    t.text     "surtitre",                                   null: false
    t.text     "titre",                                      null: false
    t.text     "soustitre",                                  null: false
    t.integer  "id_rubrique"
    t.text     "descriptif",                                 null: false
    t.text     "chapo",                                      null: false
    t.text     "texte",                                      null: false
    t.text     "ps",                                         null: false
    t.datetime "date"
    t.string   "statut",         limit: 10,  default: "0",   null: false
    t.integer  "id_secteur",                 default: 0,     null: false
    t.datetime "maj"
    t.string   "export",         limit: 10,  default: "oui"
    t.datetime "date_redac"
    t.integer  "visites",                    default: 0,     null: false
    t.integer  "referers",                   default: 0,     null: false
    t.float    "popularite"
    t.string   "accepter_forum", limit: 3,   default: "",    null: false
    t.datetime "date_modif"
    t.string   "lang",           limit: 10,  default: "",    null: false
    t.string   "langue_choisie", limit: 3,   default: "non"
    t.integer  "id_trad",                    default: 0,     null: false
    t.text     "extra"
    t.integer  "id_version"
    t.text     "nom_site",                                   null: false
    t.string   "url_site",       limit: 255, default: "",    null: false
    t.string   "virtuel",        limit: 255, default: "",    null: false
  end

  create_table "tmp_article", id: false, force: :cascade do |t|
    t.string   "titre",       limit: 50
    t.string   "surtitre",    limit: 50
    t.string   "soustitre",   limit: 50
    t.text     "descriptif"
    t.text     "contenu"
    t.float    "popularite"
    t.integer  "rubrique_id"
    t.datetime "created"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "articles", "rubriques"
end
