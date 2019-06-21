# ApprovalApiClient::RequestOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**state** | **String** | The state of stage or request. It may be one of values (canceled, pending, skipped, notified or finished) | [optional] [default to &#39;pending&#39;]
**decision** | **String** | Final decision, may be one of the value (undecided, approved, canceled or denied) | [optional] [default to &#39;undecided&#39;]
**reason** | **String** | Comments for requests | [optional] 
**workflow_id** | **String** | Associate workflow id | [optional] 
**created_at** | **DateTime** | Timestamp of creation | [optional] 
**updated_at** | **DateTime** | Timestamp of last update | [optional] 
**active_stage** | **Integer** | Current (or last) active stage. For regular approver this number is always 0 | [optional] 
**total_stages** | **Integer** | Total number of stages. For regular approver this number is always 0. | [optional] 
**requester** | **String** | Requester id | [optional] 
**name** | **String** | Request name | [optional] 
**description** | **String** | Request description | [optional] 
**content** | [**Object**](.md) | JSON object with request content | [optional] 


