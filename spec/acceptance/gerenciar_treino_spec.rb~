# coding: utf-8

require 'spec_helper'

feature 'gerenciar treino' do

  scenario 'incluir treino' do # , :js => true  do

	aluno = FactoryGirl.create(:aluno, :nome => 'Lauro')

    visit new_treino_path

    preencher_e_verificar_treino

    

  end

  scenario 'alterar treino' do #, :js => true  do

    aluno = FactoryGirl.create(:aluno, :nome => 'Lauro')
	treino = FactoryGirl.create(:treino, :aluno => aluno)

    visit edit_treino_path(treino)

    preencher_e_verificar_treino



  end

   scenario 'excluir treino' do #, :javascript => true  do

	aluno = FactoryGirl.create(:aluno, :nome => 'Lauro')       
	treino = FactoryGirl.create(:treino, :aluno => aluno)

    visit treinos_path

    click_link 'Excluir'

    

  end

   def preencher_e_verificar_treino

      fill_in 'Data Início',  :with => "05/03/2013"
      fill_in 'Objetivo',  :with => "Hipertrofia"	
 
	  select 'Lauro', :on => 'Aluno'

      click_button 'Salvar'

      page.should have_content 'Data Início: 05/03/2013'
      page.should have_content 'Objetivo: Hipertrofia'
      page.should have_content 'Aluno: Lauro'

   end
end
