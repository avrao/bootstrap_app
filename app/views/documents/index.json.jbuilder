json.array!(@documents) do |document|
  json.extract! document, :id, :title, :title_link, :owned_by, :purpose, :added_by, :added_on, :outdated
  json.url document_url(document, format: :json)
end
