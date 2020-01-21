# ApprovalApiClient::WorkflowApi

All URIs are relative to *https://cloud.redhat.com//api/approval/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_workflow_to_template**](WorkflowApi.md#add_workflow_to_template) | **POST** /templates/{template_id}/workflows | Add a workflow by given template id, only available for admin
[**destroy_workflow**](WorkflowApi.md#destroy_workflow) | **DELETE** /workflows/{id} | Delete approval workflow by given id, only available for admin
[**link_workflow**](WorkflowApi.md#link_workflow) | **POST** /workflows/{id}/link | Create a resource link to a given workflow
[**list_workflows**](WorkflowApi.md#list_workflows) | **GET** /workflows | Return all approval workflows, only available for admin
[**list_workflows_by_template**](WorkflowApi.md#list_workflows_by_template) | **GET** /templates/{template_id}/workflows | Return an array of workflows by given template id, only available for admin
[**show_workflow**](WorkflowApi.md#show_workflow) | **GET** /workflows/{id} | Return an approval workflow by given id, only available for admin
[**unlink_workflow**](WorkflowApi.md#unlink_workflow) | **POST** /workflows/{id}/unlink | Break the link between a resource object and selected workflow
[**update_workflow**](WorkflowApi.md#update_workflow) | **PATCH** /workflows/{id} | Update an approval workflow by given id, only available for admin



## add_workflow_to_template

> Workflow add_workflow_to_template(template_id, workflow)

Add a workflow by given template id, only available for admin

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
workflow = ApprovalApiClient::Workflow.new # Workflow | Parameters need to create workflow

begin
  #Add a workflow by given template id, only available for admin
  result = api_instance.add_workflow_to_template(template_id, workflow)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling WorkflowApi->add_workflow_to_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**| Id of template | 
 **workflow** | [**Workflow**](Workflow.md)| Parameters need to create workflow | 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## destroy_workflow

> destroy_workflow(id)

Delete approval workflow by given id, only available for admin

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
  #Delete approval workflow by given id, only available for admin
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


## link_workflow

> link_workflow(id, resource_object)

Create a resource link to a given workflow

Link a resource object to a given workflow

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
resource_object = ApprovalApiClient::ResourceObject.new # ResourceObject | Parameters needed to create a link

begin
  #Create a resource link to a given workflow
  api_instance.link_workflow(id, resource_object)
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling WorkflowApi->link_workflow: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Query by id | 
 **resource_object** | [**ResourceObject**](ResourceObject.md)| Parameters needed to create a link | 

### Return type

nil (empty response body)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## list_workflows

> WorkflowCollection list_workflows(opts)

Return all approval workflows, only available for admin

Depends on the query parameters, either return all workflows in ascending sequence order when no parameters are provided; or return the workflows linking to the resource object whose app_name, object_type and object_id are specified by query parameters

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
  app_name: 'app_name_example', # String | Name of the application
  object_id: 'object_id_example', # String | Id of the resource object
  object_type: 'object_type_example', # String | Type of the resource object
  limit: 100, # Integer | How many items to return at one time (max 1000)
  offset: 0, # Integer | Starting Offset
  filter: nil # Object | Filter for querying collections.
}

begin
  #Return all approval workflows, only available for admin
  result = api_instance.list_workflows(opts)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling WorkflowApi->list_workflows: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_name** | **String**| Name of the application | [optional] 
 **object_id** | **String**| Id of the resource object | [optional] 
 **object_type** | **String**| Type of the resource object | [optional] 
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 100]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]
 **filter** | [**Object**](.md)| Filter for querying collections. | [optional] 

### Return type

[**WorkflowCollection**](WorkflowCollection.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## list_workflows_by_template

> WorkflowCollection list_workflows_by_template(template_id, opts)

Return an array of workflows by given template id, only available for admin

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
  #Return an array of workflows by given template id, only available for admin
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

[**WorkflowCollection**](WorkflowCollection.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_workflow

> Workflow show_workflow(id)

Return an approval workflow by given id, only available for admin

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
  #Return an approval workflow by given id, only available for admin
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

[**Workflow**](Workflow.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## unlink_workflow

> unlink_workflow(id, resource_object)

Break the link between a resource object and selected workflow

Break the link between a resource object and selected workflow

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
resource_object = ApprovalApiClient::ResourceObject.new # ResourceObject | Parameters needed to remove a link

begin
  #Break the link between a resource object and selected workflow
  api_instance.unlink_workflow(id, resource_object)
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling WorkflowApi->unlink_workflow: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Query by id | 
 **resource_object** | [**ResourceObject**](ResourceObject.md)| Parameters needed to remove a link | 

### Return type

nil (empty response body)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_workflow

> Workflow update_workflow(id, workflow)

Update an approval workflow by given id, only available for admin

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
workflow = ApprovalApiClient::Workflow.new # Workflow | Parameters need to update approval workflow

begin
  #Update an approval workflow by given id, only available for admin
  result = api_instance.update_workflow(id, workflow)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling WorkflowApi->update_workflow: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Query by id | 
 **workflow** | [**Workflow**](Workflow.md)| Parameters need to update approval workflow | 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

