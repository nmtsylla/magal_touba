json.array!(@rubriques) do |rubrique|
  json.extract! rubrique, :id, :titre, :descriptif, :status
  json.url rubrique_url(rubrique, format: :json)
end
