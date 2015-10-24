# encoding: utf-8
class HomeController < ApplicationController
  require 'youtube_it'
  http_basic_authenticate_with :name => "magal", :password => "Touba313" 


  def index
    @mouride_semaine = Article.where(:rubrique_id => 6).last
    @depeche = Article.where(:rubrique_id => 2).limit(5)
    @info_continu = Article.where(:rubrique_id => 7).limit(10)
    @contrib = Article.where(:rubrique_id => 10).order("RANDOM()").first(5)
    @dossier = Article.where(:rubrique_id => 9).order("RANDOM()").first
    @a_la_une = Article.where(:rubrique_id => 1).last(5)
    @pub = Article.where(:rubrique_id => 15).order("RANDOM()").first
    @sagess = Article.where(:rubrique_id => 11).order("RANDOM()").first(5)
    @a_savoir = Article.where(:rubrique_id => 5).order("RANDOM()").first(5)
    @events = Evenement.where("date >= ?", Date.today ).order("date").first(5)

  end
end
