# encoding: utf-8
class HomeController < ApplicationController
  def index
    @mouride_semaine = Article.where(:rubrique_id => 6).last
    @info_continu = Article.where(:rubrique_id => 7).limit(10)
  end
end
