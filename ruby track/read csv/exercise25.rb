require "csv"

class Employee
  def read_csv_data(file)
    CSV.read(file, headers: true)
  end

  def extract_details(data)
    body = data.to_a[1..data.length].sort_by! { |row| row[2] }
  end

  def categorise_details(body)
    categorise_details = body.group_by { |row| row[2] }
    categorise_details.each do |key, value|
      value.sort_by! { |row| row[1] }
    end
  end

  def save_details(details)
    File.open("employee.txt", "w") do |file|
      details.each do |designation, value|
        file.puts "#{designation}#{"s" if details[designation].length > 1}"
        value.each { |detail| file.puts "#{detail[0]} (EmpId: #{detail[1]})" }
        file.puts
      end
    end
  end

  def get_details(file)
    data = read_csv_data(file)
    details = extract_details(data)
    grouped_details = categorise_details(details)
    save_details(grouped_details)
  end

end
employee = Employee.new
employee.get_details("employee.csv")


