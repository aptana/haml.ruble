require 'ruble'

command 'Update Bundle' do |cmd|
  cmd.output = :show_as_html
  cmd.input = :selection
  cmd.invoke =<<-EOF
cd "$TM_BUNDLE_PATH"

echo "<pre>"
[ -d ".svn" ] && svn up
[ -d ".git" ] && git pull
[ ! -d .svn ] && [ ! -d .git ] && echo "You must install the bundle using Subversion or Git in order to update via this command."

echo "</pre>"
EOF
end
