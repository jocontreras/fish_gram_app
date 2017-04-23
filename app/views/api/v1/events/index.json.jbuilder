json.array! @events.each do |events|
    json.id events.id
    json.title events.title
    json.content events.content
end
