# ApprovalApiClient::RequestIn

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Request name | 
**description** | **String** | Request description | [optional] 
**content** | [**Object**](.md) | JSON object with request content | 
**tag_resources** | [**Array&lt;TagResource&gt;**](TagResource.md) | collection of resources having tags that determine the workflows for the request | 

## Code Sample

```ruby
require 'ApprovalApiClient'

instance = ApprovalApiClient::RequestIn.new(name: null,
                                 description: null,
                                 content: null,
                                 tag_resources: null)
```


