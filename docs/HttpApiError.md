# ApprovalApiClient::HttpApiError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | HTTP status code | [optional] 
**details** | **String** | Error details | [optional] 

## Code Sample

```ruby
require 'ApprovalApiClient'

instance = ApprovalApiClient::HttpApiError.new(status: 400,
                                 details: Bad Request)
```


