require 'ruble'

command 'Convert HTML to HAML' do |cmd|
  cmd.output = :replace_selection
  cmd.input = :selection
  cmd.invoke =<<-EOF
export RUBYLIB="$TM_BUNDLE_SUPPORT/vendor/rcodetools/lib${RUBYLIB:+:$RUBYLIB}"
export TM_RUBY=$(which "${TM_RUBY:-ruby}")

"${TM_RUBY}" -e "require 'rubygems'; gem 'haml'; require 'haml/html'; puts Haml::HTML.new(ENV['TM_SELECTED_TEXT']).render"
EOF
end
