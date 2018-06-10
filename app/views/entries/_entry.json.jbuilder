json.extract! entry, :id, :nick, :email, :content, :created_at, :updated_at
json.url entry_url(entry, format: :json)
