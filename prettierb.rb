require "parser/current"
require "unparser"

class PrettieRB
  attr_reader :path, :debug

  def self.setup
    # Unparser doesn't support these.
    Parser::Builders::Default.emit_lambda = false
    Parser::Builders::Default.emit_procarg0 = false
  end

  def initialize(path, debug: false)
    @path = path
    @debug = debug
  end

  def format
    source = File.read(path)

    ast = Parser::CurrentRuby.parse(source)
    formatted = Unparser.unparse(ast)
    return puts formatted if debug
    file = File.new(output_path, "w")
    file.write(formatted)
    file.close
    puts "Formatted version written to #{output_path}"
  end

  private

  def output_path
    new_path, ext = path.split(".rb")
    "#{new_path}-formatted.rb"
  end
end
