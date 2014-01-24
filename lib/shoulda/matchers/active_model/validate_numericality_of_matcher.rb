module Shoulda
  module Matchers
    module ActiveModel
      # The `validate_numericality_of` matcher tests usage of the
      # `validates_numericality_of` validation.
      #
      #     class Person < ActiveRecord::Base
      #       validates_numericality_of :gpa
      #     end
      #
      #     # RSpec
      #     describe Person do
      #       it { should validate_numericality_of(:gpa) }
      #     end
      #
      #     # Test::Unit
      #     class PersonTest < ActiveSupport::TestCase
      #       should validate_numericality_of(:gpa)
      #     end
      #
      # ## Qualifiers
      #
      # ### only_integer
      #
      # Use `only_integer` to test usage of the `:only_integer` option. This
      # asserts that your attribute only allows integer numbers and disallows
      # non-integer ones.
      #
      #     class Person
      #       include ActiveModel::Model
      #
      #       validates_numericality_of :age, only_integer: true
      #     end
      #
      #     # RSpec
      #     describe Person do
      #       it { should validate_numericality_of(:age).only_integer }
      #     end
      #
      #     # Test::Unit
      #     class PersonTest < ActiveSupport::TestCase
      #       should validate_numericality_of(:age).only_integer
      #     end
      #
      # ### is_less_than
      #
      # Use `is_less_than` to test usage of the the `:less_than` option. This
      # asserts that the attribute can take a number which is less than the
      # given value and cannot take a number which is greater than or equal to
      # it.
      #
      #     class Person
      #       include ActiveModel::Model
      #
      #       validates_numericality_of :number_of_cars, less_than: 2
      #     end
      #
      #     # RSpec
      #     describe Person do
      #       it { should validate_numericality_of(:number_of_cars).is_less_than(2) }
      #     end
      #
      #     # Test::Unit
      #     class PersonTest < ActiveSupport::TestCase
      #       should validate_numericality_of(:number_of_cars).is_less_than(2)
      #     end
      #
      # ### is_less_than_or_equal_to
      #
      # Use `is_less_than_or_equal_to` to test usage of the
      # `:less_than_or_equal_to` option. This asserts that the attribute can
      # take a number which is less than or equal to the given value and cannot
      # take a number which is greater than it.
      #
      #     class Person
      #       include ActiveModel::Model
      #
      #       validates_numericality_of :birth_year, less_than_or_equal_to: 1987
      #     end
      #
      #     # RSpec
      #     describe Person do
      #       it { should validate_numericality_of(:birth_year).is_less_than_or_equal_to(1987) }
      #     end
      #
      #     # Test::Unit
      #     class PersonTest < ActiveSupport::TestCase
      #       should validate_numericality_of(:birth_year).is_less_than_or_equal_to(1987)
      #     end
      #
      # ### is_equal_to
      #
      # Use `is_equal_to` to test usage of the `:equal_to` option. This asserts
      # that the attribute can take a number which is equal to the given value
      # and cannot take a number which is not equal.
      #
      #     class Person
      #       include ActiveModel::Model
      #
      #       validates_numericality_of :weight, equal_to: 150
      #     end
      #
      #     # RSpec
      #     describe Person do
      #       it { should validate_numericality_of(:weight).is_equal_to(150) }
      #     end
      #
      #     # Test::Unit
      #     class PersonTest < ActiveSupport::TestCase
      #       should validate_numericality_of(:weight).is_equal_to(150)
      #     end
      #
      # ### is_greater_than_or_equal_to
      #
      # Use `is_greater_than_or_equal_to` to test usage of the
      # `:greater_than_or_equal_to` option. This asserts that the attribute can
      # take a number which is greater than or equal to the given value and
      # cannot take a number which is less than it.
      #
      #     class Person
      #       include ActiveModel::Model
      #
      #       validates_numericality_of :height, greater_than_or_equal_to: 55
      #     end
      #
      #     # RSpec
      #     describe Person do
      #       it { should validate_numericality_of(:height).is_greater_than_or_equal_to(55) }
      #     end
      #
      #     # Test::Unit
      #     class PersonTest < ActiveSupport::TestCase
      #       should validate_numericality_of(:height).is_greater_than_or_equal_to(55)
      #     end
      #
      # ### is_greater_than
      #
      # Use `is_greater_than` to test usage of tthe `:greater_than` option.
      # This asserts that the attribute can take a number which is greater than
      # the given value and cannot take a number less than or equal to it.
      #
      #     class Person
      #       include ActiveModel::Model
      #
      #       validates_numericality_of :legal_age, greater_than: 21
      #     end
      #
      #     # RSpec
      #     describe Person do
      #       it { should validate_numericality_of(:legal_age).is_greater_than(21) }
      #     end
      #
      #     # Test::Unit
      #     class PersonTest < ActiveSupport::TestCase
      #       should validate_numericality_of(:legal_age).is_greater_than(21)
      #     end
      #
      # ### even
      #
      # Use `even` to test usage of the `:even` option. This asserts that the
      # attribute can take odd numbers and cannot take even ones.
      #
      #     class Person
      #       include ActiveModel::Model
      #
      #       validates_numericality_of :birth_month, even: true
      #     end
      #
      #     # RSpec
      #     describe Person do
      #       it { should validate_numericality_of(:birth_month).even }
      #     end
      #
      #     # Test::Unit
      #     class PersonTest < ActiveSupport::TestCase
      #       should validate_numericality_of(:birth_month).even
      #     end
      #
      # ### odd
      #
      # Use `odd` to test usage of the `:odd` option. This asserts that the
      # attribute can take a number which is odd and cannot take a number which
      # is even.
      #
      #     class Person
      #       include ActiveModel::Model
      #
      #       validates_numericality_of :birth_day, odd: true
      #     end
      #
      #     # RSpec
      #     describe Person do
      #       it { should validate_numericality_of(:birth_day).odd }
      #     end
      #
      #     # Test::Unit
      #     class PersonTest < ActiveSupport::TestCase
      #       should validate_numericality_of(:birth_day).odd
      #     end
      #
      # ### with_message
      #
      # Use `with_message` if you are using a custom validation message.
      #
      #     class Person
      #       include ActiveModel::Model
      #
      #       validates_numericality_of :number_of_dependents,
      #         message: 'Number of dependents must be a number'
      #     end
      #
      #     # RSpec
      #     describe Person do
      #       it do
      #         should validate_numericality_of(:number_of_dependents).
      #           with_message('Number of dependents must be a number')
      #       end
      #     end
      #
      #     # Test::Unit
      #     class PersonTest < ActiveSupport::TestCase
      #       should validate_numericality_of(:number_of_dependents).
      #         with_message('Number of dependents must be a number')
      #     end
      #
      # @return [ValidateNumericalityOfMatcher]
      #
      def validate_numericality_of(attr)
        ValidateNumericalityOfMatcher.new(attr)
      end

      # @private
      class ValidateNumericalityOfMatcher
        NON_NUMERIC_VALUE = 'abcd'

        def initialize(attribute)
          @attribute = attribute
          @submatchers = []

          add_disallow_value_matcher
        end

        def only_integer
          add_submatcher(NumericalityMatchers::OnlyIntegerMatcher.new(@attribute))
          self
        end

        def is_greater_than(value)
          add_submatcher(NumericalityMatchers::ComparisonMatcher.new(value, :>).for(@attribute))
          self
        end

        def is_greater_than_or_equal_to(value)
          add_submatcher(NumericalityMatchers::ComparisonMatcher.new(value, :>=).for(@attribute))
          self
        end

        def is_equal_to(value)
          add_submatcher(NumericalityMatchers::ComparisonMatcher.new(value, :==).for(@attribute))
          self
        end

        def is_less_than(value)
          add_submatcher(NumericalityMatchers::ComparisonMatcher.new(value, :<).for(@attribute))
          self
        end

        def is_less_than_or_equal_to(value)
          add_submatcher(NumericalityMatchers::ComparisonMatcher.new(value, :<=).for(@attribute))
          self
        end

        def odd
          odd_number_matcher = NumericalityMatchers::OddEvenNumberMatcher.new(@attribute, odd: true)
          add_submatcher(odd_number_matcher)
          self
        end

        def even
          even_number_matcher = NumericalityMatchers::OddEvenNumberMatcher.new(@attribute, even: true)
          add_submatcher(even_number_matcher)
          self
        end

        def with_message(message)
          @submatchers.each { |matcher| matcher.with_message(message) }
          self
        end

        def matches?(subject)
          @subject = subject
          submatchers_match?
        end

        def description
          "only allow #{allowed_types} values for #{@attribute}"
        end

        def failure_message
          submatcher_failure_messages_for_should.last
        end
        alias failure_message_for_should failure_message

        def failure_message_when_negated
          submatcher_failure_messages_for_should_not.last
        end
        alias failure_message_for_should_not failure_message_when_negated

        private

        def add_disallow_value_matcher
          disallow_value_matcher = DisallowValueMatcher.new(NON_NUMERIC_VALUE).
            for(@attribute).
            with_message(:not_a_number)

          add_submatcher(disallow_value_matcher)
        end

        def add_submatcher(submatcher)
          @submatchers << submatcher
        end

        def submatchers_match?
          failing_submatchers.empty?
        end

        def submatcher_failure_messages_for_should
          failing_submatchers.map(&:failure_message)
        end

        def submatcher_failure_messages_for_should_not
          failing_submatchers.map(&:failure_message_when_negated)
        end

        def failing_submatchers
          @failing_submatchers ||= @submatchers.select { |matcher| !matcher.matches?(@subject) }
        end

        def allowed_types
          allowed = ['numeric'] + submatcher_allowed_types
          allowed.join(', ')
        end

        def submatcher_allowed_types
          @submatchers.map(&:allowed_types).reject(&:empty?)
        end
      end
    end
  end
end
