require "spec_helper"

describe Judge::Formtastic do
  let(:template) do
    ActionView::Base.new
  end
  let(:builder) do
    Formtastic::FormBuilder.new(:user, User.new, template, {})
  end
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
