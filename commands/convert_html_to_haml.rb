require 'ruble'

command 'Convert HTML to HAML' do |cmd|
  cmd.output = :replace_selection
  cmd.input = :none
  cmd.invoke =<<-EOF
ruby -e "require 'rubygems'; gem 'haml'; require 'haml/html'; puts Haml::HTML.new(ENV['TM_SELECTED_TEXT']).render"
EOF
end
