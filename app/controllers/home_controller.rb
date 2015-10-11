# encoding: utf-8
class HomeController < ApplicationController
  require 'youtube_it'

  def index
    @mouride_semaine = Article.where(:rubrique_id => 6).last
    @depeche = Article.where(:rubrique_id => 2).limit(10)
    @info_continu = Article.where(:rubrique_id => 7).limit(10)
    @contrib = Article.where(:rubrique_id => 10).order("RANDOM()").first(5)
    @dossier = Article.where(:rubrique_id => 9).order("RANDOM()").first
    @a_la_une = Article.where(:rubrique_id => 1).limit(5)
    @pub = Article.where(:rubrique_id => 15).order("RANDOM()").first
    @sagess = Article.where(:rubrique_id => 11).order("RANDOM()").first(5)
    @a_savoir = Article.where(:rubrique_id => 5).order("RANDOM()").first(5)
    @events = Evenement.where("date >= ?", Date.today ).order("date").first(5)


    #Connexion client à la chaine youtube
    #client = YouTubeIt::Client.new(username: "youtube_username", password: "youtube_password", dev_key: "AIzaSyCg9GJiL5JmDO-BHSTRPH9_7yS7CetbYnY")


  end
end