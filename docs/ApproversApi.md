# ApprovalAPIClient::ApproversApi

All URIs are relative to *https://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_action**](ApproversApi.md#add_action) | **POST** /stages/{stage_id}/actions | Add an action
[**fetch_action_by_id**](ApproversApi.md#fetch_action_by_id) | **GET** /actions/{id} | Finds approver action by id
[**fetch_actions**](ApproversApi.md#fetch_actions) | **GET** /actions | Returns list of approver actions
[**fetch_stage_by_id**](ApproversApi.md#fetch_stage_by_id) | **GET** /stages/{id} | Retrieves approval stages by given id
[**remove_action**](ApproversApi.md#remove_action) | **DELETE** /actions/{id} | Delete action by id
[**update_action**](ApproversApi.md#update_action) | **PUT** /actions/{id} | Update an existing action
[**update_stage**](ApproversApi.md#update_stage) | **PUT** /stages/{id} | Update an existing approval stage


# **add_action**
> Action add_action(stage_id, body)

Add an action

Add an action

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::ApproversApi.new

stage_id = 56 # Integer | id of stage

body = ApprovalAPIClient::Action.new # Action | Action object that will be added


begin
  #Add an action
  result = api_instance.add_action(stage_id, body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling ApproversApi->add_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stage_id** | **Integer**| id of stage | 
 **body** | [**Action**](Action.md)| Action object that will be added | 

### Return type

[**Action**](Action.md)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_action_by_id**
> Action fetch_action_by_id(id)

Finds approver action by id

Finds approver action by id

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::ApproversApi.new

id = 56 # Integer | query by id


begin
  #Finds approver action by id
  result = api_instance.fetch_action_by_id(id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling ApproversApi->fetch_action_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 

### Return type

[**Action**](Action.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_actions**
> Array&lt;Action&gt; fetch_actions(opts)

Returns list of approver actions

Returns a list of approver actions

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
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
  #Returns list of approver actions
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

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_stage_by_id**
> Request fetch_stage_by_id(id)

Retrieves approval stages by given id

Get stage by given id

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::ApproversApi.new

id = 56 # Integer | query by id


begin
  #Retrieves approval stages by given id
  result = api_instance.fetch_stage_by_id(id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling ApproversApi->fetch_stage_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 

### Return type

[**Request**](Request.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **remove_action**
> remove_action(id)

Delete action by id

Delete action by id

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::ApproversApi.new

id = 56 # Integer | query by id


begin
  #Delete action by id
  api_instance.remove_action(id)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling ApproversApi->remove_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_action**
> update_action(idbody)

Update an existing action

Update an existing action

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::ApproversApi.new

id = 56 # Integer | query by id

body = ApprovalAPIClient::Action.new # Action | Action object that needs to be updated


begin
  #Update an existing action
  api_instance.update_action(idbody)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling ApproversApi->update_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 
 **body** | [**Action**](Action.md)| Action object that needs to be updated | 

### Return type

nil (empty response body)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_stage**
> update_stage(idbody)

Update an existing approval stage

Update stage

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::ApproversApi.new

id = 56 # Integer | query by id

body = ApprovalAPIClient::Stage.new # Stage | new stage


begin
  #Update an existing approval stage
  api_instance.update_stage(idbody)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling ApproversApi->update_stage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 
 **body** | [**Stage**](Stage.md)| new stage | 

### Return type

nil (empty response body)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



