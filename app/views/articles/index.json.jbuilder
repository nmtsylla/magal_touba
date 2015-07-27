json.array!(@articles) do |article|
  json.extract! article, :id, :titre, :surtitre, :soustitre, :descriptif, :contenu, :popularite, :rubrique_id
  json.rubrique do
    json.titre article.rubrique.titre
  end
  json.url article_url(article, format: :json)
end
