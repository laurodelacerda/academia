class CreateRitmos < ActiveRecord::Migration
  def change
    create_table :ritmos do |t|
      t.integer :quantidade
      t.integer :repeticao
      t.references :treino
      t.references :exercicio

      t.timestamps
    end
    add_index :ritmos, :treino_id
    add_index :ritmos, :exercicio_id
  end
end
