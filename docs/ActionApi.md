# ApprovalApiClient::ActionApi

All URIs are relative to *https://cloud.redhat.com//api/approval/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_action**](ActionApi.md#create_action) | **POST** /stages/{stage_id}/actions | Add an action to a given stage
[**create_action_by_request**](ActionApi.md#create_action_by_request) | **POST** /requests/{request_id}/actions | Add an action to current active stage of a given request
[**list_actions_by_stage**](ActionApi.md#list_actions_by_stage) | **GET** /stages/{stage_id}/actions | Return actions in a given stage
[**show_action**](ActionApi.md#show_action) | **GET** /actions/{id} | Return an user action by id


# **create_action**
> ActionOut create_action(stage_id, action_in)

Add an action to a given stage

Add an action to a given stage

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
stage_id = 'stage_id_example' # String | Id of stage
action_in = ApprovalApiClient::ActionIn.new # ActionIn | Action object that will be added

begin
  #Add an action to a given stage
  result = api_instance.create_action(stage_id, action_in)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling ActionApi->create_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stage_id** | **String**| Id of stage | 
 **action_in** | [**ActionIn**](ActionIn.md)| Action object that will be added | 

### Return type

[**ActionOut**](ActionOut.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_action_by_request**
> ActionOut create_action_by_request(request_id, action_in)

Add an action to current active stage of a given request

Add an action to current active stage of a given request. If request is finished, i.e. no current active stage is available, no action can be posted here.

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
action_in = ApprovalApiClient::ActionIn.new # ActionIn | Action object that will be added

begin
  #Add an action to current active stage of a given request
  result = api_instance.create_action_by_request(request_id, action_in)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling ActionApi->create_action_by_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **String**| Id of request | 
 **action_in** | [**ActionIn**](ActionIn.md)| Action object that will be added | 

### Return type

[**ActionOut**](ActionOut.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_actions_by_stage**
> ActionOutCollection list_actions_by_stage(stage_id)

Return actions in a given stage

List all actions of a stage

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
stage_id = 'stage_id_example' # String | Id of stage

begin
  #Return actions in a given stage
  result = api_instance.list_actions_by_stage(stage_id)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling ActionApi->list_actions_by_stage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stage_id** | **String**| Id of stage | 

### Return type

[**ActionOutCollection**](ActionOutCollection.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **show_action**
> ActionOut show_action(id)

Return an user action by id

Return an user action by id

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

[**ActionOut**](ActionOut.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



