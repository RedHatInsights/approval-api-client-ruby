# ApprovalApiClient::Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**state** | **String** | The state of the request. Possible value: canceled, completed, notified, skipped, or started | [optional] [readonly] 
**decision** | **String** | Approval decision. Possible value: undecided, approved, canceled, or denied | [optional] [readonly] 
**reason** | **String** | Reason for the decision. Optional. Present normally when the decision is denied | [optional] [readonly] 
**workflow_id** | **String** | Associate workflow id. Available only if the request is a leaf node | [optional] [readonly] 
**created_at** | **DateTime** | Timestamp of creation | [optional] [readonly] 
**notified_at** | **DateTime** | Timestamp of notification sent to approvers | [optional] [readonly] 
**finished_at** | **DateTime** | Timestamp of finishing (skipped, canceled, or completed) | [optional] [readonly] 
**number_of_children** | **Integer** | Number of child requests | [optional] [readonly] 
**number_of_finished_children** | **Integer** | Number of finished child requests | [optional] [readonly] 
**owner** | **String** | Requester&#39;s id | [optional] [readonly] 
**requester_name** | **String** | Requester&#39;s full name | [optional] [readonly] 
**name** | **String** | Request name | [optional] [readonly] 
**description** | **String** | Request description | [optional] [readonly] 
**group_name** | **String** | Name of approver group(s) assigned to approve this request | [optional] [readonly] 
**parent_id** | **String** | Parent request id | [optional] [readonly] 

## Code Sample

```ruby
require 'ApprovalApiClient'

instance = ApprovalApiClient::Request.new(id: null,
                                 state: null,
                                 decision: null,
                                 reason: null,
                                 workflow_id: null,
                                 created_at: null,
                                 notified_at: null,
                                 finished_at: null,
                                 number_of_children: null,
                                 number_of_finished_children: null,
                                 owner: null,
                                 requester_name: null,
                                 name: null,
                                 description: null,
                                 group_name: null,
                                 parent_id: null)
```


