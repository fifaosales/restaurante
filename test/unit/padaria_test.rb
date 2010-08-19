require 'test_helper'

class PadariaTest < ActiveSupport::TestCase
	# Replace this with your real tests.
	test "nao deve gravar restaurantes sem nome" do
		p = Padaria.new
		assert_equal false, p.save
	end
end
