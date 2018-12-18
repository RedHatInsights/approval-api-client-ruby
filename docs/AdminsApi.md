# ApprovalAPIClient::AdminsApi

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_action**](AdminsApi.md#add_action) | **POST** /stages/{stage_id}/actions | Add an action to a given stage
[**add_group**](AdminsApi.md#add_group) | **POST** /groups | Add a new approver group by given parameters
[**add_workflow**](AdminsApi.md#add_workflow) | **POST** /templates/{template_id}/workflows | Add a workflow by given template id
[**fetch_action_by_id**](AdminsApi.md#fetch_action_by_id) | **GET** /actions/{id} | Return an approver action by id
[**fetch_actions**](AdminsApi.md#fetch_actions) | **GET** /actions | Return a list of approver actions
[**fetch_group_by_id**](AdminsApi.md#fetch_group_by_id) | **GET** /groups/{id} | Return approver group by given id
[**fetch_groups**](AdminsApi.md#fetch_groups) | **GET** /groups | Return all approver groups
[**fetch_requests**](AdminsApi.md#fetch_requests) | **GET** /requests | Return an array of approval requests
[**fetch_stage_by_id**](AdminsApi.md#fetch_stage_by_id) | **GET** /stages/{id} | Return an approval stage by given id
[**fetch_stages**](AdminsApi.md#fetch_stages) | **GET** /stages | Return all approval stages
[**fetch_template_by_id**](AdminsApi.md#fetch_template_by_id) | **GET** /templates/{id} | Return a template by given id
[**fetch_template_workflows**](AdminsApi.md#fetch_template_workflows) | **GET** /templates/{template_id}/workflows | Return an array of workflows by given template id
[**fetch_templates**](AdminsApi.md#fetch_templates) | **GET** /templates | Return all templates
[**fetch_workflow_by_id**](AdminsApi.md#fetch_workflow_by_id) | **GET** /workflows/{id} | Return an approval workflow by given id
[**fetch_workflow_requests**](AdminsApi.md#fetch_workflow_requests) | **GET** /workflows/{workflow_id}/requests | Return approval requests by given workflow id
[**fetch_workflows**](AdminsApi.md#fetch_workflows) | **GET** /workflows | Return all approval workflows
[**remove_group**](AdminsApi.md#remove_group) | **DELETE** /groups/{id} | Delete approver group by given id
[**remove_workflow**](AdminsApi.md#remove_workflow) | **DELETE** /workflows/{id} | Delete approval workflow by given id
[**update_group**](AdminsApi.md#update_group) | **PATCH** /groups/{id} | Update an approver group by given id
[**update_workflow**](AdminsApi.md#update_workflow) | **PATCH** /workflows/{id} | Update an approval workflow by given id


# **add_action**
> Action add_action(stage_id, body)

Add an action to a given stage

Add an action to a given stage

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

api_instance = ApprovalAPIClient::AdminsApi.new

stage_id = 56 # Integer | Id of stage

body = ApprovalAPIClient::Action.new # Action | Action object that will be added


begin
  #Add an action to a given stage
  result = api_instance.add_action(stage_id, body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->add_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stage_id** | **Integer**| Id of stage | 
 **body** | [**Action**](Action.md)| Action object that will be added | 

### Return type

[**Action**](Action.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_group**
> Group add_group(body)

Add a new approver group by given parameters

Add a new approver group by given parameters

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

api_instance = ApprovalAPIClient::AdminsApi.new

body = ApprovalAPIClient::Group.new # Group | Parameters need to create approver group


begin
  #Add a new approver group by given parameters
  result = api_instance.add_group(body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->add_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Group**](Group.md)| Parameters need to create approver group | 

### Return type

[**Group**](Group.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_workflow**
> Workflow add_workflow(template_id, body)

Add a workflow by given template id

Add a workflow by given template id

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

api_instance = ApprovalAPIClient::AdminsApi.new

template_id = 56 # Integer | Id of template

body = ApprovalAPIClient::WorkflowGroups.new # WorkflowGroups | Parameters need to create workflow


begin
  #Add a workflow by given template id
  result = api_instance.add_workflow(template_id, body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->add_workflow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Id of template | 
 **body** | [**WorkflowGroups**](WorkflowGroups.md)| Parameters need to create workflow | 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_action_by_id**
> Action fetch_action_by_id(id, )

Return an approver action by id

Return an approver action by id

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

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id


begin
  #Return an approver action by id
  result = api_instance.fetch_action_by_id(id, )
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_action_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**Action**](Action.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_actions**
> Array&lt;Action&gt; fetch_actions(opts)

Return a list of approver actions

Return a list of approver actions

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

api_instance = ApprovalAPIClient::AdminsApi.new

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return a list of approver actions
  result = api_instance.fetch_actions(opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_actions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**Array&lt;Action&gt;**](Action.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_group_by_id**
> Group fetch_group_by_id(id, )

Return approver group by given id

Return approver group by given id

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

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id


begin
  #Return approver group by given id
  result = api_instance.fetch_group_by_id(id, )
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_group_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**Group**](Group.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_groups**
> Array&lt;Group&gt; fetch_groups(opts)

Return all approver groups

Return all approver groups

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

api_instance = ApprovalAPIClient::AdminsApi.new

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return all approver groups
  result = api_instance.fetch_groups(opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**Array&lt;Group&gt;**](Group.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_requests**
> Array&lt;Request&gt; fetch_requests(opts)

Return an array of approval requests

Return an array of requests

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

api_instance = ApprovalAPIClient::AdminsApi.new

opts = { 
  decision: ["decision_example"], # Array<String> | Fetch item by given decision (undecided, approved, denied)
  state: ["state_example"], # Array<String> | Fetch item by given state (pending, skipped, notified, finished)
  requester: "requester_example", # String | Fetch item by given requester
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return an array of approval requests
  result = api_instance.fetch_requests(opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_requests: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **decision** | [**Array&lt;String&gt;**](String.md)| Fetch item by given decision (undecided, approved, denied) | [optional] 
 **state** | [**Array&lt;String&gt;**](String.md)| Fetch item by given state (pending, skipped, notified, finished) | [optional] 
 **requester** | **String**| Fetch item by given requester | [optional] 
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**Array&lt;Request&gt;**](Request.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_stage_by_id**
> Stage fetch_stage_by_id(id, )

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

  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id


begin
  #Return an approval stage by given id
  result = api_instance.fetch_stage_by_id(id, )
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_stage_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**Stage**](Stage.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_stages**
> Array&lt;Stage&gt; fetch_stages(opts)

Return all approval stages

Return all approval stages

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

api_instance = ApprovalAPIClient::AdminsApi.new

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return all approval stages
  result = api_instance.fetch_stages(opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_stages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**Array&lt;Stage&gt;**](Stage.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_template_by_id**
> Template fetch_template_by_id(id, )

Return a template by given id

Return a template by given id

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

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id


begin
  #Return a template by given id
  result = api_instance.fetch_template_by_id(id, )
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_template_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**Template**](Template.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_template_workflows**
> Array&lt;Workflow&gt; fetch_template_workflows(template_id, , opts)

Return an array of workflows by given template id

Return an array of workflows by given template id

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

api_instance = ApprovalAPIClient::AdminsApi.new

template_id = 56 # Integer | Id of template

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return an array of workflows by given template id
  result = api_instance.fetch_template_workflows(template_id, , opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_template_workflows: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Id of template | 
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**Array&lt;Workflow&gt;**](Workflow.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_templates**
> Array&lt;Template&gt; fetch_templates(opts)

Return all templates

Return all templates

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

api_instance = ApprovalAPIClient::AdminsApi.new

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return all templates
  result = api_instance.fetch_templates(opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**Array&lt;Template&gt;**](Template.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_workflow_by_id**
> Workflow fetch_workflow_by_id(id, )

Return an approval workflow by given id

Return an approval workflow by given id

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

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id


begin
  #Return an approval workflow by given id
  result = api_instance.fetch_workflow_by_id(id, )
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_workflow_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_workflow_requests**
> Array&lt;Request&gt; fetch_workflow_requests(workflow_id, , opts)

Return approval requests by given workflow id

Return approval requests by given workflow id

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

api_instance = ApprovalAPIClient::AdminsApi.new

workflow_id = 56 # Integer | Id of workflow

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return approval requests by given workflow id
  result = api_instance.fetch_workflow_requests(workflow_id, , opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_workflow_requests: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**| Id of workflow | 
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**Array&lt;Request&gt;**](Request.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_workflows**
> Array&lt;Workflow&gt; fetch_workflows(opts)

Return all approval workflows

Return all approval workflows

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

api_instance = ApprovalAPIClient::AdminsApi.new

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return all approval workflows
  result = api_instance.fetch_workflows(opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_workflows: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**Array&lt;Workflow&gt;**](Workflow.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **remove_group**
> remove_group(id, )

Delete approver group by given id

Delete group by given id

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

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id


begin
  #Delete approver group by given id
  api_instance.remove_group(id, )
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->remove_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

nil (empty response body)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_workflow**
> remove_workflow(id, )

Delete approval workflow by given id

Delete approval workflow by given id

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

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id


begin
  #Delete approval workflow by given id
  api_instance.remove_workflow(id, )
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->remove_workflow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

nil (empty response body)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_group**
> update_group(id, body)

Update an approver group by given id

Update an approver group by given id

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

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id

body = ApprovalAPIClient::Group.new # Group | Approver group object that needs to be updated


begin
  #Update an approver group by given id
  api_instance.update_group(id, body)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->update_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 
 **body** | [**Group**](Group.md)| Approver group object that needs to be updated | 

### Return type

nil (empty response body)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_workflow**
> update_workflow(id, body)

Update an approval workflow by given id

Update an approval workflow by given id

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

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id

body = ApprovalAPIClient::Workflow.new # Workflow | Parameters need to update approval workflow


begin
  #Update an approval workflow by given id
  api_instance.update_workflow(id, body)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->update_workflow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 
 **body** | [**Workflow**](Workflow.md)| Parameters need to update approval workflow | 

### Return type

nil (empty response body)

### Authorization

[APIKey_auth](../README.md#APIKey_auth), [approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



