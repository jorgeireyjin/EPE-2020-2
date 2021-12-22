class CsvFormatter
  def format(data)
    return "" if data.empty?

    result = data.keys.join(",") + "\n"
    result += data.values.join(",") + "\n"
  end        
end