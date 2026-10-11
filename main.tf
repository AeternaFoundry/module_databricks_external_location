resource "databricks_external_location" "external_locations" {
  for_each = var.external_locations

  credential_name    = each.value.credential_name
  name               = each.value.name
  url                = each.value.url
  comment            = each.value.comment
  enable_file_events = each.value.enable_file_events
  fallback           = each.value.fallback
  force_destroy      = each.value.force_destroy
  force_update       = each.value.force_update
  isolation_mode     = each.value.isolation_mode
  metastore_id       = each.value.metastore_id
  owner              = each.value.owner
  read_only          = each.value.read_only
  skip_validation    = each.value.skip_validation

  dynamic "effective_file_event_queue" {
    for_each = each.value.effective_file_event_queue != null ? [each.value.effective_file_event_queue] : []
    content {
      dynamic "managed_aqs" {
        for_each = effective_file_event_queue.value.managed_aqs != null ? [effective_file_event_queue.value.managed_aqs] : []
        content {
          managed_resource_id = managed_aqs.value.managed_resource_id
          queue_url           = managed_aqs.value.queue_url
          resource_group      = managed_aqs.value.resource_group
          subscription_id     = managed_aqs.value.subscription_id
        }
      }
      dynamic "managed_pubsub" {
        for_each = effective_file_event_queue.value.managed_pubsub != null ? [effective_file_event_queue.value.managed_pubsub] : []
        content {
          managed_resource_id = managed_pubsub.value.managed_resource_id
          subscription_name   = managed_pubsub.value.subscription_name
        }
      }
      dynamic "managed_sqs" {
        for_each = effective_file_event_queue.value.managed_sqs != null ? [effective_file_event_queue.value.managed_sqs] : []
        content {
          managed_resource_id = managed_sqs.value.managed_resource_id
          queue_url           = managed_sqs.value.queue_url
        }
      }
      dynamic "provided_aqs" {
        for_each = effective_file_event_queue.value.provided_aqs != null ? [effective_file_event_queue.value.provided_aqs] : []
        content {
          managed_resource_id = provided_aqs.value.managed_resource_id
          queue_url           = provided_aqs.value.queue_url
          resource_group      = provided_aqs.value.resource_group
          subscription_id     = provided_aqs.value.subscription_id
        }
      }
      dynamic "provided_pubsub" {
        for_each = effective_file_event_queue.value.provided_pubsub != null ? [effective_file_event_queue.value.provided_pubsub] : []
        content {
          managed_resource_id = provided_pubsub.value.managed_resource_id
          subscription_name   = provided_pubsub.value.subscription_name
        }
      }
      dynamic "provided_sqs" {
        for_each = effective_file_event_queue.value.provided_sqs != null ? [effective_file_event_queue.value.provided_sqs] : []
        content {
          managed_resource_id = provided_sqs.value.managed_resource_id
          queue_url           = provided_sqs.value.queue_url
        }
      }
    }
  }

  dynamic "encryption_details" {
    for_each = each.value.encryption_details != null ? [each.value.encryption_details] : []
    content {
      dynamic "sse_encryption_details" {
        for_each = encryption_details.value.sse_encryption_details != null ? [encryption_details.value.sse_encryption_details] : []
        content {
          algorithm       = sse_encryption_details.value.algorithm
          aws_kms_key_arn = sse_encryption_details.value.aws_kms_key_arn
        }
      }
    }
  }

  dynamic "file_event_queue" {
    for_each = each.value.file_event_queue != null ? [each.value.file_event_queue] : []
    content {
      dynamic "managed_aqs" {
        for_each = file_event_queue.value.managed_aqs != null ? [file_event_queue.value.managed_aqs] : []
        content {
          queue_url       = managed_aqs.value.queue_url
          resource_group  = managed_aqs.value.resource_group
          subscription_id = managed_aqs.value.subscription_id
        }
      }
      dynamic "managed_pubsub" {
        for_each = file_event_queue.value.managed_pubsub != null ? [file_event_queue.value.managed_pubsub] : []
        content {
          subscription_name = managed_pubsub.value.subscription_name
        }
      }
      dynamic "managed_sqs" {
        for_each = file_event_queue.value.managed_sqs != null ? [file_event_queue.value.managed_sqs] : []
        content {
          queue_url = managed_sqs.value.queue_url
        }
      }
      dynamic "provided_aqs" {
        for_each = file_event_queue.value.provided_aqs != null ? [file_event_queue.value.provided_aqs] : []
        content {
          queue_url       = provided_aqs.value.queue_url
          resource_group  = provided_aqs.value.resource_group
          subscription_id = provided_aqs.value.subscription_id
        }
      }
      dynamic "provided_pubsub" {
        for_each = file_event_queue.value.provided_pubsub != null ? [file_event_queue.value.provided_pubsub] : []
        content {
          subscription_name = provided_pubsub.value.subscription_name
        }
      }
      dynamic "provided_sqs" {
        for_each = file_event_queue.value.provided_sqs != null ? [file_event_queue.value.provided_sqs] : []
        content {
          queue_url = provided_sqs.value.queue_url
        }
      }
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

