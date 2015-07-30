json.extract! @rubrique, :id, :titre, :descriptif, :status, :created_at, :updated_at
json.array!(@rubrique.articles) do |article|
  json.extract! article, :id, :titre, :surtitre, :soustitre, :descriptif, :contenu, :popularite, :rubrique_id
  json.url article_url(article, format: :json)
end
