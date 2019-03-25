# ApprovalApiClient::StageApi

All URIs are relative to *http://localhost/api/approval*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_stages_by_request**](StageApi.md#list_stages_by_request) | **GET** /requests/{request_id}/stages | Return an array of stages by given request id
[**show_stage**](StageApi.md#show_stage) | **GET** /stages/{id} | Return an approval stage by given id


# **list_stages_by_request**
> StageOutCollection list_stages_by_request(request_id)

Return an array of stages by given request id

Return an array of stages by given request id

### Example
```ruby
# load the gem
require 'approval-api-client-ruby'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure API key authorization: APIKey_auth
  config.api_key['x-rh-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-identity'] = 'Bearer'

  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::StageApi.new
request_id = 56 # Integer | Id of request

begin
  #Return an array of stages by given request id
  result = api_instance.list_stages_by_request(request_id)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling StageApi->list_stages_by_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **Integer**| Id of request | 

### Return type

[**StageOutCollection**](StageOutCollection.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **show_stage**
> StageOut show_stage(id)

Return an approval stage by given id

Return an approval stage by given id

### Example
```ruby
# load the gem
require 'approval-api-client-ruby'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure API key authorization: APIKey_auth
  config.api_key['x-rh-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-identity'] = 'Bearer'

  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::StageApi.new
id = 56 # Integer | Query by id

begin
  #Return an approval stage by given id
  result = api_instance.show_stage(id)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling StageApi->show_stage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**StageOut**](StageOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



