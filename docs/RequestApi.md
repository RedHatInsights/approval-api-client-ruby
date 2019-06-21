# ApprovalApiClient::RequestApi

All URIs are relative to *https://cloud.redhat.com//api/approval/v1.0*

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
require 'approval-api-client-ruby'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::RequestApi.new
workflow_id = 'workflow_id_example' # String | Id of workflow
request_in = ApprovalApiClient::RequestIn.new # RequestIn | Parameters need to create a request

begin
  #Add an approval request by given parameters
  result = api_instance.create_request(workflow_id, request_in)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling RequestApi->create_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **String**| Id of workflow | 
 **request_in** | [**RequestIn**](RequestIn.md)| Parameters need to create a request | 

### Return type

[**RequestOut**](RequestOut.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

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
require 'approval-api-client-ruby'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::RequestApi.new
opts = {
  approver: 'approver_example', # String | Fetch requests by given approver username
  limit: 100, # Integer | How many items to return at one time (max 1000)
  offset: 0, # Integer | Starting Offset
  filter: nil # Object | Filter for querying collections.
}

begin
  #Return an array of approval requests
  result = api_instance.list_requests(opts)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling RequestApi->list_requests: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **approver** | **String**| Fetch requests by given approver username | [optional] 
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 100]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]
 **filter** | [**Object**](.md)| Filter for querying collections. | [optional] 

### Return type

[**RequestOutCollection**](RequestOutCollection.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

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
require 'approval-api-client-ruby'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::RequestApi.new
workflow_id = 'workflow_id_example' # String | Id of workflow
opts = {
  limit: 100, # Integer | How many items to return at one time (max 1000)
  offset: 0, # Integer | Starting Offset
  filter: nil # Object | Filter for querying collections.
}

begin
  #Return approval requests by given workflow id
  result = api_instance.list_requests_by_workflow(workflow_id, opts)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling RequestApi->list_requests_by_workflow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **String**| Id of workflow | 
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 100]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]
 **filter** | [**Object**](.md)| Filter for querying collections. | [optional] 

### Return type

[**RequestOutCollection**](RequestOutCollection.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

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
require 'approval-api-client-ruby'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::RequestApi.new
id = 'id_example' # String | Query by id

begin
  #Return an approval request by given id
  result = api_instance.show_request(id)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling RequestApi->show_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Query by id | 

### Return type

[**RequestOut**](RequestOut.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



