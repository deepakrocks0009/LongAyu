json.array!(@premises) do |premise|
  json.extract! premise, :id, :parking, :parking_description, :accessible_to_disabled, :accessible_to_disabled_description, :public_transport_access, :public_transport_access_description, :access_without_steps, :access_without_steps_description, :disabled_parking, :disabled_parking_description, :patient_bathroom, :patient_bathroom_description, :wireless_access, :wireless_access_description, :onsite_pharmacy, :onsite_pharmacy_description, :centre_id
  json.url premise_url(premise, format: :json)
end
