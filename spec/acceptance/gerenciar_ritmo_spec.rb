# coding: utf-8

require 'spec_helper'

feature 'gerenciar ritmo ' do

  scenario 'incluir ritmo' do # , :js => true  do

    treino = FactoryGirl.create(:treino, :objetivo => 'Hipertrofia')
    exercicio = FactoryGirl.create(:exercicio, :descricao => 'Supino Reto')

    visit new_ritmo_path

    preencher_e_verificar_ritmo

    

  end

  scenario 'alterar ritmo' do #, :js => true  do

    treino = FactoryGirl.create(:treino, :objetivo => 'Hipertrofia')
    exercicio = FactoryGirl.create(:exercicio, :descricao => 'Supino Reto')
    ritmo = FactoryGirl.create(:ritmo, :treino => treino, :exercicio => exercicio)

    visit edit_ritmo_path(ritmo)

    preencher_e_verificar_ritmo



  end

   scenario 'excluir ritmo' do #, :javascript => true  do

	treino = FactoryGirl.create(:treino, :objetivo => 'Hipertrofia')
    exercicio = FactoryGirl.create(:exercicio, :descricao => 'Supino Reto')
	ritmo = FactoryGirl.create(:ritmo, :treino => treino, :exercicio => exercicio)

    visit ritmos_path

    click_link 'Excluir'

    

  end

   def preencher_e_verificar_ritmo

      fill_in 'Quantidade',  :with => "3"
      fill_in 'Repetição',  :with => "10"	
 
	  select 'Hipertrofia', :on => 'Objetivo'
	  select 'Supino Reto', :on => 'Descrição'

      click_button 'Salvar'

      page.should have_content 'Quantidade: 3'
      page.should have_content 'Repetição: 10'
      page.should have_content 'Objetivo: Hipertrofia'
      page.should have_content 'Descrição: Supino Reto'

   end
end
