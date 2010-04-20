with_defaults :scope => 'text.haml' do

  # Filters
  with_defaults :trigger => 'filter' do
    snippet 'CDATA' do |s|
      s.expansion = ':cdata
  $0'
    end
    
    snippet 'Erb' do |s|
      s.expansion = ':erb
  $0'
    end
    
    snippet 'Escaped' do |s|
      s.expansion = ':escaped
  $0'
    end
    
    snippet 'Javascript' do |s|
      s.expansion = ':javascript
  $0'
    end
    
    snippet 'Markdown' do |s|
      s.expansion = ':markdown
  $0'
    end
    
    snippet 'Maruku' do |s|
      s.expansion = ':maruku
  $0'
    end
    
    snippet 'Preserve' do |s|
      s.expansion = ':preserve
  $0'
    end
    
    snippet 'Ruby' do |s|
      s.expansion = ':ruby
  $0'
    end
    
    snippet 'Sass' do |s|
      s.expansion = ':sass
  $0'
    end
    
    snippet 'Textile' do |s|
      s.expansion = ':textile
  $0'
    end
    
    snippet 'Plain' do |s|
      s.expansion = ':plain
  $0'
    end
  end

  # META
  with_defaults :trigger => 'meta' do
    snippet 'Meta - http-equiv' do |s|
      s.trigger = 'meta'
      s.expansion = '%meta{ \'http-equiv\' => \'Content-Type\', :content => \'text/html;\', \'charset\' => \'utf-8\'${1:, }$2 }$0'
    end
    
    snippet 'Meta - Generic' do |s|
      s.trigger = 'meta'
      s.expansion = '%meta{ :name => \'$1\', :content => \'$2\'${3:, }$4 }$0'
    end
  end

  # Doctypes
  with_defaults :trigger => 'doctype' do
    snippet 'XHTML - 1.0 Strict' do |s|
      s.expansion = '!!! strict'
    end
    
    snippet 'XHTML - 1.0 Transitional' do |s|
      s.expansion = '!!!'
    end
    
    snippet 'XHTML - 1.1' do |s|
      s.expansion = '!!! 1.1'
    end
    
    snippet 'XHTML - Mobile' do |s|
      s.expansion = '!!! Mobile'
    end
  end
  
  # XML
  with_defaults :trigger => 'xml' do
    snippet 'XML prolog iso-8859-1' do |s|
      s.expansion = '!!! XML iso-8859-1'
    end
    
    snippet 'XML prolog' do |s|
      s.expansion = '!!! XML'
    end
  end
  
  # Miscellaneous
  
  snippet 'Insert Tag' do |s|
    s.key_binding = 'CONTROL+M2+,'
    s.expansion = '%${1:p}'
  end
  
  snippet 'HTML - en-US' do |s|
    s.trigger = 'html'
    s.expansion = '%html{ :xmlns => "http://www.w3.org/1999/xhtml", :lang => "en", \'xml:lang\' => "en" }'
  end
  
  snippet 'IE Conditional' do |s|
    s.trigger = 'ie'
    s.expansion = '/[if ${1:lte }IE${3: ${2:version}}]
  $0'
  end
  
  snippet 'Page Class' do |s|
    s.trigger = 'pc'
    s.expansion = 'page_class'
  end
  
  snippet 'Element Attribute' do |s|
    s.trigger = ':'
    s.expansion = ':${1:AttributeName} => "$2"${3:, }$0'
  end
end