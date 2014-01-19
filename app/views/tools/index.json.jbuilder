json.array!(@tools) do |tool|
  json.extract! tool, :id, :title, :title_link, :owned_by, :purpose, :added_by, :added_on, :outdated
  json.url tool_url(tool, format: :json)
end
