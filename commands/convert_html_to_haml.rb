require 'ruble'

command 'Convert HTML to HAML' do |cmd|
  cmd.key_binding = 'OPTION+COMMAND+C'
  cmd.output = :replace_selection
  cmd.input = :selection
  cmd.invoke do |context|
    cmd_line = "ruby -e \"require 'rubygems'; gem 'haml'; require 'haml/html'; puts Haml::HTML.new(STDIN.read).render\""
    IO.popen(cmd_line, 'r+') do |io|
      io << ENV['TM_SELECTED_TEXT']
      io.close_write
      io.read
    end
  end
end
