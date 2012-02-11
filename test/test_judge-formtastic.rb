class JudgeFormtasticTest < ActionView::TestCase

  def test_input
    assert_match data_regexp, builder.input(:name, :validate => true)
    assert_not_match data_regexp, builder.input(:name)
  end

  def builder
    Formtastic::FormBuilder.new(:user, FactoryGirl.build(:user), self, {}, nil)
  end

  def data_regexp
    /input data\-validate/
  end

end 