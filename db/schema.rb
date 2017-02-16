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

ActiveRecord::Schema.define(version: 20170215181301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pagos", force: :cascade do |t|
    t.integer  "numero_tcd"
    t.string   "nombre_tdc"
    t.date     "fecha_vencimiento"
    t.integer  "codigo_seguridad"
    t.integer  "numero_coutas"
    t.integer  "id_usuario"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "polizas", force: :cascade do |t|
    t.string   "clase"
    t.integer  "subtipo"
    t.integer  "años"
    t.integer  "numero_pasajero"
    t.integer  "cilindraje"
    t.integer  "tonelada"
    t.integer  "id_usuario"
    t.integer  "id_pago"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "placa"
  end

  create_table "tarifas", force: :cascade do |t|
    t.integer  "codigo"
    t.string   "clase"
    t.string   "subtipo"
    t.string   "edad"
    t.float    "tasa_comercial"
    t.integer  "valor"
    t.integer  "contribucion"
    t.integer  "subtotal"
    t.integer  "tasa_runt"
    t.integer  "total"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.integer  "tipo_documento"
    t.integer  "numero"
    t.string   "telefono"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
