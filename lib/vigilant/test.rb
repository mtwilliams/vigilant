class Vigilant
  class Test
    attr_accessor :prior_to
    attr_accessor :run
    attr_accessor :after

    def initialize()
      @prior_to = ""
      @run = ""
      @after = ""
    end

    def self.load file
      return unless file
      file = file.dup.untaint
      return unless File.file?(file)

      code = File.read(file).untaint

      begin
        test = eval(code, binding, file)

        if Vigilant::Test === test
          return test
        end

        warn "[#{file}] isn't a Vigilant::Test (#{test.class} instead)."
      rescue SignalException, SystemExit
        raise
      rescue SyntaxError, Exception => e
        warn "Invalid test in [#{file}]: #{e}"
      end

      nil
    end
  end
end