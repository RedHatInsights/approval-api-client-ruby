# ApprovalApiClient::TemplateApi

All URIs are relative to *https://cloud.redhat.com//api/approval/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_templates**](TemplateApi.md#list_templates) | **GET** /templates | Return all templates, only available for admin
[**show_template**](TemplateApi.md#show_template) | **GET** /templates/{id} | Return a template by given id, only available for admin



## list_templates

> TemplateCollection list_templates(opts)

Return all templates, only available for admin

Return all templates

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

api_instance = ApprovalApiClient::TemplateApi.new
opts = {
  limit: 100, # Integer | How many items to return at one time (max 1000)
  offset: 0, # Integer | Starting Offset
  filter: nil # Object | Filter for querying collections.
}

begin
  #Return all templates, only available for admin
  result = api_instance.list_templates(opts)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling TemplateApi->list_templates: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 100]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]
 **filter** | [**Object**](.md)| Filter for querying collections. | [optional] 

### Return type

[**TemplateCollection**](TemplateCollection.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_template

> Template show_template(id)

Return a template by given id, only available for admin

Return a template by given id

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

api_instance = ApprovalApiClient::TemplateApi.new
id = 'id_example' # String | Query by id

begin
  #Return a template by given id, only available for admin
  result = api_instance.show_template(id)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling TemplateApi->show_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Query by id | 

### Return type

[**Template**](Template.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

