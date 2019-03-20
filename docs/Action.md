# ApprovalAPIClient::Action

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**processed_by** | **String** | Processor info who perform the action | 
**operation** | **String** | Types of action, may be one of the value (approve, deny, notify, memo, or skip). The stage will be updated according to the operation. | [optional] [default to &quot;memo&quot;]
**stage_id** | **String** | Associated stage id | [optional] 
**comments** | **String** | Comments for action | [optional] 
**created_at** | **DateTime** | Timestamp of creation | [optional] 


