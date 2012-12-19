require File.expand_path "../helpers", __FILE__

context "Vigilant Test Generation" do
  setup do
    @path = File.join(File.dirname(__FILE__), "fixtures")
    @generator = Vigilant.new(@path)
    @generator.generate_tests
  end

  test "can parse tests" do
    assert_equal 1, @generator.num_tests
  end
end