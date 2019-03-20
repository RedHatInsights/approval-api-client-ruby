# ApprovalAPIClient::RequestersApi

All URIs are relative to *http://localhost:3000/r/insights/platform/approval*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_request**](RequestersApi.md#add_request) | **POST** /workflows/{workflow_id}/requests | Add an approval request by given parameters
[**fetch_request_by_id**](RequestersApi.md#fetch_request_by_id) | **GET** /requests/{id} | Return an approval request by given id
[**fetch_request_stages**](RequestersApi.md#fetch_request_stages) | **GET** /requests/{request_id}/stages | Return an array of stages by given request id
[**fetch_stage_by_id**](RequestersApi.md#fetch_stage_by_id) | **GET** /stages/{id} | Return an approval stage by given id


# **add_request**
> RequestOut add_request(workflow_id, body)

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
end

api_instance = ApprovalAPIClient::RequestersApi.new

workflow_id = 56 # Integer | Id of workflow

body = ApprovalAPIClient::RequestIn.new # RequestIn | Parameters need to create a request


begin
  #Add an approval request by given parameters
  result = api_instance.add_request(workflow_id, body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling RequestersApi->add_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**| Id of workflow | 
 **body** | [**RequestIn**](RequestIn.md)| Parameters need to create a request | 

### Return type

[**RequestOut**](RequestOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_request_by_id**
> RequestOut fetch_request_by_id(id, )

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
end

api_instance = ApprovalAPIClient::RequestersApi.new

id = 56 # Integer | Query by id


begin
  #Return an approval request by given id
  result = api_instance.fetch_request_by_id(id, )
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling RequestersApi->fetch_request_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**RequestOut**](RequestOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_request_stages**
> Array&lt;StageOut&gt; fetch_request_stages(request_id)

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
end

api_instance = ApprovalAPIClient::RequestersApi.new

request_id = 56 # Integer | Id of request


begin
  #Return an array of stages by given request id
  result = api_instance.fetch_request_stages(request_id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling RequestersApi->fetch_request_stages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **Integer**| Id of request | 

### Return type

[**Array&lt;StageOut&gt;**](StageOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_stage_by_id**
> StageOut fetch_stage_by_id(id, )

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
end

api_instance = ApprovalAPIClient::RequestersApi.new

id = 56 # Integer | Query by id


begin
  #Return an approval stage by given id
  result = api_instance.fetch_stage_by_id(id, )
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling RequestersApi->fetch_stage_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**StageOut**](StageOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



