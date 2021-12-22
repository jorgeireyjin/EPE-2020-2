class Formatter
  def self.for(type)
    case type
    when 'csv'
      CsvFormatter.new
    when 'json'
      JsonFormatter.new
    when 'tsv'
      TsvFormatter.new
    else
      raise 'Unsupported type of report'
    end
  end
end
