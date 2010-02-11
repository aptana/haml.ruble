snippet 'Erb' do |s|
  s.trigger = 'filter'
  s.scope = 'text.haml'
  s.expansion = ':erb
	$0'
end

snippet 'Escaped' do |s|
  s.trigger = 'filter'
  s.scope = 'text.haml'
  s.expansion = ':escaped
	$0'
end

snippet 'HTML - en-US' do |s|
  s.trigger = 'html'
  s.scope = 'text.haml'
  s.expansion = '%html{ :xmlns => "http://www.w3.org/1999/xhtml", :lang => "en", \'xml:lang\' => "en" }'
end

snippet 'IE Conditional' do |s|
  s.trigger = 'ie'
  s.scope = 'text.haml'
  s.expansion = '/[if ${1:lte }IE${3: ${2:version}}]
	$0'
end

snippet 'Insert Tag' do |s|
  # FIXME No tab trigger, probably needs to become command
  s.key_binding = 'CONTROL+M2+<'
  s.scope = 'text.haml'
  s.expansion = '%${1:p}'
end

snippet 'Javascript' do |s|
  s.trigger = 'filter'
  s.scope = 'text.haml'
  s.expansion = ':javascript
	$0'
end

snippet 'Markdown' do |s|
  s.trigger = 'filter'
  s.scope = 'text.haml'
  s.expansion = ':markdown
	$0'
end

snippet 'Maruku' do |s|
  s.trigger = 'filter'
  s.scope = 'text.haml'
  s.expansion = ':maruku
	$0'
end

snippet 'Page Class' do |s|
  s.trigger = 'pc'
  s.scope = 'text.haml'
  s.expansion = 'page_class'
end

snippet 'Plain' do |s|
  s.trigger = 'filter'
  s.scope = 'text.haml'
  s.expansion = ':plain
	$0'
end

snippet 'Preserve' do |s|
  s.trigger = 'filter'
  s.scope = 'text.haml'
  s.expansion = ':preserve
	$0'
end

snippet 'Ruby' do |s|
  s.trigger = 'filter'
  s.scope = 'text.haml'
  s.expansion = ':ruby
	$0'
end

snippet 'Sass' do |s|
  s.trigger = 'filter'
  s.scope = 'text.haml'
  s.expansion = ':sass
	$0'
end

snippet 'Textile' do |s|
  s.trigger = 'filter'
  s.scope = 'text.haml'
  s.expansion = ':textile
	$0'
end

snippet 'Element Attribute' do |s|
  s.trigger = ':'
  s.scope = 'text.haml'
  s.expansion = ':${1:AttributeName} => "$2"${3:, }$0'
end

snippet 'XHTML - 1.0 Strict' do |s|
  s.trigger = 'doctype'
  s.scope = 'text.haml'
  s.expansion = '!!!'
end

snippet 'XHTML - 1.0 Transitional' do |s|
  s.trigger = 'doctype'
  s.scope = 'text.haml'
  s.expansion = '!!! strict'
end

snippet 'XHTML - 1.1' do |s|
  s.trigger = 'doctype'
  s.scope = 'text.haml'
  s.expansion = '!!! 1.1'
end

snippet 'XML prolog iso-8859-1' do |s|
  s.trigger = 'xml'
  s.scope = 'text.haml'
  s.expansion = '!!! XML iso-8859-1'
end

snippet 'XML prolog' do |s|
  s.trigger = 'xml'
  s.scope = 'text.haml'
  s.expansion = '!!! XML'
end

