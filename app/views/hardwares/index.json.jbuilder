json.array!(@hardwares) do |hardware|
  json.extract! hardware, :id, :title, :title_link, :owned_by, :purpose, :added_by, :added_on, :outdated
  json.url hardware_url(hardware, format: :json)
end
