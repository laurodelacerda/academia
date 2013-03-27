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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130305132641) do

  create_table "alunos", :force => true do |t|
    t.string   "nome"
    t.integer  "idade"
    t.string   "sexo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exercicios", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ritmos", :force => true do |t|
    t.integer  "quantidade"
    t.integer  "repeticao"
    t.integer  "treino_id"
    t.integer  "exercicio_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "ritmos", ["exercicio_id"], :name => "index_ritmos_on_exercicio_id"
  add_index "ritmos", ["treino_id"], :name => "index_ritmos_on_treino_id"

  create_table "treinos", :force => true do |t|
    t.string   "dataInicio"
    t.string   "objetivo"
    t.integer  "aluno_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "treinos", ["aluno_id"], :name => "index_treinos_on_aluno_id"

end
