json.array!(@horses) do |horse|
  json.extract! horse, :id, :name, :gender, :father, :mother, :reward, :owner, :stable, :number
  json.url horse_url(horse, format: :json)
end
