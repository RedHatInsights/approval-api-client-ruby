# ApprovalApiClient::Action

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**created_at** | **DateTime** | Timestamp of creation | [optional] 
**updated_at** | **DateTime** | Timestamp of update | [optional] 
**request_id** | **String** | Associated request id | [optional] 
**processed_by** | **String** | The person who performs the action | [optional] 
**operation** | **String** | Types of action, may be one of the value (approve, cancel, deny, notify, memo, or skip). The request will be updated according to the operation. | [optional] [default to &#39;memo&#39;]
**comments** | **String** | Comments for action | [optional] 


