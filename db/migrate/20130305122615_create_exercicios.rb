class CreateExercicios < ActiveRecord::Migration
  def change
    create_table :exercicios do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
