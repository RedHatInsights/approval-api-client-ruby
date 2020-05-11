# ApprovalApiClient::Action

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**created_at** | **DateTime** | Timestamp of creation | [optional] [readonly] 
**request_id** | **String** | Associated request id | [optional] [readonly] 
**processed_by** | **String** | The person who performs the action | [optional] 
**operation** | **String** | Types of action, may be one of the value (approve, cancel, deny, error, notify, memo, skip, or start). The request state will be updated according to the operation. | [optional] [default to &#39;memo&#39;]
**comments** | **String** | Comments for action | [optional] 

## Code Sample

```ruby
require 'ApprovalApiClient'

instance = ApprovalApiClient::Action.new(id: null,
                                 created_at: null,
                                 request_id: null,
                                 processed_by: null,
                                 operation: null,
                                 comments: null)
```


