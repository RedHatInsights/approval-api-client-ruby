# ApprovalApiClient::Workflow

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**template_id** | **String** | Associated template id | [optional] [readonly] 
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**sequence** | **Integer** | an indicator of the execution order for selected workflows | [optional] 
**group_refs** | **Array&lt;String&gt;** | Group reference ids associated with workflow | [optional] 

## Code Sample

```ruby
require 'ApprovalApiClient'

instance = ApprovalApiClient::Workflow.new(id: null,
                                 template_id: null,
                                 name: null,
                                 description: null,
                                 sequence: null,
                                 group_refs: null)
```


