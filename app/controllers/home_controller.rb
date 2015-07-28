# encoding: utf-8
class HomeController < ApplicationController
  def index
    @mouride_semaine = Article.where(:rubrique_id => 6).last
    @info_continu = Article.where(:rubrique_id => 7).limit(10)
    @a_la_une = Article.where(:rubrique_id => 1).limit(5)
  end
end
