# ApprovalAPIClient::ActionApi

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_action**](ActionApi.md#create_action) | **POST** /stages/{stage_id}/actions | Add an action to a given stage
[**list_actions_by_stage**](ActionApi.md#list_actions_by_stage) | **GET** /stages/{stage_id}/actions | Return actions in a given stage
[**show_action**](ActionApi.md#show_action) | **GET** /actions/{id} | Return an user action by id


# **create_action**
> ActionOut create_action(stage_id, action_in)

Add an action to a given stage

Add an action to a given stage

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure API key authorization: APIKey_auth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'
end

api_instance = ApprovalAPIClient::ActionApi.new
stage_id = 56 # Integer | Id of stage
action_in = ApprovalAPIClient::ActionIn.new # ActionIn | Action object that will be added

begin
  #Add an action to a given stage
  result = api_instance.create_action(stage_id, action_in)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling ActionApi->create_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stage_id** | **Integer**| Id of stage | 
 **action_in** | [**ActionIn**](ActionIn.md)| Action object that will be added | 

### Return type

[**ActionOut**](ActionOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

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
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure API key authorization: APIKey_auth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'
end

api_instance = ApprovalAPIClient::ActionApi.new
stage_id = 56 # Integer | Id of stage

begin
  #Return actions in a given stage
  result = api_instance.list_actions_by_stage(stage_id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling ActionApi->list_actions_by_stage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stage_id** | **Integer**| Id of stage | 

### Return type

[**ActionOutCollection**](ActionOutCollection.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

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
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure API key authorization: APIKey_auth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'
end

api_instance = ApprovalAPIClient::ActionApi.new
id = 56 # Integer | Query by id

begin
  #Return an user action by id
  result = api_instance.show_action(id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling ActionApi->show_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**ActionOut**](ActionOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



