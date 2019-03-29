# ApprovalApiClient::TemplateApi

All URIs are relative to *http://localhost/api/approval/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_templates**](TemplateApi.md#list_templates) | **GET** /templates | Return all templates
[**show_template**](TemplateApi.md#show_template) | **GET** /templates/{id} | Return a template by given id


# **list_templates**
> TemplateOutCollection list_templates(opts)

Return all templates

Return all templates

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

api_instance = ApprovalApiClient::TemplateApi.new
opts = {
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return all templates
  result = api_instance.list_templates(opts)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling TemplateApi->list_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**TemplateOutCollection**](TemplateOutCollection.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **show_template**
> TemplateOut show_template(id)

Return a template by given id

Return a template by given id

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

api_instance = ApprovalApiClient::TemplateApi.new
id = 56 # Integer | Query by id

begin
  #Return a template by given id
  result = api_instance.show_template(id)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling TemplateApi->show_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**TemplateOut**](TemplateOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



