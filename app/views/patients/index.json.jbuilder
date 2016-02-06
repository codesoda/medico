json.array!(@patients) do |patient|
  json.extract! patient, :id, :first_name, :last_name, :ur_number, :medicare, :credit_card, :notes
  json.url patient_url(patient, format: :json)
end
