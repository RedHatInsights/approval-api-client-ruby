# ApprovalApiClient::ActionApi

All URIs are relative to *https://cloud.redhat.com//api/approval/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_action**](ActionApi.md#create_action) | **POST** /requests/{request_id}/actions | Add an action to a given request
[**list_actions_by_request**](ActionApi.md#list_actions_by_request) | **GET** /requests/{request_id}/actions | List all actions of a request
[**show_action**](ActionApi.md#show_action) | **GET** /actions/{id} | Return an user action by id



## create_action

> Action create_action(request_id, action)

Add an action to a given request

Add an action to a given request. Admin can do approve, deny, memo, and cancel operations; approver can do approve, deny and memo operations; while requester can do only cancel operation.

### Example

```ruby
# load the gem
require 'approval-api-client-ruby'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::ActionApi.new
request_id = 'request_id_example' # String | Id of request
action = ApprovalApiClient::Action.new # Action | Action object that will be added

begin
  #Add an action to a given request
  result = api_instance.create_action(request_id, action)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling ActionApi->create_action: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **String**| Id of request | 
 **action** | [**Action**](Action.md)| Action object that will be added | 

### Return type

[**Action**](Action.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_actions_by_request

> ActionCollection list_actions_by_request(request_id)

List all actions of a request

Return actions in a given request, available for admin/approver

### Example

```ruby
# load the gem
require 'approval-api-client-ruby'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::ActionApi.new
request_id = 'request_id_example' # String | Id of request

begin
  #List all actions of a request
  result = api_instance.list_actions_by_request(request_id)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling ActionApi->list_actions_by_request: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **String**| Id of request | 

### Return type

[**ActionCollection**](ActionCollection.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_action

> Action show_action(id)

Return an user action by id

Return an user action by id, available to all

### Example

```ruby
# load the gem
require 'approval-api-client-ruby'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::ActionApi.new
id = 'id_example' # String | Query by id

begin
  #Return an user action by id
  result = api_instance.show_action(id)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling ActionApi->show_action: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Query by id | 

### Return type

[**Action**](Action.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

