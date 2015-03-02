json.array!(@schools) do |school|
  json.extract! school, :id, :name, :abbreviation, :motto, :principal, :email, :phones, :school_type_id, :province_id, :district_id, :township_id, :neighbourhood, :street, :building, :active
  json.url school_url(school, format: :json)
end
