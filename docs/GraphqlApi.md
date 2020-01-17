# ApprovalApiClient::GraphqlApi

All URIs are relative to *https://cloud.redhat.com//api/approval/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_graphql**](GraphqlApi.md#post_graphql) | **POST** /graphql | Perform a GraphQL Query



## post_graphql

> GraphqlOut post_graphql(graphql_in)

Perform a GraphQL Query

Performs a GraphQL Query

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

api_instance = ApprovalApiClient::GraphqlApi.new
graphql_in = ApprovalApiClient::GraphqlIn.new # GraphqlIn | GraphQL Query Request

begin
  #Perform a GraphQL Query
  result = api_instance.post_graphql(graphql_in)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling GraphqlApi->post_graphql: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graphql_in** | [**GraphqlIn**](GraphqlIn.md)| GraphQL Query Request | 

### Return type

[**GraphqlOut**](GraphqlOut.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

