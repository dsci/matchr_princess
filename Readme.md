## MatchrPrincess

A mini gem to hold some custom RSpec matchers. 

**HTTP status**

```ruby
response.should have_status "Found" # 302
response.should have_status "Bad Gateway" # 502
```

**Equal to**

Kind of redundant <code>should eq "foo"</code>.

```ruby
result.should be_equal_to "foo"
```

**Key in JSON response**

```ruby
response.should have_value_for_key(true,:success)
```


## Words

Special thanks to Heiko Rabe (heiko.rabe@code-styling.de) for the idea to match against a human readable HTTP Status Code definition.

## License
Copyright (c) 2012 "dsci" Daniel Schmidt  
Dual licensed under the MIT and GPL licenses. 