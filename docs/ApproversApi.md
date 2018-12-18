# ApprovalAPIClient::ApproversApi

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_action**](ApproversApi.md#add_action) | **POST** /stages/{stage_id}/actions | Add an action to a given stage
[**fetch_action_by_id**](ApproversApi.md#fetch_action_by_id) | **GET** /actions/{id} | Return an approver action by id
[**fetch_actions**](ApproversApi.md#fetch_actions) | **GET** /actions | Return a list of approver actions
[**fetch_stage_by_id**](ApproversApi.md#fetch_stage_by_id) | **GET** /stages/{id} | Return an approval stage by given id


# **add_action**
> Action add_action(stage_id, body)

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

  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::ApproversApi.new

stage_id = 56 # Integer | Id of stage

body = ApprovalAPIClient::Action.new # Action | Action object that will be added


begin
  #Add an action to a given stage
  result = api_instance.add_action(stage_id, body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling ApproversApi->add_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stage_id** | **Integer**| Id of stage | 
 **body** | [**Action**](Action.md)| Action object that will be added | 

### Return type

[**Action**](Action.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_action_by_id**
> Action fetch_action_by_id(id, )

Return an approver action by id

Return an approver action by id

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

  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::ApproversApi.new

id = 56 # Integer | Query by id


begin
  #Return an approver action by id
  result = api_instance.fetch_action_by_id(id, )
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling ApproversApi->fetch_action_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**Action**](Action.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_actions**
> Array&lt;Action&gt; fetch_actions(opts)

Return a list of approver actions

Return a list of approver actions

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

  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::ApproversApi.new

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return a list of approver actions
  result = api_instance.fetch_actions(opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling ApproversApi->fetch_actions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**Array&lt;Action&gt;**](Action.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_stage_by_id**
> Stage fetch_stage_by_id(id, )

Return an approval stage by given id

Return an approval stage by given id

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

  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::ApproversApi.new

id = 56 # Integer | Query by id


begin
  #Return an approval stage by given id
  result = api_instance.fetch_stage_by_id(id, )
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling ApproversApi->fetch_stage_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**Stage**](Stage.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



