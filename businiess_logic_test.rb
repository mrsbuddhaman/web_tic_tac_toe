require_relative "business_logic.rb"
require "minitest/autorun"

class Consecutive_test < Minitest::Test


def players_test
	assert_equal("X", players("O"))
	assert_equal("O", players("X"))
end




















end