json.array!(@zwierzaks) do |zwierzak|
  json.extract! zwierzak, :id, :imie, :gatunek, :rasa, :data_ur
  json.url zwierzak_url(zwierzak, format: :json)
end
