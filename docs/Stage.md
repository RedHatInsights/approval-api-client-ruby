# ApprovalAPIClient::Stage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**state** | **String** | The state of stage or request. It may be one of values (pending, skipped, notified or finished) | [optional] [default to &quot;pending&quot;]
**decision** | **String** | Final decision, may be one of the value (undecided, approved, or denied) | [optional] [default to &quot;undecided&quot;]
**comments** | **String** | Approval stage | [optional] 
**group_id** | **String** | Associated group id | 
**request_id** | **String** | Associated request id | [optional] 


