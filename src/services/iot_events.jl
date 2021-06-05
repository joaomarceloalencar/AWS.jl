# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: iot_events
using AWS.Compat
using AWS.UUIDs

"""
    create_alarm_model(alarm_model_name, alarm_rule, role_arn)
    create_alarm_model(alarm_model_name, alarm_rule, role_arn, params::Dict{String,<:Any})

Creates an alarm model to monitor an AWS IoT Events input attribute. You can use the alarm
to get notified when the value is outside a specified range. For more information, see
Create an alarm model in the AWS IoT Events Developer Guide.

# Arguments
- `alarm_model_name`: A unique name that helps you identify the alarm model. You can't
  change this name after you create the alarm model.
- `alarm_rule`: Defines when your alarm is invoked.
- `role_arn`: The ARN of the IAM role that allows the alarm to perform actions and access
  AWS resources. For more information, see Amazon Resource Names (ARNs) in the AWS General
  Reference.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"alarmCapabilities"`: Contains the configuration information of alarm state changes.
- `"alarmEventActions"`: Contains information about one or more alarm actions.
- `"alarmModelDescription"`: A description that tells you what the alarm model detects.
- `"alarmNotification"`: Contains information about one or more notification actions.
- `"key"`: An input attribute used as a key to create an alarm. AWS IoT Events routes
  inputs associated with this key to the alarm.
- `"severity"`: A non-negative integer that reflects the severity level of the alarm.
- `"tags"`: A list of key-value pairs that contain metadata for the alarm model. The tags
  help you manage the alarm model. For more information, see Tagging your AWS IoT Events
  resources in the AWS IoT Events Developer Guide. You can create up to 50 tags for one alarm
  model.
"""
create_alarm_model(alarmModelName, alarmRule, roleArn; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/alarm-models", Dict{String, Any}("alarmModelName"=>alarmModelName, "alarmRule"=>alarmRule, "roleArn"=>roleArn); aws_config=aws_config)
create_alarm_model(alarmModelName, alarmRule, roleArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/alarm-models", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("alarmModelName"=>alarmModelName, "alarmRule"=>alarmRule, "roleArn"=>roleArn), params)); aws_config=aws_config)

"""
    create_detector_model(detector_model_definition, detector_model_name, role_arn)
    create_detector_model(detector_model_definition, detector_model_name, role_arn, params::Dict{String,<:Any})

Creates a detector model.

# Arguments
- `detector_model_definition`: Information that defines how the detectors operate.
- `detector_model_name`: The name of the detector model.
- `role_arn`: The ARN of the role that grants permission to AWS IoT Events to perform its
  operations.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"detectorModelDescription"`: A brief description of the detector model.
- `"evaluationMethod"`: Information about the order in which events are evaluated and how
  actions are executed.
- `"key"`: The input attribute key used to identify a device or system to create a detector
  (an instance of the detector model) and then to route each input received to the
  appropriate detector (instance). This parameter uses a JSON-path expression in the message
  payload of each input to specify the attribute-value pair that is used to identify the
  device associated with the input.
- `"tags"`: Metadata that can be used to manage the detector model.
"""
create_detector_model(detectorModelDefinition, detectorModelName, roleArn; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/detector-models", Dict{String, Any}("detectorModelDefinition"=>detectorModelDefinition, "detectorModelName"=>detectorModelName, "roleArn"=>roleArn); aws_config=aws_config)
create_detector_model(detectorModelDefinition, detectorModelName, roleArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/detector-models", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("detectorModelDefinition"=>detectorModelDefinition, "detectorModelName"=>detectorModelName, "roleArn"=>roleArn), params)); aws_config=aws_config)

"""
    create_input(input_definition, input_name)
    create_input(input_definition, input_name, params::Dict{String,<:Any})

Creates an input.

# Arguments
- `input_definition`: The definition of the input.
- `input_name`: The name you want to give to the input.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"inputDescription"`: A brief description of the input.
- `"tags"`: Metadata that can be used to manage the input.
"""
create_input(inputDefinition, inputName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/inputs", Dict{String, Any}("inputDefinition"=>inputDefinition, "inputName"=>inputName); aws_config=aws_config)
create_input(inputDefinition, inputName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/inputs", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("inputDefinition"=>inputDefinition, "inputName"=>inputName), params)); aws_config=aws_config)

"""
    delete_alarm_model(alarm_model_name)
    delete_alarm_model(alarm_model_name, params::Dict{String,<:Any})

Deletes an alarm model. Any alarm instances that were created based on this alarm model are
also deleted. This action can't be undone.

# Arguments
- `alarm_model_name`: The name of the alarm model.

"""
delete_alarm_model(alarmModelName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("DELETE", "/alarm-models/$(alarmModelName)"; aws_config=aws_config)
delete_alarm_model(alarmModelName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("DELETE", "/alarm-models/$(alarmModelName)", params; aws_config=aws_config)

"""
    delete_detector_model(detector_model_name)
    delete_detector_model(detector_model_name, params::Dict{String,<:Any})

Deletes a detector model. Any active instances of the detector model are also deleted.

# Arguments
- `detector_model_name`: The name of the detector model to be deleted.

"""
delete_detector_model(detectorModelName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("DELETE", "/detector-models/$(detectorModelName)"; aws_config=aws_config)
delete_detector_model(detectorModelName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("DELETE", "/detector-models/$(detectorModelName)", params; aws_config=aws_config)

"""
    delete_input(input_name)
    delete_input(input_name, params::Dict{String,<:Any})

Deletes an input.

# Arguments
- `input_name`: The name of the input to delete.

"""
delete_input(inputName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("DELETE", "/inputs/$(inputName)"; aws_config=aws_config)
delete_input(inputName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("DELETE", "/inputs/$(inputName)", params; aws_config=aws_config)

"""
    describe_alarm_model(alarm_model_name)
    describe_alarm_model(alarm_model_name, params::Dict{String,<:Any})

Retrieves information about an alarm model. If you don't specify a value for the
alarmModelVersion parameter, the latest version is returned.

# Arguments
- `alarm_model_name`: The name of the alarm model.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"version"`: The version of the alarm model.
"""
describe_alarm_model(alarmModelName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/alarm-models/$(alarmModelName)"; aws_config=aws_config)
describe_alarm_model(alarmModelName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/alarm-models/$(alarmModelName)", params; aws_config=aws_config)

"""
    describe_detector_model(detector_model_name)
    describe_detector_model(detector_model_name, params::Dict{String,<:Any})

Describes a detector model. If the version parameter is not specified, information about
the latest version is returned.

# Arguments
- `detector_model_name`: The name of the detector model.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"version"`: The version of the detector model.
"""
describe_detector_model(detectorModelName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/detector-models/$(detectorModelName)"; aws_config=aws_config)
describe_detector_model(detectorModelName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/detector-models/$(detectorModelName)", params; aws_config=aws_config)

"""
    describe_detector_model_analysis(analysis_id)
    describe_detector_model_analysis(analysis_id, params::Dict{String,<:Any})

Retrieves runtime information about a detector model analysis.  After AWS IoT Events starts
analyzing your detector model, you have up to 24 hours to retrieve the analysis results.

# Arguments
- `analysis_id`: The ID of the analysis result that you want to retrieve.

"""
describe_detector_model_analysis(analysisId; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/analysis/detector-models/$(analysisId)"; aws_config=aws_config)
describe_detector_model_analysis(analysisId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/analysis/detector-models/$(analysisId)", params; aws_config=aws_config)

"""
    describe_input(input_name)
    describe_input(input_name, params::Dict{String,<:Any})

Describes an input.

# Arguments
- `input_name`: The name of the input.

"""
describe_input(inputName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/inputs/$(inputName)"; aws_config=aws_config)
describe_input(inputName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/inputs/$(inputName)", params; aws_config=aws_config)

"""
    describe_logging_options()
    describe_logging_options(params::Dict{String,<:Any})

Retrieves the current settings of the AWS IoT Events logging options.

"""
describe_logging_options(; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/logging"; aws_config=aws_config)
describe_logging_options(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/logging", params; aws_config=aws_config)

"""
    get_detector_model_analysis_results(analysis_id)
    get_detector_model_analysis_results(analysis_id, params::Dict{String,<:Any})

Retrieves one or more analysis results of the detector model.  After AWS IoT Events starts
analyzing your detector model, you have up to 24 hours to retrieve the analysis results.

# Arguments
- `analysis_id`: The ID of the analysis result that you want to retrieve.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to be returned per request.
- `"nextToken"`: The token that you can use to return the next set of results.
"""
get_detector_model_analysis_results(analysisId; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/analysis/detector-models/$(analysisId)/results"; aws_config=aws_config)
get_detector_model_analysis_results(analysisId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/analysis/detector-models/$(analysisId)/results", params; aws_config=aws_config)

"""
    list_alarm_model_versions(alarm_model_name)
    list_alarm_model_versions(alarm_model_name, params::Dict{String,<:Any})

Lists all the versions of an alarm model. The operation returns only the metadata
associated with each alarm model version.

# Arguments
- `alarm_model_name`: The name of the alarm model.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to be returned per request.
- `"nextToken"`: The token that you can use to return the next set of results.
"""
list_alarm_model_versions(alarmModelName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/alarm-models/$(alarmModelName)/versions"; aws_config=aws_config)
list_alarm_model_versions(alarmModelName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/alarm-models/$(alarmModelName)/versions", params; aws_config=aws_config)

"""
    list_alarm_models()
    list_alarm_models(params::Dict{String,<:Any})

Lists the alarm models that you created. The operation returns only the metadata associated
with each alarm model.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to be returned per request.
- `"nextToken"`: The token that you can use to return the next set of results.
"""
list_alarm_models(; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/alarm-models"; aws_config=aws_config)
list_alarm_models(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/alarm-models", params; aws_config=aws_config)

"""
    list_detector_model_versions(detector_model_name)
    list_detector_model_versions(detector_model_name, params::Dict{String,<:Any})

Lists all the versions of a detector model. Only the metadata associated with each detector
model version is returned.

# Arguments
- `detector_model_name`: The name of the detector model whose versions are returned.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to be returned per request.
- `"nextToken"`: The token that you can use to return the next set of results.
"""
list_detector_model_versions(detectorModelName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/detector-models/$(detectorModelName)/versions"; aws_config=aws_config)
list_detector_model_versions(detectorModelName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/detector-models/$(detectorModelName)/versions", params; aws_config=aws_config)

"""
    list_detector_models()
    list_detector_models(params::Dict{String,<:Any})

Lists the detector models you have created. Only the metadata associated with each detector
model is returned.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to be returned per request.
- `"nextToken"`: The token that you can use to return the next set of results.
"""
list_detector_models(; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/detector-models"; aws_config=aws_config)
list_detector_models(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/detector-models", params; aws_config=aws_config)

"""
    list_input_routings(input_identifier)
    list_input_routings(input_identifier, params::Dict{String,<:Any})

 Lists one or more input routings.

# Arguments
- `input_identifier`:  The identifer of the routed input.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`:  The maximum number of results to be returned per request.
- `"nextToken"`:  The token that you can use to return the next set of results.
"""
list_input_routings(inputIdentifier; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/input-routings", Dict{String, Any}("inputIdentifier"=>inputIdentifier); aws_config=aws_config)
list_input_routings(inputIdentifier, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/input-routings", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("inputIdentifier"=>inputIdentifier), params)); aws_config=aws_config)

"""
    list_inputs()
    list_inputs(params::Dict{String,<:Any})

Lists the inputs you have created.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to be returned per request.
- `"nextToken"`: The token that you can use to return the next set of results.
"""
list_inputs(; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/inputs"; aws_config=aws_config)
list_inputs(params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/inputs", params; aws_config=aws_config)

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Lists the tags (metadata) you have assigned to the resource.

# Arguments
- `resource_arn`: The ARN of the resource.

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/tags", Dict{String, Any}("resourceArn"=>resourceArn); aws_config=aws_config)
list_tags_for_resource(resourceArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("GET", "/tags", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn), params)); aws_config=aws_config)

"""
    put_logging_options(logging_options)
    put_logging_options(logging_options, params::Dict{String,<:Any})

Sets or updates the AWS IoT Events logging options. If you update the value of any
loggingOptions field, it takes up to one minute for the change to take effect. If you
change the policy attached to the role you specified in the roleArn field (for example, to
correct an invalid policy), it takes up to five minutes for that change to take effect.

# Arguments
- `logging_options`: The new values of the AWS IoT Events logging options.

"""
put_logging_options(loggingOptions; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("PUT", "/logging", Dict{String, Any}("loggingOptions"=>loggingOptions); aws_config=aws_config)
put_logging_options(loggingOptions, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("PUT", "/logging", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("loggingOptions"=>loggingOptions), params)); aws_config=aws_config)

"""
    start_detector_model_analysis(detector_model_definition)
    start_detector_model_analysis(detector_model_definition, params::Dict{String,<:Any})

Performs an analysis of your detector model. For more information, see Troubleshooting a
detector model in the AWS IoT Events Developer Guide.

# Arguments
- `detector_model_definition`:

"""
start_detector_model_analysis(detectorModelDefinition; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/analysis/detector-models/", Dict{String, Any}("detectorModelDefinition"=>detectorModelDefinition); aws_config=aws_config)
start_detector_model_analysis(detectorModelDefinition, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/analysis/detector-models/", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("detectorModelDefinition"=>detectorModelDefinition), params)); aws_config=aws_config)

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Adds to or modifies the tags of the given resource. Tags are metadata that can be used to
manage a resource.

# Arguments
- `resource_arn`: The ARN of the resource.
- `tags`: The new or modified tags for the resource.

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/tags", Dict{String, Any}("resourceArn"=>resourceArn, "tags"=>tags); aws_config=aws_config)
tag_resource(resourceArn, tags, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/tags", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "tags"=>tags), params)); aws_config=aws_config)

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes the given tags (metadata) from the resource.

# Arguments
- `resource_arn`: The ARN of the resource.
- `tag_keys`: A list of the keys of the tags to be removed from the resource.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("DELETE", "/tags", Dict{String, Any}("resourceArn"=>resourceArn, "tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("DELETE", "/tags", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn, "tagKeys"=>tagKeys), params)); aws_config=aws_config)

"""
    update_alarm_model(alarm_model_name, alarm_rule, role_arn)
    update_alarm_model(alarm_model_name, alarm_rule, role_arn, params::Dict{String,<:Any})

Updates an alarm model. Any alarms that were created based on the previous version are
deleted and then created again as new data arrives.

# Arguments
- `alarm_model_name`: The name of the alarm model.
- `alarm_rule`: Defines when your alarm is invoked.
- `role_arn`: The ARN of the IAM role that allows the alarm to perform actions and access
  AWS resources. For more information, see Amazon Resource Names (ARNs) in the AWS General
  Reference.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"alarmCapabilities"`: Contains the configuration information of alarm state changes.
- `"alarmEventActions"`: Contains information about one or more alarm actions.
- `"alarmModelDescription"`: The description of the alarm model.
- `"alarmNotification"`: Contains information about one or more notification actions.
- `"severity"`: A non-negative integer that reflects the severity level of the alarm.
"""
update_alarm_model(alarmModelName, alarmRule, roleArn; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/alarm-models/$(alarmModelName)", Dict{String, Any}("alarmRule"=>alarmRule, "roleArn"=>roleArn); aws_config=aws_config)
update_alarm_model(alarmModelName, alarmRule, roleArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/alarm-models/$(alarmModelName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("alarmRule"=>alarmRule, "roleArn"=>roleArn), params)); aws_config=aws_config)

"""
    update_detector_model(detector_model_definition, detector_model_name, role_arn)
    update_detector_model(detector_model_definition, detector_model_name, role_arn, params::Dict{String,<:Any})

Updates a detector model. Detectors (instances) spawned by the previous version are deleted
and then re-created as new inputs arrive.

# Arguments
- `detector_model_definition`: Information that defines how a detector operates.
- `detector_model_name`: The name of the detector model that is updated.
- `role_arn`: The ARN of the role that grants permission to AWS IoT Events to perform its
  operations.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"detectorModelDescription"`: A brief description of the detector model.
- `"evaluationMethod"`: Information about the order in which events are evaluated and how
  actions are executed.
"""
update_detector_model(detectorModelDefinition, detectorModelName, roleArn; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/detector-models/$(detectorModelName)", Dict{String, Any}("detectorModelDefinition"=>detectorModelDefinition, "roleArn"=>roleArn); aws_config=aws_config)
update_detector_model(detectorModelDefinition, detectorModelName, roleArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("POST", "/detector-models/$(detectorModelName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("detectorModelDefinition"=>detectorModelDefinition, "roleArn"=>roleArn), params)); aws_config=aws_config)

"""
    update_input(input_definition, input_name)
    update_input(input_definition, input_name, params::Dict{String,<:Any})

Updates an input.

# Arguments
- `input_definition`: The definition of the input.
- `input_name`: The name of the input you want to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"inputDescription"`: A brief description of the input.
"""
update_input(inputDefinition, inputName; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("PUT", "/inputs/$(inputName)", Dict{String, Any}("inputDefinition"=>inputDefinition); aws_config=aws_config)
update_input(inputDefinition, inputName, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()) = iot_events("PUT", "/inputs/$(inputName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("inputDefinition"=>inputDefinition), params)); aws_config=aws_config)
