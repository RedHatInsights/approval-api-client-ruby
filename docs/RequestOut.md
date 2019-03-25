# ApprovalApiClient::RequestOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requester** | **String** | Requester id | [optional] 
**name** | **String** | Request name | 
**description** | **String** | Request description | [optional] 
**content** | [**Object**](.md) | JSON object with request content | 
**id** | **String** |  | [optional] 
**state** | **String** | The state of stage or request. It may be one of values (pending, skipped, notified or finished) | [optional] [default to &#39;pending&#39;]
**decision** | **String** | Final decision, may be one of the value (undecided, approved, or denied) | [optional] [default to &#39;undecided&#39;]
**reason** | **String** | Comments for requests | [optional] 
**workflow_id** | **String** | Associate workflow id | [optional] 


