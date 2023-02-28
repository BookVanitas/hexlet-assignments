# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'
require 'minitest/power_assert'

class StackTest < Minitest::Test
  # BEGIN
  def setup
    @stack = Stack.new
  end

  def test_push_adds_element_to_stack
    @stack.push!(1)
    assert { @stack.size == 1 }
  end

  def test_push_multiple_elements_to_stack
    @stack.push!(1)
    @stack.push!(2)
    @stack.push!(3)
    assert { @stack.size == 3 }
    assert { @stack.to_a == [1, 2, 3] }
  end

  def test_pop_removes_last_element_from_stack
    @stack.push!(1)
    @stack.push!(2)
    @stack.push!(3)
    assert { @stack.pop! == 3 }
    assert { @stack.to_a == [1, 2] }
  end

  def test_pop_returns_nil_if_stack_is_empty
    assert { @stack.pop!.nil? }
  end

  def test_clear_removes_all_elements_from_stack
    @stack.push!(1)
    @stack.push!(2)
    @stack.push!(3)
    @stack.clear!
    assert { @stack.empty? }
  end

  def test_is_empty_returns_true_if_stack_is_empty
    assert { @stack.empty? }
  end

  def test_is_empty_returns_false_if_stack_is_not_empty
    @stack.push!(1)
    refute { @stack.empty? }
  end

  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
