# Use this like:
#   result = "foo"
#   result.should be_equal_to "foo"
RSpec::Matchers.define :be_equal_to do |target|
	match do |src|
		src == target
	end
end

RSpec::Matchers.define :be_status_for do |expected_status|
  match do |response|
    #puts response.status
    response.status.to_s.include?(expected_status.to_s).should == true
  end
end

RSpec::Matchers.define :have_value_for_key do |expected_json,key|
  match do |response|
    json = ActiveSupport::JSON::decode(response.body)
    json[key.to_s].should == expected_json
  end
end

RSpec::Matchers.define :have_status do |expected_status|
  match do |response|
    status_code = Rack::Utils.status_code(expected_status.downcase.gsub(/\s|-/, '_').to_sym)
    response.status == status_code
  end
end
