# ApprovalAPIClient::UsersApi

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_request**](UsersApi.md#add_request) | **POST** /workflows/{workflow_id}/requests | Add an approval request by given parameters
[**fetch_request_by_id**](UsersApi.md#fetch_request_by_id) | **GET** /requests/{id} | Return an approval request by given id
[**fetch_request_stages**](UsersApi.md#fetch_request_stages) | **GET** /requests/{request_id}/stages | Return an array of stages by given request id


# **add_request**
> Request add_request(workflow_id, body)

Add an approval request by given parameters

Add an approval request by given parameters

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

api_instance = ApprovalAPIClient::UsersApi.new

workflow_id = 56 # Integer | Id of workflow

body = ApprovalAPIClient::Request.new # Request | Parameters need to create a request


begin
  #Add an approval request by given parameters
  result = api_instance.add_request(workflow_id, body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling UsersApi->add_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**| Id of workflow | 
 **body** | [**Request**](Request.md)| Parameters need to create a request | 

### Return type

[**Request**](Request.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_request_by_id**
> Request fetch_request_by_id(id, )

Return an approval request by given id

Return an approval request by given id

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

api_instance = ApprovalAPIClient::UsersApi.new

id = 56 # Integer | Query by id


begin
  #Return an approval request by given id
  result = api_instance.fetch_request_by_id(id, )
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling UsersApi->fetch_request_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**Request**](Request.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_request_stages**
> Array&lt;Stage&gt; fetch_request_stages(request_id)

Return an array of stages by given request id

Return an array of stages by given request id

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

api_instance = ApprovalAPIClient::UsersApi.new

request_id = 56 # Integer | Id of request


begin
  #Return an array of stages by given request id
  result = api_instance.fetch_request_stages(request_id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling UsersApi->fetch_request_stages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **Integer**| Id of request | 

### Return type

[**Array&lt;Stage&gt;**](Stage.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



