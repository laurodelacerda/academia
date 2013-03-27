# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :treino do
    dataInicio "MyString"
    objetivo "MyString"
    aluno nil
  end
end
