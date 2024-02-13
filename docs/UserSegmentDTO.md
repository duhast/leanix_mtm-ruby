# LeanixMtmApi::UserSegmentDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **declined** | **Boolean** |  | [optional] |
| **job_title** | [**JobTitleDTO**](JobTitleDTO.md) |  | [optional] |
| **jobs_to_be_done** | [**Array&lt;JobToBeDoneDTO&gt;**](JobToBeDoneDTO.md) |  | [optional] |

## Example

```ruby
require 'leanix_mtm_api'

instance = LeanixMtmApi::UserSegmentDTO.new(
  declined: null,
  job_title: null,
  jobs_to_be_done: null
)
```

