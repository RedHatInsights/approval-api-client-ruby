# ApprovalAPIClient::RequestApi

All URIs are relative to *http://localhost/api/approval*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_request**](RequestApi.md#create_request) | **POST** /workflows/{workflow_id}/requests | Add an approval request by given parameters
[**list_requests**](RequestApi.md#list_requests) | **GET** /requests | Return an array of approval requests
[**list_requests_by_workflow**](RequestApi.md#list_requests_by_workflow) | **GET** /workflows/{workflow_id}/requests | Return approval requests by given workflow id
[**show_request**](RequestApi.md#show_request) | **GET** /requests/{id} | Return an approval request by given id


# **create_request**
> RequestOut create_request(workflow_id, request_in)

Add an approval request by given parameters

Add an approval request by given parameters

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure API key authorization: APIKey_auth
  config.api_key['x-rh-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-identity'] = 'Bearer'

  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::RequestApi.new
workflow_id = 56 # Integer | Id of workflow
request_in = ApprovalAPIClient::RequestIn.new # RequestIn | Parameters need to create a request

begin
  #Add an approval request by given parameters
  result = api_instance.create_request(workflow_id, request_in)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling RequestApi->create_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**| Id of workflow | 
 **request_in** | [**RequestIn**](RequestIn.md)| Parameters need to create a request | 

### Return type

[**RequestOut**](RequestOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_requests**
> RequestOutCollection list_requests(opts)

Return an array of approval requests

Return an array of requests

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure API key authorization: APIKey_auth
  config.api_key['x-rh-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-identity'] = 'Bearer'

  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::RequestApi.new
opts = {
  decision: ['decision_example'], # Array<String> | Fetch item by given decision (undecided, approved, denied)
  state: ['state_example'], # Array<String> | Fetch item by given state (pending, skipped, notified, finished)
  requester: 'requester_example', # String | Fetch item by given requester
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return an array of approval requests
  result = api_instance.list_requests(opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling RequestApi->list_requests: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **decision** | [**Array&lt;String&gt;**](String.md)| Fetch item by given decision (undecided, approved, denied) | [optional] 
 **state** | [**Array&lt;String&gt;**](String.md)| Fetch item by given state (pending, skipped, notified, finished) | [optional] 
 **requester** | **String**| Fetch item by given requester | [optional] 
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**RequestOutCollection**](RequestOutCollection.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_requests_by_workflow**
> RequestOutCollection list_requests_by_workflow(workflow_id, opts)

Return approval requests by given workflow id

Return approval requests by given workflow id

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure API key authorization: APIKey_auth
  config.api_key['x-rh-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-identity'] = 'Bearer'

  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::RequestApi.new
workflow_id = 56 # Integer | Id of workflow
opts = {
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return approval requests by given workflow id
  result = api_instance.list_requests_by_workflow(workflow_id, opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling RequestApi->list_requests_by_workflow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**| Id of workflow | 
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**RequestOutCollection**](RequestOutCollection.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **show_request**
> RequestOut show_request(id)

Return an approval request by given id

Return an approval request by given id

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure API key authorization: APIKey_auth
  config.api_key['x-rh-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-identity'] = 'Bearer'

  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::RequestApi.new
id = 56 # Integer | Query by id

begin
  #Return an approval request by given id
  result = api_instance.show_request(id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling RequestApi->show_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**RequestOut**](RequestOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



