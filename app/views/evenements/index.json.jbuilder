json.array!(@evenements) do |evenement|
  json.extract! evenement, :id, :titre, :descriptif, :status, :lieu, :latitude, :longitude
  json.url evenement_url(evenement, format: :json)
end
