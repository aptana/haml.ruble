require 'ruble'

bundle 'HAML' do |bundle|
  bundle.author = 'Matt Polito'
  bundle.contact_email_rot_13 = 'mpolito@reactioncontrol.com'
  bundle.description =  <<END
<a href="http://unspace.ca/discover/haml">HTML Abstraction Markup Language</a> is a templating engine for Ruby on Rails.
END
  # Folding
  start_folding = /^\s*([-%#\:\.\w\=].*)\s$/
  end_folding = /^\s*$/
  bundle.folding['text.haml'] = start_folding, end_folding
  # Make sure we associate file with our editor and give it a top-level scope
  bundle.register_file_type('*.haml', 'text.haml')

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
