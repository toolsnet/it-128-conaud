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

ActiveRecord::Schema.define(version: 2018_09_11_153108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "autoridads", primary_key: "id_aut", id: :serial, force: :cascade do |t|
    t.integer "id_tip_doc"
    t.integer "num_doc_aut"
    t.string "pri_nom_aut", limit: 30
    t.string "seg_nom_aut", limit: 30
    t.string "pri_ape_aut", limit: 30
    t.string "seg_ape_aut", limit: 30
    t.string "usu_aut", limit: 30
    t.string "pas_aut", limit: 30
  end

    create_table "denunciantes", primary_key: "id_usu_den", id: :serial, force: :cascade do |t|
    t.integer "id_tip_doc"
    t.string "num_doc_den", limit: 50
    t.date "fec_exp_doc_den"
    t.date "fec_nac_den"
    t.string "pri_nom_den", limit: 30
    t.string "seg_nom_den", limit: 30
    t.string "pri_ape_den", limit: 30
    t.string "seg_ape_den", limit: 30
    t.string "tel_den", limit: 30
    t.string "dir_den", limit: 200
    t.string "push_den", limit: 30
    t.string "ema_den", limit: 30
  end

    create_table "denuncias", primary_key: "id_den", id: :serial, force: :cascade do |t|
    t.integer "id_usu_den"
    t.decimal "lat_den"
    t.decimal "lon_den"
    t.string "ima_fue", limit: 200
    t.string "aud_rep", limit: 200
    t.decimal "aud_niv"
    t.date "fec_den"
    t.time "hor_den"
  end

  create_table "estados", primary_key: "id_est_den", id: :serial, force: :cascade do |t|
    t.string "nom_est", limit: 20
  end

  create_table "seguimientos", primary_key: "id_seg", id: :serial, force: :cascade do |t|
    t.integer "id_den"
    t.integer "id_aut"
    t.integer "id_est_den"
    t.string "des_seg", limit: 200
    t.date "fec_seg"
    t.time "hor_seg"
  end

  create_table "tip_docs", primary_key: "id_tip_doc", id: :serial, force: :cascade do |t|
    t.string "nom_tip_doc", limit: 20
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "autoridads", "tip_docs", column: "id_tip_doc", primary_key: "id_tip_doc", name: "autoridad_id_tip_doc_fkey"
  add_foreign_key "denunciantes", "tip_docs", column: "id_tip_doc", primary_key: "id_tip_doc", name: "denunciante_id_tip_doc_fkey"
  add_foreign_key "denuncias", "denunciantes", column: "id_usu_den", primary_key: "id_usu_den", name: "denuncias_id_usu_den_fkey"
  add_foreign_key "seguimientos", "autoridads", column: "id_aut", primary_key: "id_aut", name: "seguimientos_id_aut_fkey"
  add_foreign_key "seguimientos", "denuncias", column: "id_den", primary_key: "id_den", name: "seguimientos_id_den_fkey"
  add_foreign_key "seguimientos", "estados", column: "id_est_den", primary_key: "id_est_den", name: "seguimientos_id_est_den_fkey"
end
