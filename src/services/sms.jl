# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: sms
using AWS.Compat
using AWS.UUIDs

"""
    create_app()
    create_app(params::Dict{String,<:Any})

Creates an application. An application consists of one or more server groups. Each server
group contain one or more servers.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: A unique, case-sensitive identifier that you provide to ensure the
  idempotency of application creation.
- `"description"`: The description of the new application
- `"name"`: The name of the new application.
- `"roleName"`: The name of the service role in the customer's account to be used by Server
  Migration Service.
- `"serverGroups"`: The server groups to include in the application.
- `"tags"`: The tags to be associated with the application.
"""
function create_app(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms("CreateApp"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function create_app(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms("CreateApp", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end

"""
    create_replication_job(seed_replication_time, server_id)
    create_replication_job(seed_replication_time, server_id, params::Dict{String,<:Any})

Creates a replication job. The replication job schedules periodic replication runs to
replicate your server to Amazon Web Services. Each replication run creates an Amazon
Machine Image (AMI).

# Arguments
- `seed_replication_time`: The seed replication time.
- `server_id`: The ID of the server.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: The description of the replication job.
- `"encrypted"`: Indicates whether the replication job produces encrypted AMIs.
- `"frequency"`: The time between consecutive replication runs, in hours.
- `"kmsKeyId"`: The ID of the KMS key for replication jobs that produce encrypted AMIs.
  This value can be any of the following:   KMS key ID   KMS key alias   ARN referring to the
  KMS key ID   ARN referring to the KMS key alias    If encrypted is true but a KMS key ID is
  not specified, the customer's default KMS key for Amazon EBS is used.
- `"licenseType"`: The license type to be used for the AMI created by a successful
  replication run.
- `"numberOfRecentAmisToKeep"`: The maximum number of SMS-created AMIs to retain. The
  oldest is deleted after the maximum number is reached and a new AMI is created.
- `"roleName"`: The name of the IAM role to be used by the Server Migration Service.
- `"runOnce"`: Indicates whether to run the replication job one time.
"""
function create_replication_job(
    seedReplicationTime, serverId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "CreateReplicationJob",
        Dict{String,Any}(
            "seedReplicationTime" => seedReplicationTime, "serverId" => serverId
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_replication_job(
    seedReplicationTime,
    serverId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sms(
        "CreateReplicationJob",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "seedReplicationTime" => seedReplicationTime, "serverId" => serverId
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_app()
    delete_app(params::Dict{String,<:Any})

Deletes the specified application. Optionally deletes the launched stack associated with
the application and all Server Migration Service replication jobs for servers in the
application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appId"`: The ID of the application.
- `"forceStopAppReplication"`: Indicates whether to stop all replication jobs corresponding
  to the servers in the application while deleting the application.
- `"forceTerminateApp"`: Indicates whether to terminate the stack corresponding to the
  application while deleting the application.
"""
function delete_app(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms("DeleteApp"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function delete_app(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms("DeleteApp", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end

"""
    delete_app_launch_configuration()
    delete_app_launch_configuration(params::Dict{String,<:Any})

Deletes the launch configuration for the specified application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appId"`: The ID of the application.
"""
function delete_app_launch_configuration(;
    aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "DeleteAppLaunchConfiguration";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_app_launch_configuration(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "DeleteAppLaunchConfiguration",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_app_replication_configuration()
    delete_app_replication_configuration(params::Dict{String,<:Any})

Deletes the replication configuration for the specified application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appId"`: The ID of the application.
"""
function delete_app_replication_configuration(;
    aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "DeleteAppReplicationConfiguration";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_app_replication_configuration(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "DeleteAppReplicationConfiguration",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_app_validation_configuration(app_id)
    delete_app_validation_configuration(app_id, params::Dict{String,<:Any})

Deletes the validation configuration for the specified application.

# Arguments
- `app_id`: The ID of the application.

"""
function delete_app_validation_configuration(
    appId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "DeleteAppValidationConfiguration",
        Dict{String,Any}("appId" => appId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_app_validation_configuration(
    appId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "DeleteAppValidationConfiguration",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("appId" => appId), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_replication_job(replication_job_id)
    delete_replication_job(replication_job_id, params::Dict{String,<:Any})

Deletes the specified replication job. After you delete a replication job, there are no
further replication runs. Amazon Web Services deletes the contents of the Amazon S3 bucket
used to store Server Migration Service artifacts. The AMIs created by the replication runs
are not deleted.

# Arguments
- `replication_job_id`: The ID of the replication job.

"""
function delete_replication_job(
    replicationJobId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "DeleteReplicationJob",
        Dict{String,Any}("replicationJobId" => replicationJobId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_replication_job(
    replicationJobId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sms(
        "DeleteReplicationJob",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("replicationJobId" => replicationJobId), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_server_catalog()
    delete_server_catalog(params::Dict{String,<:Any})

Deletes all servers from your server catalog.

"""
function delete_server_catalog(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms(
        "DeleteServerCatalog"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function delete_server_catalog(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "DeleteServerCatalog",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    disassociate_connector(connector_id)
    disassociate_connector(connector_id, params::Dict{String,<:Any})

Disassociates the specified connector from Server Migration Service. After you disassociate
a connector, it is no longer available to support replication jobs.

# Arguments
- `connector_id`: The ID of the connector.

"""
function disassociate_connector(
    connectorId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "DisassociateConnector",
        Dict{String,Any}("connectorId" => connectorId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function disassociate_connector(
    connectorId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sms(
        "DisassociateConnector",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("connectorId" => connectorId), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    generate_change_set()
    generate_change_set(params::Dict{String,<:Any})

Generates a target change set for a currently launched stack and writes it to an Amazon S3
object in the customer’s Amazon S3 bucket.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appId"`: The ID of the application associated with the change set.
- `"changesetFormat"`: The format for the change set.
"""
function generate_change_set(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms("GenerateChangeSet"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function generate_change_set(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "GenerateChangeSet", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    generate_template()
    generate_template(params::Dict{String,<:Any})

Generates an CloudFormation template based on the current launch configuration and writes
it to an Amazon S3 object in the customer’s Amazon S3 bucket.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appId"`: The ID of the application associated with the CloudFormation template.
- `"templateFormat"`: The format for generating the CloudFormation template.
"""
function generate_template(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms("GenerateTemplate"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function generate_template(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "GenerateTemplate", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    get_app()
    get_app(params::Dict{String,<:Any})

Retrieve information about the specified application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appId"`: The ID of the application.
"""
function get_app(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms("GetApp"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function get_app(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms("GetApp", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end

"""
    get_app_launch_configuration()
    get_app_launch_configuration(params::Dict{String,<:Any})

Retrieves the application launch configuration associated with the specified application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appId"`: The ID of the application.
"""
function get_app_launch_configuration(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms(
        "GetAppLaunchConfiguration"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function get_app_launch_configuration(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "GetAppLaunchConfiguration",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_app_replication_configuration()
    get_app_replication_configuration(params::Dict{String,<:Any})

Retrieves the application replication configuration associated with the specified
application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appId"`: The ID of the application.
"""
function get_app_replication_configuration(;
    aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "GetAppReplicationConfiguration";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_app_replication_configuration(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "GetAppReplicationConfiguration",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_app_validation_configuration(app_id)
    get_app_validation_configuration(app_id, params::Dict{String,<:Any})

Retrieves information about a configuration for validating an application.

# Arguments
- `app_id`: The ID of the application.

"""
function get_app_validation_configuration(
    appId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "GetAppValidationConfiguration",
        Dict{String,Any}("appId" => appId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_app_validation_configuration(
    appId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "GetAppValidationConfiguration",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("appId" => appId), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_app_validation_output(app_id)
    get_app_validation_output(app_id, params::Dict{String,<:Any})

Retrieves output from validating an application.

# Arguments
- `app_id`: The ID of the application.

"""
function get_app_validation_output(appId; aws_config::AbstractAWSConfig=global_aws_config())
    return sms(
        "GetAppValidationOutput",
        Dict{String,Any}("appId" => appId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_app_validation_output(
    appId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "GetAppValidationOutput",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("appId" => appId), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_connectors()
    get_connectors(params::Dict{String,<:Any})

Describes the connectors registered with the Server Migration Service.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return in a single call. The default
  value is 50. To retrieve the remaining results, make another call with the returned
  NextToken value.
- `"nextToken"`: The token for the next set of results.
"""
function get_connectors(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms("GetConnectors"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function get_connectors(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "GetConnectors", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    get_replication_jobs()
    get_replication_jobs(params::Dict{String,<:Any})

Describes the specified replication job or all of your replication jobs.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return in a single call. The default
  value is 50. To retrieve the remaining results, make another call with the returned
  NextToken value.
- `"nextToken"`: The token for the next set of results.
- `"replicationJobId"`: The ID of the replication job.
"""
function get_replication_jobs(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms("GetReplicationJobs"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function get_replication_jobs(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "GetReplicationJobs", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    get_replication_runs(replication_job_id)
    get_replication_runs(replication_job_id, params::Dict{String,<:Any})

Describes the replication runs for the specified replication job.

# Arguments
- `replication_job_id`: The ID of the replication job.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return in a single call. The default
  value is 50. To retrieve the remaining results, make another call with the returned
  NextToken value.
- `"nextToken"`: The token for the next set of results.
"""
function get_replication_runs(
    replicationJobId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "GetReplicationRuns",
        Dict{String,Any}("replicationJobId" => replicationJobId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_replication_runs(
    replicationJobId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sms(
        "GetReplicationRuns",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("replicationJobId" => replicationJobId), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_servers()
    get_servers(params::Dict{String,<:Any})

Describes the servers in your server catalog. Before you can describe your servers, you
must import them using ImportServerCatalog.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return in a single call. The default
  value is 50. To retrieve the remaining results, make another call with the returned
  NextToken value.
- `"nextToken"`: The token for the next set of results.
- `"vmServerAddressList"`: The server addresses.
"""
function get_servers(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms("GetServers"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function get_servers(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms("GetServers", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end

"""
    import_app_catalog()
    import_app_catalog(params::Dict{String,<:Any})

Allows application import from Migration Hub.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"roleName"`: The name of the service role. If you omit this parameter, we create a
  service-linked role for Migration Hub in your account. Otherwise, the role that you provide
  must have the policy and trust policy described in the Migration Hub User Guide.
"""
function import_app_catalog(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms("ImportAppCatalog"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function import_app_catalog(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "ImportAppCatalog", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    import_server_catalog()
    import_server_catalog(params::Dict{String,<:Any})

Gathers a complete list of on-premises servers. Connectors must be installed and monitoring
all servers to import. This call returns immediately, but might take additional time to
retrieve all the servers.

"""
function import_server_catalog(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms(
        "ImportServerCatalog"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function import_server_catalog(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "ImportServerCatalog",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    launch_app()
    launch_app(params::Dict{String,<:Any})

Launches the specified application as a stack in CloudFormation.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appId"`: The ID of the application.
"""
function launch_app(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms("LaunchApp"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function launch_app(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms("LaunchApp", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end

"""
    list_apps()
    list_apps(params::Dict{String,<:Any})

Retrieves summaries for all applications.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appIds"`: The unique application IDs.
- `"maxResults"`: The maximum number of results to return in a single call. The default
  value is 100. To retrieve the remaining results, make another call with the returned
  NextToken value.
- `"nextToken"`: The token for the next set of results.
"""
function list_apps(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms("ListApps"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function list_apps(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms("ListApps", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end

"""
    notify_app_validation_output(app_id)
    notify_app_validation_output(app_id, params::Dict{String,<:Any})

Provides information to Server Migration Service about whether application validation is
successful.

# Arguments
- `app_id`: The ID of the application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"notificationContext"`: The notification information.
"""
function notify_app_validation_output(
    appId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "NotifyAppValidationOutput",
        Dict{String,Any}("appId" => appId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function notify_app_validation_output(
    appId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "NotifyAppValidationOutput",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("appId" => appId), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    put_app_launch_configuration()
    put_app_launch_configuration(params::Dict{String,<:Any})

Creates or updates the launch configuration for the specified application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appId"`: The ID of the application.
- `"autoLaunch"`: Indicates whether the application is configured to launch automatically
  after replication is complete.
- `"roleName"`: The name of service role in the customer's account that CloudFormation uses
  to launch the application.
- `"serverGroupLaunchConfigurations"`: Information about the launch configurations for
  server groups in the application.
"""
function put_app_launch_configuration(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms(
        "PutAppLaunchConfiguration"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function put_app_launch_configuration(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "PutAppLaunchConfiguration",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    put_app_replication_configuration()
    put_app_replication_configuration(params::Dict{String,<:Any})

Creates or updates the replication configuration for the specified application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appId"`: The ID of the application.
- `"serverGroupReplicationConfigurations"`: Information about the replication
  configurations for server groups in the application.
"""
function put_app_replication_configuration(;
    aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "PutAppReplicationConfiguration";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function put_app_replication_configuration(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "PutAppReplicationConfiguration",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    put_app_validation_configuration(app_id)
    put_app_validation_configuration(app_id, params::Dict{String,<:Any})

Creates or updates a validation configuration for the specified application.

# Arguments
- `app_id`: The ID of the application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appValidationConfigurations"`: The configuration for application validation.
- `"serverGroupValidationConfigurations"`: The configuration for instance validation.
"""
function put_app_validation_configuration(
    appId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "PutAppValidationConfiguration",
        Dict{String,Any}("appId" => appId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function put_app_validation_configuration(
    appId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "PutAppValidationConfiguration",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("appId" => appId), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    start_app_replication()
    start_app_replication(params::Dict{String,<:Any})

Starts replicating the specified application by creating replication jobs for each server
in the application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appId"`: The ID of the application.
"""
function start_app_replication(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms(
        "StartAppReplication"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function start_app_replication(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "StartAppReplication",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    start_on_demand_app_replication(app_id)
    start_on_demand_app_replication(app_id, params::Dict{String,<:Any})

Starts an on-demand replication run for the specified application.

# Arguments
- `app_id`: The ID of the application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: The description of the replication run.
"""
function start_on_demand_app_replication(
    appId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "StartOnDemandAppReplication",
        Dict{String,Any}("appId" => appId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function start_on_demand_app_replication(
    appId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "StartOnDemandAppReplication",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("appId" => appId), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    start_on_demand_replication_run(replication_job_id)
    start_on_demand_replication_run(replication_job_id, params::Dict{String,<:Any})

Starts an on-demand replication run for the specified replication job. This replication run
starts immediately. This replication run is in addition to the ones already scheduled.
There is a limit on the number of on-demand replications runs that you can request in a
24-hour period.

# Arguments
- `replication_job_id`: The ID of the replication job.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: The description of the replication run.
"""
function start_on_demand_replication_run(
    replicationJobId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "StartOnDemandReplicationRun",
        Dict{String,Any}("replicationJobId" => replicationJobId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function start_on_demand_replication_run(
    replicationJobId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sms(
        "StartOnDemandReplicationRun",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("replicationJobId" => replicationJobId), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    stop_app_replication()
    stop_app_replication(params::Dict{String,<:Any})

Stops replicating the specified application by deleting the replication job for each server
in the application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appId"`: The ID of the application.
"""
function stop_app_replication(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms("StopAppReplication"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function stop_app_replication(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "StopAppReplication", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    terminate_app()
    terminate_app(params::Dict{String,<:Any})

Terminates the stack for the specified application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appId"`: The ID of the application.
"""
function terminate_app(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms("TerminateApp"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function terminate_app(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "TerminateApp", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    update_app()
    update_app(params::Dict{String,<:Any})

Updates the specified application.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"appId"`: The ID of the application.
- `"description"`: The new description of the application.
- `"name"`: The new name of the application.
- `"roleName"`: The name of the service role in the customer's account used by Server
  Migration Service.
- `"serverGroups"`: The server groups in the application to update.
- `"tags"`: The tags to associate with the application.
"""
function update_app(; aws_config::AbstractAWSConfig=global_aws_config())
    return sms("UpdateApp"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function update_app(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms("UpdateApp", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end

"""
    update_replication_job(replication_job_id)
    update_replication_job(replication_job_id, params::Dict{String,<:Any})

Updates the specified settings for the specified replication job.

# Arguments
- `replication_job_id`: The ID of the replication job.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: The description of the replication job.
- `"encrypted"`: When true, the replication job produces encrypted AMIs. For more
  information, KmsKeyId.
- `"frequency"`: The time between consecutive replication runs, in hours.
- `"kmsKeyId"`: The ID of the KMS key for replication jobs that produce encrypted AMIs.
  This value can be any of the following:   KMS key ID   KMS key alias   ARN referring to the
  KMS key ID   ARN referring to the KMS key alias   If encrypted is enabled but a KMS key ID
  is not specified, the customer's default KMS key for Amazon EBS is used.
- `"licenseType"`: The license type to be used for the AMI created by a successful
  replication run.
- `"nextReplicationRunStartTime"`: The start time of the next replication run.
- `"numberOfRecentAmisToKeep"`: The maximum number of SMS-created AMIs to retain. The
  oldest is deleted after the maximum number is reached and a new AMI is created.
- `"roleName"`: The name of the IAM role to be used by Server Migration Service.
"""
function update_replication_job(
    replicationJobId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return sms(
        "UpdateReplicationJob",
        Dict{String,Any}("replicationJobId" => replicationJobId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_replication_job(
    replicationJobId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return sms(
        "UpdateReplicationJob",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("replicationJobId" => replicationJobId), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
