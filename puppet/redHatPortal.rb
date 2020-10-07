require 'openssl'
require 'base64'
require 'io/console'

key = ''
iv = ''
username = ''
password = ''

key = Base64.decode64(ENV['lincolmlabs_vagrant_key']).strip
iv = Base64.decode64(ENV['lincolmlabs_vagrant_iv']).strip

print "RedHat Portal Login\n"
print 'Username: '
username = STDIN.gets.chomp
print 'Password: '
password = STDIN.noecho(&:gets).chomp
print ""

decipher = OpenSSL::Cipher.new("AES-256-CBC")
decipher.padding = 1
decipher.encrypt
decipher.key = key
decipher.iv  = iv
encrypted = Base64.encode64(decipher.update("rhUser = \"#{username}\"\nrhPwd = \"#{password}\"") + decipher.final)
out_file = File.new('.rhuser', 'w')
out_file.puts(encrypted)
out_file.close