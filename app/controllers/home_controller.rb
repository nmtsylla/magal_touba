# encoding: utf-8
class HomeController < ApplicationController
  def index
    @mouride_semaine = Article.where(:rubrique_id => 6).last
    @info_continu = Article.where(:rubrique_id => 7).limit(10)
    @dossier = Article.where(:rubrique_id => 9).order("RANDOM()").first
    @a_la_une = Article.where(:rubrique_id => 1).limit(5)
    @pub = Article.where(:rubrique_id => 15).order("RANDOM()").first
    @sagess = Article.where(:rubrique_id => 11).order("RANDOM()").first
    @a_savoir = Article.where(:rubrique_id => 5).order("RANDOM()").first(3)
  end
end
