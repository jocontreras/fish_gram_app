json.array! @events.each do |events|
    json.id events.id
    json.title events.title
    json.content events.content
    json.date events.created_at.strftime('%F %H:%M')
end
