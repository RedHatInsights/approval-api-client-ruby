# ApprovalAPIClient::Request

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**requester** | **String** | Requester info | 
**name** | **String** | Request name | 
**description** | **String** | Request description | [optional] 
**state** | [**State**](State.md) |  | [optional] 
**decision** | [**Decision**](Decision.md) |  | [optional] 
**reason** | **String** | Comments for requests | [optional] 
**content** | **Object** | JSON object with request content | 
**workflow_id** | **String** | Associate workflow id | [optional] 
**stages** | [**Array&lt;Stage&gt;**](Stage.md) |  | [optional] 


