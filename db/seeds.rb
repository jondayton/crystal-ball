# Seeds from https://github.com/rails/jbuilder

files_to_use = [
  'best-ever-cookie-collection.com.txt',
  'chinese-fortune-cookie.com.txt',
  'fortunecookiemessage.com.txt',
  'joe-ks.com.txt'
]

fortunes = files_to_use.map do |file_name|
  file = File.read("db/sources/#{file_name}")
  file.each_line do |line|
    Fortune.create(message: line.chomp)
  end
end
