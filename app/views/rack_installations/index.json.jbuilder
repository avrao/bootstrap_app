json.array!(@rack_installations) do |rack_installation|
  json.extract! rack_installation, :id, :title, :title_link, :owned_by, :purpose, :added_by, :added_on, :outdated
  json.url rack_installation_url(rack_installation, format: :json)
end
