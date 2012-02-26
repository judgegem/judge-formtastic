require "spec_helper"

describe Judge::Formtastic do
  let(:builder) { Formtastic::FormBuilder.new(:user, FactoryGirl.build(:user), ActionView::Base.new, {}, nil) }
  let(:expected) do
    /data\-validate\=\"\[.+\]\"/
  end

  it "adds data attribute when :validate option is true" do
    builder.input(:name, :validate => true).should match expected
  end

  it "does not add data attribute otherwise" do
    builder.input(:name).should_not match expected
  end
end