# ApprovalAPIClient::AdminsApi

All URIs are relative to *https://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_action**](AdminsApi.md#add_action) | **POST** /stages/{stage_id}/actions | Add an action
[**add_group**](AdminsApi.md#add_group) | **POST** /groups | Add a new approver group
[**add_stage**](AdminsApi.md#add_stage) | **POST** /requests/{request_id}/stages | Add a new stage
[**add_template**](AdminsApi.md#add_template) | **POST** /templates | Add a new template to the orgnization
[**add_workflow**](AdminsApi.md#add_workflow) | **POST** /templates/{template_id}/workflows | Add a new workflow
[**fetch_action_by_id**](AdminsApi.md#fetch_action_by_id) | **GET** /actions/{id} | Finds approver action by id
[**fetch_actions**](AdminsApi.md#fetch_actions) | **GET** /actions | Returns list of approver actions
[**fetch_group_by_id**](AdminsApi.md#fetch_group_by_id) | **GET** /groups/{id} | Finds approver group by id
[**fetch_groups**](AdminsApi.md#fetch_groups) | **GET** /groups | Returns list of approver groups
[**fetch_requests**](AdminsApi.md#fetch_requests) | **GET** /requests | List approval requests
[**fetch_stage_by_id**](AdminsApi.md#fetch_stage_by_id) | **GET** /stages/{id} | Retrieves approval stages by given id
[**fetch_stages**](AdminsApi.md#fetch_stages) | **GET** /stages | List approval stages
[**fetch_template_by_id**](AdminsApi.md#fetch_template_by_id) | **GET** /templates/{id} | Finds template by id
[**fetch_template_workflows**](AdminsApi.md#fetch_template_workflows) | **GET** /templates/{template_id}/workflows | Returns list of workflows by given template id
[**fetch_templates**](AdminsApi.md#fetch_templates) | **GET** /templates | Returns list of templates
[**fetch_workflow_by_id**](AdminsApi.md#fetch_workflow_by_id) | **GET** /workflows/{id} | List approval workflow by id
[**fetch_workflow_requests**](AdminsApi.md#fetch_workflow_requests) | **GET** /workflows/{workflow_id}/requests | List of all approval requests
[**fetch_workflows**](AdminsApi.md#fetch_workflows) | **GET** /workflows | List all approval workflows
[**remove_action**](AdminsApi.md#remove_action) | **DELETE** /actions/{id} | Delete action by id
[**remove_group**](AdminsApi.md#remove_group) | **DELETE** /groups/{id} | Delete approver group by id
[**remove_request**](AdminsApi.md#remove_request) | **DELETE** /requests/{id} | Delete approval request by id
[**remove_stage**](AdminsApi.md#remove_stage) | **DELETE** /stages/{id} | Delete approval stage by id
[**remove_template**](AdminsApi.md#remove_template) | **DELETE** /templates/{id} | Delete template by id
[**remove_workflow**](AdminsApi.md#remove_workflow) | **DELETE** /workflows/{id} | Delete approval workflow by id
[**update_action**](AdminsApi.md#update_action) | **PUT** /actions/{id} | Update an existing action
[**update_group**](AdminsApi.md#update_group) | **PUT** /groups/{id} | Update an existing approver group
[**update_request**](AdminsApi.md#update_request) | **PUT** /requests/{id} | Update an existing approval request status
[**update_stage**](AdminsApi.md#update_stage) | **PUT** /stages/{id} | Update an existing approval stage
[**update_template**](AdminsApi.md#update_template) | **PUT** /templates/{id} | Update an existing template
[**update_workflow**](AdminsApi.md#update_workflow) | **PUT** /workflows/{id} | Update an existing approval workflow


# **add_action**
> Action add_action(stage_id, body)

Add an action

Add an action

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

stage_id = 56 # Integer | id of stage

body = ApprovalAPIClient::Action.new # Action | Action object that will be added


begin
  #Add an action
  result = api_instance.add_action(stage_id, body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->add_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stage_id** | **Integer**| id of stage | 
 **body** | [**Action**](Action.md)| Action object that will be added | 

### Return type

[**Action**](Action.md)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_group**
> Group add_group(body)

Add a new approver group

Add a new approver group

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

body = ApprovalAPIClient::Group.new # Group | Approver group object that needs to be added to the orgnization


begin
  #Add a new approver group
  result = api_instance.add_group(body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->add_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Group**](Group.md)| Approver group object that needs to be added to the orgnization | 

### Return type

[**Group**](Group.md)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_stage**
> Stage add_stage(request_id, body)

Add a new stage

Add stage

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

request_id = 56 # Integer | id of request

body = ApprovalAPIClient::Stage.new # Stage | Stage that needs to be added


begin
  #Add a new stage
  result = api_instance.add_stage(request_id, body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->add_stage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **Integer**| id of request | 
 **body** | [**Stage**](Stage.md)| Stage that needs to be added | 

### Return type

[**Stage**](Stage.md)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_template**
> Template add_template(body)

Add a new template to the orgnization

Add template

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

body = ApprovalAPIClient::Template.new # Template | Approval template object that needs to be added to the orgnization


begin
  #Add a new template to the orgnization
  result = api_instance.add_template(body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->add_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Template**](Template.md)| Approval template object that needs to be added to the orgnization | 

### Return type

[**Template**](Template.md)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_workflow**
> Workflow add_workflow(template_id, body)

Add a new workflow

Add workflow

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

template_id = 56 # Integer | id of template

body = ApprovalAPIClient::Workflow.new # Workflow | Workflow that needs to be added


begin
  #Add a new workflow
  result = api_instance.add_workflow(template_id, body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->add_workflow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| id of template | 
 **body** | [**Workflow**](Workflow.md)| Workflow that needs to be added | 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_action_by_id**
> Action fetch_action_by_id(id)

Finds approver action by id

Finds approver action by id

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id


begin
  #Finds approver action by id
  result = api_instance.fetch_action_by_id(id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_action_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 

### Return type

[**Action**](Action.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_actions**
> Array&lt;Action&gt; fetch_actions(opts)

Returns list of approver actions

Returns a list of approver actions

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
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
  #Returns list of approver actions
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

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_group_by_id**
> Group fetch_group_by_id(id)

Finds approver group by id

Finds approver group by id

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id


begin
  #Finds approver group by id
  result = api_instance.fetch_group_by_id(id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_group_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 

### Return type

[**Group**](Group.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_groups**
> Array&lt;Group&gt; fetch_groups(opts)

Returns list of approver groups

Returns a list of approver groups

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
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
  #Returns list of approver groups
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

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_requests**
> Array&lt;Request&gt; fetch_requests(opts)

List approval requests

List requests

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::AdminsApi.new

opts = { 
  decision: ["decision_example"], # Array<String> | fetch item by given decision (unknown, approved, denied)
  state: ["state_example"], # Array<String> | fetch item by given state (pending, skipped, notified, finished)
  requester: "requester_example", # String | fetch item by given requester
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #List approval requests
  result = api_instance.fetch_requests(opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_requests: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **decision** | [**Array&lt;String&gt;**](String.md)| fetch item by given decision (unknown, approved, denied) | [optional] 
 **state** | [**Array&lt;String&gt;**](String.md)| fetch item by given state (pending, skipped, notified, finished) | [optional] 
 **requester** | **String**| fetch item by given requester | [optional] 
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**Array&lt;Request&gt;**](Request.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_stage_by_id**
> Request fetch_stage_by_id(id)

Retrieves approval stages by given id

Get stage by given id

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id


begin
  #Retrieves approval stages by given id
  result = api_instance.fetch_stage_by_id(id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_stage_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 

### Return type

[**Request**](Request.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_stages**
> Array&lt;Stage&gt; fetch_stages(opts)

List approval stages

List all approval stages

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::AdminsApi.new

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #List approval stages
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_template_by_id**
> Template fetch_template_by_id(id)

Finds template by id

Find template by given id

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id


begin
  #Finds template by id
  result = api_instance.fetch_template_by_id(id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_template_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 

### Return type

[**Template**](Template.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_template_workflows**
> Array&lt;Workflow&gt; fetch_template_workflows(template_id, , opts)

Returns list of workflows by given template id

Returns a list of workflows

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

template_id = 56 # Integer | id of template

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Returns list of workflows by given template id
  result = api_instance.fetch_template_workflows(template_id, , opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_template_workflows: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| id of template | 
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**Array&lt;Workflow&gt;**](Workflow.md)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_templates**
> Array&lt;Template&gt; fetch_templates(opts)

Returns list of templates

Returns list of templates

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
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
  #Returns list of templates
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

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_workflow_by_id**
> Workflow fetch_workflow_by_id(id)

List approval workflow by id

Display workflow by given id

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id


begin
  #List approval workflow by id
  result = api_instance.fetch_workflow_by_id(id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_workflow_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 

### Return type

[**Workflow**](Workflow.md)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_workflow_requests**
> Array&lt;Request&gt; fetch_workflow_requests(workflow_id, , opts)

List of all approval requests

Returns a list of approval requests

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

workflow_id = 56 # Integer | id of workflow

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #List of all approval requests
  result = api_instance.fetch_workflow_requests(workflow_id, , opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_workflow_requests: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_id** | **Integer**| id of workflow | 
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**Array&lt;Request&gt;**](Request.md)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_workflows**
> Array&lt;Workflow&gt; fetch_workflows(opts)

List all approval workflows

List all approval workflows

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::AdminsApi.new

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #List all approval workflows
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **remove_action**
> remove_action(id)

Delete action by id

Delete action by id

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id


begin
  #Delete action by id
  api_instance.remove_action(id)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->remove_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_group**
> remove_group(id)

Delete approver group by id

Delete group

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id


begin
  #Delete approver group by id
  api_instance.remove_group(id)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->remove_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_request**
> remove_request(id)

Delete approval request by id

Delete approval request by id

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id


begin
  #Delete approval request by id
  api_instance.remove_request(id)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->remove_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_stage**
> remove_stage(id)

Delete approval stage by id

Delete approval stage

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id


begin
  #Delete approval stage by id
  api_instance.remove_stage(id)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->remove_stage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_template**
> remove_template(id)

Delete template by id

Delete template by id

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id


begin
  #Delete template by id
  api_instance.remove_template(id)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->remove_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_workflow**
> remove_workflow(id)

Delete approval workflow by id

Delete approval workflow by id

### Example
```ruby
# load the gem
require 'approval_api_client'

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id


begin
  #Delete approval workflow by id
  api_instance.remove_workflow(id)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->remove_workflow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_action**
> update_action(idbody)

Update an existing action

Update an existing action

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id

body = ApprovalAPIClient::Action.new # Action | Action object that needs to be updated


begin
  #Update an existing action
  api_instance.update_action(idbody)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->update_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 
 **body** | [**Action**](Action.md)| Action object that needs to be updated | 

### Return type

nil (empty response body)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_group**
> update_group(idbody)

Update an existing approver group

Update an existing approver group

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id

body = ApprovalAPIClient::Group.new # Group | Approver group object that needs to be updated


begin
  #Update an existing approver group
  api_instance.update_group(idbody)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->update_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 
 **body** | [**Group**](Group.md)| Approver group object that needs to be updated | 

### Return type

nil (empty response body)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_request**
> update_request(idbody)

Update an existing approval request status

Update request status

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id

body = ApprovalAPIClient::Request.new # Request | new status


begin
  #Update an existing approval request status
  api_instance.update_request(idbody)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->update_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 
 **body** | [**Request**](Request.md)| new status | 

### Return type

nil (empty response body)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_stage**
> update_stage(idbody)

Update an existing approval stage

Update stage

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id

body = ApprovalAPIClient::Stage.new # Stage | new stage


begin
  #Update an existing approval stage
  api_instance.update_stage(idbody)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->update_stage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 
 **body** | [**Stage**](Stage.md)| new stage | 

### Return type

nil (empty response body)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_template**
> update_template(idbody)

Update an existing template

Update template

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id

body = ApprovalAPIClient::Template.new # Template | Template needs to be updated


begin
  #Update an existing template
  api_instance.update_template(idbody)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->update_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 
 **body** | [**Template**](Template.md)| Template needs to be updated | 

### Return type

nil (empty response body)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_workflow**
> update_workflow(idbody)

Update an existing approval workflow

Update approval workflow

### Example
```ruby
# load the gem
require 'approval_api_client'
# setup authorization
ApprovalAPIClient.configure do |config|
  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | query by id

body = ApprovalAPIClient::Workflow.new # Workflow | Approval workflow object that needs to be updated


begin
  #Update an existing approval workflow
  api_instance.update_workflow(idbody)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->update_workflow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| query by id | 
 **body** | [**Workflow**](Workflow.md)| Approval workflow object that needs to be updated | 

### Return type

nil (empty response body)

### Authorization

[approval_auth](../README.md#approval_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



