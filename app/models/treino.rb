class Treino < ActiveRecord::Base
  belongs_to :aluno
  attr_accessible :dataInicio, :objetivo, :aluno_id
end
