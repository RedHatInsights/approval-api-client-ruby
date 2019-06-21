# ApprovalApiClient::WorkflowApi

All URIs are relative to *https://cloud.redhat.com//api/approval/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_workflow_to_template**](WorkflowApi.md#add_workflow_to_template) | **POST** /templates/{template_id}/workflows | Add a workflow by given template id
[**destroy_workflow**](WorkflowApi.md#destroy_workflow) | **DELETE** /workflows/{id} | Delete approval workflow by given id
[**list_workflows**](WorkflowApi.md#list_workflows) | **GET** /workflows | Return all approval workflows
[**list_workflows_by_template**](WorkflowApi.md#list_workflows_by_template) | **GET** /templates/{template_id}/workflows | Return an array of workflows by given template id
[**show_workflow**](WorkflowApi.md#show_workflow) | **GET** /workflows/{id} | Return an approval workflow by given id
[**update_workflow**](WorkflowApi.md#update_workflow) | **PATCH** /workflows/{id} | Update an approval workflow by given id


# **add_workflow_to_template**
> WorkflowOut add_workflow_to_template(template_id, workflow_in)

Add a workflow by given template id

Add a workflow by given template id

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

api_instance = ApprovalApiClient::WorkflowApi.new
template_id = 'template_id_example' # String | Id of template
workflow_in = ApprovalApiClient::WorkflowIn.new # WorkflowIn | Parameters need to create workflow

begin
  #Add a workflow by given template id
  result = api_instance.add_workflow_to_template(template_id, workflow_in)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling WorkflowApi->add_workflow_to_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**| Id of template | 
 **workflow_in** | [**WorkflowIn**](WorkflowIn.md)| Parameters need to create workflow | 

### Return type

[**WorkflowOut**](WorkflowOut.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **destroy_workflow**
> destroy_workflow(id)

Delete approval workflow by given id

Delete approval workflow by given id

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

api_instance = ApprovalApiClient::WorkflowApi.new
id = 'id_example' # String | Query by id

begin
  #Delete approval workflow by given id
  api_instance.destroy_workflow(id)
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling WorkflowApi->destroy_workflow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Query by id | 

### Return type

nil (empty response body)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list_workflows**
> WorkflowOutCollection list_workflows(opts)

Return all approval workflows

Return all approval workflows

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

api_instance = ApprovalApiClient::WorkflowApi.new
opts = {
  limit: 100, # Integer | How many items to return at one time (max 1000)
  offset: 0, # Integer | Starting Offset
  filter: nil # Object | Filter for querying collections.
}

begin
  #Return all approval workflows
  result = api_instance.list_workflows(opts)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling WorkflowApi->list_workflows: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 100]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]
 **filter** | [**Object**](.md)| Filter for querying collections. | [optional] 

### Return type

[**WorkflowOutCollection**](WorkflowOutCollection.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list_workflows_by_template**
> WorkflowOutCollection list_workflows_by_template(template_id, opts)

Return an array of workflows by given template id

Return an array of workflows by given template id

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

api_instance = ApprovalApiClient::WorkflowApi.new
template_id = 'template_id_example' # String | Id of template
opts = {
  limit: 100, # Integer | How many items to return at one time (max 1000)
  offset: 0, # Integer | Starting Offset
  filter: nil # Object | Filter for querying collections.
}

begin
  #Return an array of workflows by given template id
  result = api_instance.list_workflows_by_template(template_id, opts)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling WorkflowApi->list_workflows_by_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**| Id of template | 
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 100]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]
 **filter** | [**Object**](.md)| Filter for querying collections. | [optional] 

### Return type

[**WorkflowOutCollection**](WorkflowOutCollection.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **show_workflow**
> WorkflowOut show_workflow(id)

Return an approval workflow by given id

Return an approval workflow by given id

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

api_instance = ApprovalApiClient::WorkflowApi.new
id = 'id_example' # String | Query by id

begin
  #Return an approval workflow by given id
  result = api_instance.show_workflow(id)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling WorkflowApi->show_workflow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Query by id | 

### Return type

[**WorkflowOut**](WorkflowOut.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update_workflow**
> WorkflowOut update_workflow(id, workflow_in)

Update an approval workflow by given id

Update an approval workflow by given id

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

api_instance = ApprovalApiClient::WorkflowApi.new
id = 'id_example' # String | Query by id
workflow_in = ApprovalApiClient::WorkflowIn.new # WorkflowIn | Parameters need to update approval workflow

begin
  #Update an approval workflow by given id
  result = api_instance.update_workflow(id, workflow_in)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling WorkflowApi->update_workflow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Query by id | 
 **workflow_in** | [**WorkflowIn**](WorkflowIn.md)| Parameters need to update approval workflow | 

### Return type

[**WorkflowOut**](WorkflowOut.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*



