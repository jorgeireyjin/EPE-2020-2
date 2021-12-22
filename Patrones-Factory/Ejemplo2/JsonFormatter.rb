class JsonFormatter
  def format(data)
    return "" if data.empty?

    data.to_json
  end
end