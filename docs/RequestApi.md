# ApprovalApiClient::RequestApi

All URIs are relative to *https://cloud.redhat.com//api/approval/v1.2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_request**](RequestApi.md#create_request) | **POST** /requests | Add an approval request by given parameters
[**list_requests**](RequestApi.md#list_requests) | **GET** /requests | Return an array of requester made approval requests, available to anyone
[**list_requests_by_request**](RequestApi.md#list_requests_by_request) | **GET** /requests/{request_id}/requests | Return an array of child requests of a given request id
[**show_request**](RequestApi.md#show_request) | **GET** /requests/{id} | Return an approval request by given id
[**show_request_content**](RequestApi.md#show_request_content) | **GET** /requests/{request_id}/content | Return request content of a given request id



## create_request

> Request create_request(request_in)

Add an approval request by given parameters

Add an approval request by given parameters, available to anyone

### Example

```ruby
# load the gem
require 'approval-api-client'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::RequestApi.new
request_in = ApprovalApiClient::RequestIn.new # RequestIn | Parameters need to create a request

begin
  #Add an approval request by given parameters
  result = api_instance.create_request(request_in)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling RequestApi->create_request: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_in** | [**RequestIn**](RequestIn.md)| Parameters need to create a request | 

### Return type

[**Request**](Request.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_requests

> RequestCollection list_requests(opts)

Return an array of requester made approval requests, available to anyone

The result depends on the x-rh-persona header (approval/admin, approval/requseter, or approval/approver). Program generated child requests are not included.

### Example

```ruby
# load the gem
require 'approval-api-client'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::RequestApi.new
opts = {
  x_rh_persona: 'x_rh_persona_example', # String | Current login user's persona
  limit: 100, # Integer | How many items to return at one time (max 1000)
  offset: 0, # Integer | Starting Offset
  filter: nil, # Object | Filter for querying collections.
  sort_by: 'sort_by_example' # String | Parameter to sort collection
}

begin
  #Return an array of requester made approval requests, available to anyone
  result = api_instance.list_requests(opts)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling RequestApi->list_requests: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_rh_persona** | **String**| Current login user&#39;s persona | [optional] 
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 100]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]
 **filter** | [**Object**](.md)| Filter for querying collections. | [optional] 
 **sort_by** | **String**| Parameter to sort collection | [optional] 

### Return type

[**RequestCollection**](RequestCollection.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_requests_by_request

> RequestCollection list_requests_by_request(request_id, opts)

Return an array of child requests of a given request id

Return an array of child requests of a given request id. The result depends on the x-rh-persona header (approval/admin, approval/requseter, or approval/approver).

### Example

```ruby
# load the gem
require 'approval-api-client'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::RequestApi.new
request_id = 'request_id_example' # String | Id of request
opts = {
  x_rh_persona: 'x_rh_persona_example' # String | Current login user's persona
}

begin
  #Return an array of child requests of a given request id
  result = api_instance.list_requests_by_request(request_id, opts)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling RequestApi->list_requests_by_request: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **String**| Id of request | 
 **x_rh_persona** | **String**| Current login user&#39;s persona | [optional] 

### Return type

[**RequestCollection**](RequestCollection.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_request

> Request show_request(id)

Return an approval request by given id

Return an approval request by given id, available to anyone who can access the request

### Example

```ruby
# load the gem
require 'approval-api-client'
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

[**Request**](Request.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## show_request_content

> Object show_request_content(request_id)

Return request content of a given request id

Return request content of a given request id, available to all

### Example

```ruby
# load the gem
require 'approval-api-client'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::RequestApi.new
request_id = 'request_id_example' # String | Id of request

begin
  #Return request content of a given request id
  result = api_instance.show_request_content(request_id)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling RequestApi->show_request_content: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **String**| Id of request | 

### Return type

**Object**

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

