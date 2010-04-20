require 'ruble'

command 'Check Syntax' do |cmd|
  cmd.key_binding = 'CONTROL+M2+V'
  cmd.scope = 'text.haml'
  cmd.output = :show_as_tooltip
  cmd.input = :none
  cmd.invoke do |context|
    context.exit_show_tool_tip('File not found') unless File.exists?(ENV['TM_FILEPATH'])
    
    result = IO.popen("haml -c '#{ENV['TM_FILEPATH']}' 2>&1") {|io| io.read }
  end
end
