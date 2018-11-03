# ApprovalAPIClient::UsersApi

All URIs are relative to *https://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_request**](UsersApi.md#add_request) | **POST** /workflows/{workflow_id}/requests | Add a new approval request
[**fetch_request_by_id**](UsersApi.md#fetch_request_by_id) | **GET** /requests/{id} | Retrieves approval request by given id
[**fetch_request_stages**](UsersApi.md#fetch_request_stages) | **GET** /requests/{request_id}/stages | Returns stages by given request id


# **add_request**
> Request add_request(workflow_id, body)

Add a new approval request

request creation may not be via rest

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

api_instance = ApprovalAPIClient::UsersApi.new

workflow_id = 56 # Integer | id of workflow

body = ApprovalAPIClient::Request.new # Request | Approval request object that needs to be added


begin
  #Add a new approval request
  result = api_instance.add_request(workflow_id, body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling UsersApi->add_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**| id of workflow | 
 **body** | [**Request**](Request.md)| Approval request object that needs to be added | 

### Return type

[**Request**](Request.md)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_request_by_id**
> Request fetch_request_by_id(id)

Retrieves approval request by given id

Query approval request by given id

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::UsersApi.new

id = 56 # Integer | query by id


begin
  #Retrieves approval request by given id
  result = api_instance.fetch_request_by_id(id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling UsersApi->fetch_request_by_id: #{e}"
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



# **fetch_request_stages**
> Array&lt;Stage&gt; fetch_request_stages(request_id, )

Returns stages by given request id

Returns stages by request id

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

api_instance = ApprovalAPIClient::UsersApi.new

request_id = 56 # Integer | id of request


begin
  #Returns stages by given request id
  result = api_instance.fetch_request_stages(request_id, )
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling UsersApi->fetch_request_stages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **Integer**| id of request | 

### Return type

[**Array&lt;Stage&gt;**](Stage.md)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



