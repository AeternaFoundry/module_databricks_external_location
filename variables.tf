variable "external_locations" {
  description = <<EOT
Map of external_locations, attributes below
Required:
    - credential_name
    - name
    - url
Optional:
    - comment
    - enable_file_events
    - fallback
    - force_destroy
    - force_update
    - isolation_mode
    - metastore_id
    - owner
    - read_only
    - skip_validation
    - effective_file_event_queue (block):
        - managed_aqs (optional, block):
            - managed_resource_id (optional)
            - queue_url (optional)
            - resource_group (optional)
            - subscription_id (optional)
        - managed_pubsub (optional, block):
            - managed_resource_id (optional)
            - subscription_name (optional)
        - managed_sqs (optional, block):
            - managed_resource_id (optional)
            - queue_url (optional)
        - provided_aqs (optional, block):
            - managed_resource_id (optional)
            - queue_url (optional)
            - resource_group (optional)
            - subscription_id (optional)
        - provided_pubsub (optional, block):
            - managed_resource_id (optional)
            - subscription_name (optional)
        - provided_sqs (optional, block):
            - managed_resource_id (optional)
            - queue_url (optional)
    - encryption_details (block):
        - sse_encryption_details (optional, block):
            - algorithm (optional)
            - aws_kms_key_arn (optional)
    - file_event_queue (block):
        - managed_aqs (optional, block):
            - queue_url (optional)
            - resource_group (required)
            - subscription_id (required)
        - managed_pubsub (optional, block):
            - subscription_name (optional)
        - managed_sqs (optional, block):
            - queue_url (optional)
        - provided_aqs (optional, block):
            - queue_url (required)
            - resource_group (optional)
            - subscription_id (optional)
        - provided_pubsub (optional, block):
            - subscription_name (required)
        - provided_sqs (optional, block):
            - queue_url (required)
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    credential_name    = string
    name               = string
    url                = string
    comment            = optional(string)
    enable_file_events = optional(bool)
    fallback           = optional(bool)
    force_destroy      = optional(bool)
    force_update       = optional(bool)
    isolation_mode     = optional(string)
    metastore_id       = optional(string)
    owner              = optional(string)
    read_only          = optional(bool)
    skip_validation    = optional(bool)
    effective_file_event_queue = optional(object({
      managed_aqs = optional(object({
        managed_resource_id = optional(string)
        queue_url           = optional(string)
        resource_group      = optional(string)
        subscription_id     = optional(string)
      }))
      managed_pubsub = optional(object({
        managed_resource_id = optional(string)
        subscription_name   = optional(string)
      }))
      managed_sqs = optional(object({
        managed_resource_id = optional(string)
        queue_url           = optional(string)
      }))
      provided_aqs = optional(object({
        managed_resource_id = optional(string)
        queue_url           = optional(string)
        resource_group      = optional(string)
        subscription_id     = optional(string)
      }))
      provided_pubsub = optional(object({
        managed_resource_id = optional(string)
        subscription_name   = optional(string)
      }))
      provided_sqs = optional(object({
        managed_resource_id = optional(string)
        queue_url           = optional(string)
      }))
    }))
    encryption_details = optional(object({
      sse_encryption_details = optional(object({
        algorithm       = optional(string)
        aws_kms_key_arn = optional(string)
      }))
    }))
    file_event_queue = optional(object({
      managed_aqs = optional(object({
        queue_url       = optional(string)
        resource_group  = string
        subscription_id = string
      }))
      managed_pubsub = optional(object({
        subscription_name = optional(string)
      }))
      managed_sqs = optional(object({
        queue_url = optional(string)
      }))
      provided_aqs = optional(object({
        queue_url       = string
        resource_group  = optional(string)
        subscription_id = optional(string)
      }))
      provided_pubsub = optional(object({
        subscription_name = string
      }))
      provided_sqs = optional(object({
        queue_url = string
      }))
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

