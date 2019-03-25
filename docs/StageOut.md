# ApprovalApiClient::StageOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** | name of the group that processes the stage | [optional] 
**group_ref** | **String** | Associated group reference id | [optional] 
**state** | **String** | The state of stage or request. It may be one of values (pending, skipped, notified or finished) | [optional] [default to &#39;pending&#39;]
**decision** | **String** | Final decision, may be one of the value (undecided, approved, or denied) | [optional] [default to &#39;undecided&#39;]
**notified_at** | **String** | the time approvers in the stage are notified | [optional] 


