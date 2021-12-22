require "./Formatter"
require "./CsvFormatter"
require "./JsonFormatter"
require "./TsvFormatter"

report_data = { foo_key: "foo", bar_key: "bar", baz_key: "baz" }
f = Formatter.for("tsv")
puts "#{  f.format(report_data) }"