require 'ruble'

command 'Convert HTML to HAML' do |cmd|
  cmd.key_binding = 'OPTION+COMMAND+c'
  cmd.output = :replace_selection
  cmd.input = :selection
  cmd.invoke =<<-EOF
ruby -e "require 'rubygems'; gem 'haml'; require 'haml/html'; puts Haml::HTML.new(ENV['TM_SELECTED_TEXT']).render"
EOF
end
