# ApprovalAPIClient::AdminsApi

All URIs are relative to *http://localhost:3000/r/insights/platform/approval*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_action**](AdminsApi.md#add_action) | **POST** /stages/{stage_id}/actions | Add an action to a given stage
[**add_action_by_request_id**](AdminsApi.md#add_action_by_request_id) | **POST** /requests/{request_id}/actions | Add an action to a given request
[**add_group**](AdminsApi.md#add_group) | **POST** /groups | Add a new user group by given parameters
[**add_user**](AdminsApi.md#add_user) | **POST** /users | Add a new user by given parameters
[**add_workflow**](AdminsApi.md#add_workflow) | **POST** /templates/{template_id}/workflows | Add a workflow by given template id
[**fetch_action_by_id**](AdminsApi.md#fetch_action_by_id) | **GET** /actions/{id} | Return an user action by id
[**fetch_actions**](AdminsApi.md#fetch_actions) | **GET** /actions | Return a list of user actions
[**fetch_group_by_id**](AdminsApi.md#fetch_group_by_id) | **GET** /groups/{id} | Return user group by given id
[**fetch_groups**](AdminsApi.md#fetch_groups) | **GET** /groups | Return all user groups
[**fetch_groups_by_user_id**](AdminsApi.md#fetch_groups_by_user_id) | **GET** /users/{user_id}/groups | Return associated groups by given user id
[**fetch_requests**](AdminsApi.md#fetch_requests) | **GET** /requests | Return an array of approval requests
[**fetch_requests_by_user_id**](AdminsApi.md#fetch_requests_by_user_id) | **GET** /users/{user_id}/requests | Return associated requests by given user id
[**fetch_stage_by_id**](AdminsApi.md#fetch_stage_by_id) | **GET** /stages/{id} | Return an approval stage by given id
[**fetch_stages**](AdminsApi.md#fetch_stages) | **GET** /stages | Return all approval stages
[**fetch_template_by_id**](AdminsApi.md#fetch_template_by_id) | **GET** /templates/{id} | Return a template by given id
[**fetch_template_workflows**](AdminsApi.md#fetch_template_workflows) | **GET** /templates/{template_id}/workflows | Return an array of workflows by given template id
[**fetch_templates**](AdminsApi.md#fetch_templates) | **GET** /templates | Return all templates
[**fetch_user_by_id**](AdminsApi.md#fetch_user_by_id) | **GET** /users/{id} | Return user by given id
[**fetch_users**](AdminsApi.md#fetch_users) | **GET** /users | Return a list of users
[**fetch_users_by_group_id**](AdminsApi.md#fetch_users_by_group_id) | **GET** /groups/{group_id}/users | Return associated users by given group id
[**fetch_workflow_by_id**](AdminsApi.md#fetch_workflow_by_id) | **GET** /workflows/{id} | Return an approval workflow by given id
[**fetch_workflow_requests**](AdminsApi.md#fetch_workflow_requests) | **GET** /workflows/{workflow_id}/requests | Return approval requests by given workflow id
[**fetch_workflows**](AdminsApi.md#fetch_workflows) | **GET** /workflows | Return all approval workflows
[**group_operation**](AdminsApi.md#group_operation) | **POST** /groups/{id} | Operation on a list of users to a given group
[**remove_group**](AdminsApi.md#remove_group) | **DELETE** /groups/{id} | Delete user group by given id
[**remove_user**](AdminsApi.md#remove_user) | **DELETE** /users/{id} | Delete user by given id
[**remove_workflow**](AdminsApi.md#remove_workflow) | **DELETE** /workflows/{id} | Delete approval workflow by given id
[**update_group**](AdminsApi.md#update_group) | **PATCH** /groups/{id} | Update an user group by given id
[**update_user**](AdminsApi.md#update_user) | **PATCH** /users/{id} | Update an user by given id
[**update_workflow**](AdminsApi.md#update_workflow) | **PATCH** /workflows/{id} | Update an approval workflow by given id


# **add_action**
> ActionOut add_action(stage_id, body)

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
end

api_instance = ApprovalAPIClient::AdminsApi.new

stage_id = 56 # Integer | Id of stage

body = ApprovalAPIClient::ActionIn.new # ActionIn | Action object that will be added


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
 **body** | [**ActionIn**](ActionIn.md)| Action object that will be added | 

### Return type

[**ActionOut**](ActionOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_action_by_request_id**
> ActionOut add_action_by_request_id(request_idbody)

Add an action to a given request

Add an action to a given request

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

api_instance = ApprovalAPIClient::AdminsApi.new

request_id = 56 # Integer | Id of request

body = ApprovalAPIClient::ActionIn.new # ActionIn | Action object that will be added


begin
  #Add an action to a given request
  result = api_instance.add_action_by_request_id(request_idbody)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->add_action_by_request_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **Integer**| Id of request | 
 **body** | [**ActionIn**](ActionIn.md)| Action object that will be added | 

### Return type

[**ActionOut**](ActionOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_group**
> GroupOut add_group(body)

Add a new user group by given parameters

Add a new user group by given parameters

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

api_instance = ApprovalAPIClient::AdminsApi.new

body = ApprovalAPIClient::GroupIn.new # GroupIn | Parameters need to create user group


begin
  #Add a new user group by given parameters
  result = api_instance.add_group(body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->add_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GroupIn**](GroupIn.md)| Parameters need to create user group | 

### Return type

[**GroupOut**](GroupOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_user**
> UserOut add_user(body)

Add a new user by given parameters

Add a new user by given parameters

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

api_instance = ApprovalAPIClient::AdminsApi.new

body = ApprovalAPIClient::UserIn.new # UserIn | Parameters need to create user


begin
  #Add a new user by given parameters
  result = api_instance.add_user(body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->add_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserIn**](UserIn.md)| Parameters need to create user | 

### Return type

[**UserOut**](UserOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_workflow**
> WorkflowOut add_workflow(template_id, body)

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
end

api_instance = ApprovalAPIClient::AdminsApi.new

template_id = 56 # Integer | Id of template

body = ApprovalAPIClient::WorkflowParameters.new # WorkflowParameters | Parameters need to create workflow


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
 **body** | [**WorkflowParameters**](WorkflowParameters.md)| Parameters need to create workflow | 

### Return type

[**WorkflowOut**](WorkflowOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_action_by_id**
> ActionOut fetch_action_by_id(id, )

Return an user action by id

Return an user action by id

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

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id


begin
  #Return an user action by id
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

[**ActionOut**](ActionOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_actions**
> Array&lt;ActionOut&gt; fetch_actions(opts)

Return a list of user actions

Return a list of user actions

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

api_instance = ApprovalAPIClient::AdminsApi.new

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return a list of user actions
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

[**Array&lt;ActionOut&gt;**](ActionOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_group_by_id**
> GroupOut fetch_group_by_id(id, )

Return user group by given id

Return user group by given id

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

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id


begin
  #Return user group by given id
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

[**GroupOut**](GroupOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_groups**
> Array&lt;GroupOut&gt; fetch_groups(opts)

Return all user groups

Return all user groups

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

api_instance = ApprovalAPIClient::AdminsApi.new

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return all user groups
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

[**Array&lt;GroupOut&gt;**](GroupOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_groups_by_user_id**
> Array&lt;GroupOut&gt; fetch_groups_by_user_id(user_id)

Return associated groups by given user id

Return groups by given user id

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

api_instance = ApprovalAPIClient::AdminsApi.new

user_id = 56 # Integer | Id of user


begin
  #Return associated groups by given user id
  result = api_instance.fetch_groups_by_user_id(user_id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_groups_by_user_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| Id of user | 

### Return type

[**Array&lt;GroupOut&gt;**](GroupOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_requests**
> Array&lt;RequestOut&gt; fetch_requests(opts)

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

[**Array&lt;RequestOut&gt;**](RequestOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fetch_requests_by_user_id**
> Array&lt;RequestOut&gt; fetch_requests_by_user_id(user_id)

Return associated requests by given user id

Return requests by given user id

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

api_instance = ApprovalAPIClient::AdminsApi.new

user_id = 56 # Integer | Id of user


begin
  #Return associated requests by given user id
  result = api_instance.fetch_requests_by_user_id(user_id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_requests_by_user_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| Id of user | 

### Return type

[**Array&lt;RequestOut&gt;**](RequestOut.md)

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

[**StageOut**](StageOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_stages**
> Array&lt;StageOut&gt; fetch_stages(opts)

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

[**Array&lt;StageOut&gt;**](StageOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_template_by_id**
> TemplateOut fetch_template_by_id(id, )

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

[**TemplateOut**](TemplateOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_template_workflows**
> Array&lt;WorkflowOut&gt; fetch_template_workflows(template_id, , opts)

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

[**Array&lt;WorkflowOut&gt;**](WorkflowOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_templates**
> Array&lt;TemplateOut&gt; fetch_templates(opts)

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

[**Array&lt;TemplateOut&gt;**](TemplateOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_user_by_id**
> UserOut fetch_user_by_id(id, )

Return user by given id

Return user by given id

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

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id


begin
  #Return user by given id
  result = api_instance.fetch_user_by_id(id, )
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_user_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**UserOut**](UserOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_users**
> Array&lt;UserOut&gt; fetch_users(opts)

Return a list of users

Return a list of users

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

api_instance = ApprovalAPIClient::AdminsApi.new

opts = { 
  limit: 20, # Integer | How many items to return at one time (max 1000)
  offset: 0 # Integer | Starting Offset
}

begin
  #Return a list of users
  result = api_instance.fetch_users(opts)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| How many items to return at one time (max 1000) | [optional] [default to 20]
 **offset** | **Integer**| Starting Offset | [optional] [default to 0]

### Return type

[**Array&lt;UserOut&gt;**](UserOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_users_by_group_id**
> Array&lt;UserOut&gt; fetch_users_by_group_id(group_id)

Return associated users by given group id

Return users by given group id

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

api_instance = ApprovalAPIClient::AdminsApi.new

group_id = 56 # Integer | Id of group


begin
  #Return associated users by given group id
  result = api_instance.fetch_users_by_group_id(group_id)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->fetch_users_by_group_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **Integer**| Id of group | 

### Return type

[**Array&lt;UserOut&gt;**](UserOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_workflow_by_id**
> WorkflowOut fetch_workflow_by_id(id, )

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

[**WorkflowOut**](WorkflowOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **fetch_workflow_requests**
> Array&lt;RequestOut&gt; fetch_workflow_requests(workflow_id, , opts)

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

[**Array&lt;RequestOut&gt;**](RequestOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **fetch_workflows**
> Array&lt;WorkflowOut&gt; fetch_workflows(opts)

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

[**Array&lt;WorkflowOut&gt;**](WorkflowOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **group_operation**
> GroupOut group_operation(id, body)

Operation on a list of users to a given group

Users join in or withdraw from a given group

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

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id

body = ApprovalAPIClient::GroupOperationParameters.new # GroupOperationParameters | Parameters need to operate groups


begin
  #Operation on a list of users to a given group
  result = api_instance.group_operation(id, body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->group_operation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 
 **body** | [**GroupOperationParameters**](GroupOperationParameters.md)| Parameters need to operate groups | 

### Return type

[**GroupOut**](GroupOut.md)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_group**
> remove_group(id, )

Delete user group by given id

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
end

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id


begin
  #Delete user group by given id
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

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_user**
> remove_user(id, )

Delete user by given id

Delete user by given id

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

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id


begin
  #Delete user by given id
  api_instance.remove_user(id, )
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->remove_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

nil (empty response body)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

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

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_group**
> update_group(id, body)

Update an user group by given id

Update an user group by given id

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

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id

body = ApprovalAPIClient::GroupIn.new # GroupIn | User group object that needs to be updated


begin
  #Update an user group by given id
  api_instance.update_group(id, body)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->update_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 
 **body** | [**GroupIn**](GroupIn.md)| User group object that needs to be updated | 

### Return type

nil (empty response body)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_user**
> update_user(id, body)

Update an user by given id

Update an user by given id

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

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id

body = ApprovalAPIClient::UserIn.new # UserIn | User object that needs to be updated


begin
  #Update an user by given id
  api_instance.update_user(id, body)
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->update_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 
 **body** | [**UserIn**](UserIn.md)| User object that needs to be updated | 

### Return type

nil (empty response body)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

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
end

api_instance = ApprovalAPIClient::AdminsApi.new

id = 56 # Integer | Query by id

body = ApprovalAPIClient::WorkflowParameters.new # WorkflowParameters | Parameters need to update approval workflow


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
 **body** | [**WorkflowParameters**](WorkflowParameters.md)| Parameters need to update approval workflow | 

### Return type

nil (empty response body)

### Authorization

[APIKey_auth](../README.md#APIKey_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



