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

ActiveRecord::Schema.define(version: 20160516141442) do

  create_table "avis", force: :cascade do |t|
    t.text     "date"
    t.text     "commentaire"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "conducteurs", force: :cascade do |t|
    t.integer  "idMembre"
    t.text     "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "membres", force: :cascade do |t|
    t.text     "nom"
    t.text     "prenom"
    t.integer  "age"
    t.string   "mdp"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "id_membre"
    t.integer  "place_res"
    t.integer  "id_trajet"
    t.string   "commentaire"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "trajets", force: :cascade do |t|
    t.integer  "id_conducteur"
    t.integer  "id_voiture"
    t.integer  "id_avis"
    t.text     "id_ville_source"
    t.text     "id_ville_destination"
    t.text     "date"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "prix"
    t.integer  "nbr_place"
  end

  create_table "villes", force: :cascade do |t|
    t.string   "nom_ville"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voitures", force: :cascade do |t|
    t.integer  "nb_place"
    t.string   "marque"
    t.string   "couleur"
    t.string   "matricule"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
