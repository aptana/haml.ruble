require 'ruble'

bundle do |bundle|
  bundle.author = 'Christopher Williams'
  bundle.copyright = "© Copyright 2010 Aptana Inc. Distributed under the MIT license."
  bundle.display_name =  'HAML'
  bundle.repository = "git://github.com/aptana/haml.ruble.git"
  bundle.description =  <<END
Ported from Matt Polito's HAML bundle for TextMate.

<a href="http://unspace.ca/discover/haml">HTML Abstraction Markup Language</a> is a templating engine for Ruby on Rails.
END
  # Folding
  start_folding = /^\s*([-%#\:\.\w\=].*)\s$/
  end_folding = /^\s*$/
  bundle.folding['text.haml'] = start_folding, end_folding
  # Make sure we associate file with our editor and give it a top-level scope
  bundle.file_types['text.haml'] = '*.haml'

  bundle.menu 'HAML' do |main_menu|
    main_menu.menu 'Insert DocType' do |submenu|
      submenu.command 'XHTML - 1.0 Strict'
      submenu.command 'XHTML - 1.0 Transitional'
      submenu.command 'XHTML - 1.1'
    end
    main_menu.menu 'Insert XML Prolog' do |submenu|
      submenu.command 'XML prolog'
      submenu.command 'XML prolog iso-8859-1'
    end
    main_menu.menu 'Filters' do |submenu|
      submenu.command 'Plain'
      submenu.command 'Javascript'
      submenu.command 'Escaped'
      submenu.command 'Ruby'
      submenu.command 'Preserve'
      submenu.command 'Erb'
      submenu.command 'Sass'
      submenu.command 'Textile'
      submenu.command 'Markdown'
      submenu.command 'Maruku'
    end
    main_menu.separator
    main_menu.command 'HTML - en-US'
    main_menu.command 'Element Attribute'
    main_menu.command 'IE Conditional'
    main_menu.command 'Page Class'
    main_menu.command 'Convert HTML to HAML'
    main_menu.command 'Insert Tag'
  end
end
