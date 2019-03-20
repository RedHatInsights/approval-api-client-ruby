# ApprovalAPIClient::UsersApi

All URIs are relative to *http://localhost:3000/r/insights/platform/approval*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_action**](UsersApi.md#add_action) | **POST** /stages/{stage_id}/actions | Add an action to a given stage
[**fetch_action_by_id**](UsersApi.md#fetch_action_by_id) | **GET** /actions/{id} | Return an user action by id
[**fetch_actions**](UsersApi.md#fetch_actions) | **GET** /actions | Return a list of user actions


# **add_action**
> ActionOut add_action(stage_id, body)

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

api_instance = ApprovalAPIClient::UsersApi.new

stage_id = 56 # Integer | Id of stage

body = ApprovalAPIClient::ActionIn.new # ActionIn | Action object that will be added


begin
  #Add an action to a given stage
  result = api_instance.add_action(stage_id, body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling UsersApi->add_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stage_id** | **Integer**| Id of stage | 
 **body** | [**ActionIn**](ActionIn.md)| Action object that will be added | 

### Return type

[**ActionOut**](ActionOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_action_by_id**
> ActionOut fetch_action_by_id(id, )

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

api_instance = ApprovalAPIClient::UsersApi.new

id = 56 # Integer | Query by id


begin
  #Return an user action by id
  result = api_instance.fetch_action_by_id(id, )
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling UsersApi->fetch_action_by_id: #{e}"
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
 - **Accept**: Not defined



# **fetch_actions**
> Array&lt;ActionOut&gt; fetch_actions(opts)

Return a list of user actions

Return a list of user actions

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

api_instance = ApprovalAPIClient::UsersApi.new

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return a list of user actions
  result = api_instance.fetch_actions(opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling UsersApi->fetch_actions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**Array&lt;ActionOut&gt;**](ActionOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



