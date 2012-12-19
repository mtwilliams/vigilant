class Vigilant
  class CLI
    def self.gen( file, options )
      Vigilant.new(file).generate_tests
    end

    def self.template( file )
temp = <<-TEMPLATE
{
 "output": "run_tests.c"
}
TEMPLATE
      puts "Writing to #{file}"
      File.open(file, 'w+') do |f|
        f.write(temp)
      end
    end
  end
end