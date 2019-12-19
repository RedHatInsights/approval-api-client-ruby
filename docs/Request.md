# ApprovalApiClient::Request

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**state** | **String** | The state of the request. Possible value: canceled, completed, notified, skipped, or started | [optional] 
**decision** | **String** | Approval decision. Possible value: undecided, approved, canceled, or denied | [optional] 
**reason** | **String** | Reason for the decision. Optional. Present normally when the decision is denied | [optional] 
**workflow_id** | **String** | Associate workflow id. Available only if the request is a leaf node | [optional] 
**notified_at** | **DateTime** | Timestamp of notification sent to approvers | [optional] 
**finished_at** | **DateTime** | Timestamp of finishing (skipped, canceled, or completed) | [optional] 
**number_of_children** | **Integer** | Number of child requests | [optional] 
**number_of_finished_children** | **Integer** | Number of finished child requests | [optional] 
**owner** | **String** | Requester&#39;s id | [optional] 
**requester_name** | **String** | Requester&#39;s full name | [optional] 
**name** | **String** | Request name | [optional] 
**description** | **String** | Request description | [optional] 
**group_name** | **String** | Name of approver group(s) assigned to approve this request | [optional] 
**parent_id** | **String** | Parent request id | [optional] 


