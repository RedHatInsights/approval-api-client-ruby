# ApprovalApiClient::CollectionMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **Integer** | This is the total number of items in the result set, of which only a subset is returned defined by the QueryLimit parameter | [optional] 
**limit** | **Integer** | This is the number of items each page can display | [optional] 
**offset** | **Integer** | This is the offset from beginning of the result set | [optional] 

## Code Sample

```ruby
require 'ApprovalApiClient'

instance = ApprovalApiClient::CollectionMetadata.new(count: null,
                                 limit: null,
                                 offset: null)
```


