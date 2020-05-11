# ApprovalApiClient::Workflow

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**template_id** | **String** | Associated template id | [optional] [readonly] 
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**sequence** | **Integer** | an indicator of the execution order for selected workflows | [optional] 
**group_refs** | [**Array&lt;GroupRef&gt;**](GroupRef.md) | Group reference ids associated with workflow | [optional] 
**metadata** | [**Object**](.md) | JSON Metadata about the workflow | [optional] [readonly] 

## Code Sample

```ruby
require 'ApprovalApiClient'

instance = ApprovalApiClient::Workflow.new(id: null,
                                 template_id: null,
                                 name: null,
                                 description: null,
                                 sequence: null,
                                 group_refs: null,
                                 metadata: null)
```


