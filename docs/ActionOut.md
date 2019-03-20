# ApprovalAPIClient::ActionOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**processed_by** | **String** | The person who performs the action | [optional] 
**operation** | **String** | Types of action, may be one of the value (approve, deny, notify, memo, or skip). The stage will be updated according to the operation. | [default to &#39;memo&#39;]
**comments** | **String** | Comments for action | [optional] 
**id** | **String** |  | 
**created_at** | **DateTime** | Timestamp of creation | [optional] 
**stage_id** | **String** | Associated stage id | 


