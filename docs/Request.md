# ApprovalAPIClient::Request

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**requester** | **String** | Requester info | 
**name** | **String** | Request name | 
**description** | **String** | Request description | [optional] 
**state** | **String** | The state of stage or request. It may be one of values (pending, skipped, notified or finished) | [optional] [default to &quot;pending&quot;]
**decision** | **String** | Final decision, may be one of the value (undecided, approved, or denied) | [optional] [default to &quot;undecided&quot;]
**reason** | **String** | Comments for requests | [optional] 
**content** | **Object** | JSON object with request content | 
**workflow_id** | **String** | Associate workflow id | [optional] 


