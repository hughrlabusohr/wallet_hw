json.array!(@monetary_activities) do |monetary_activity|
  json.extract! monetary_activity, :id, :spent_on, :name, :amount
  json.url monetary_activity_url(monetary_activity, format: :json)
end
