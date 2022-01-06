# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: health
using AWS.Compat
using AWS.UUIDs

"""
    describe_affected_accounts_for_organization(event_arn)
    describe_affected_accounts_for_organization(event_arn, params::Dict{String,<:Any})

Returns a list of accounts in the organization from Organizations that are affected by the
provided event. For more information about the different types of Health events, see Event.
 Before you can call this operation, you must first enable Health to work with
Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from
your organization's management account.  This API operation uses pagination. Specify the
nextToken parameter in the next request to return more results.

# Arguments
- `event_arn`: The unique identifier for the event. The event ARN has the
  arn:aws:health:event-region::event/SERVICE/EVENT_TYPE_CODE/EVENT_TYPE_PLUS_ID  format. For
  example, an event ARN might look like the following:
  arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMEN
  T_SCHEDULED_ABC123-DEF456

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of items to return in one batch, between 10 and 100,
  inclusive.
- `"nextToken"`: If the results of a search are large, only a portion of the results are
  returned, and a nextToken pagination token is returned in the response. To retrieve the
  next batch of results, reissue the search request and include the returned token. When all
  results have been returned, the response does not contain a pagination token value.
"""
function describe_affected_accounts_for_organization(
    eventArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DescribeAffectedAccountsForOrganization",
        Dict{String,Any}("eventArn" => eventArn);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_affected_accounts_for_organization(
    eventArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return health(
        "DescribeAffectedAccountsForOrganization",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("eventArn" => eventArn), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_affected_entities(filter)
    describe_affected_entities(filter, params::Dict{String,<:Any})

Returns a list of entities that have been affected by the specified events, based on the
specified filter criteria. Entities can refer to individual customer resources, groups of
customer resources, or any other construct, depending on the Amazon Web Services service.
Events that have impact beyond that of the affected entities, or where the extent of impact
is unknown, include at least one entity indicating this. At least one event ARN is
required.    This API operation uses pagination. Specify the nextToken parameter in the
next request to return more results.   This operation supports resource-level permissions.
You can use this operation to allow or deny access to specific Health events. For more
information, see Resource- and action-based conditions in the Health User Guide.

# Arguments
- `filter`: Values to narrow the results returned. At least one event ARN is required.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"locale"`: The locale (language) to return information in. English (en) is the default
  and the only supported value at this time.
- `"maxResults"`: The maximum number of items to return in one batch, between 10 and 100,
  inclusive.
- `"nextToken"`: If the results of a search are large, only a portion of the results are
  returned, and a nextToken pagination token is returned in the response. To retrieve the
  next batch of results, reissue the search request and include the returned token. When all
  results have been returned, the response does not contain a pagination token value.
"""
function describe_affected_entities(
    filter; aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DescribeAffectedEntities",
        Dict{String,Any}("filter" => filter);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_affected_entities(
    filter, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DescribeAffectedEntities",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("filter" => filter), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_affected_entities_for_organization(organization_entity_filters)
    describe_affected_entities_for_organization(organization_entity_filters, params::Dict{String,<:Any})

Returns a list of entities that have been affected by one or more events for one or more
accounts in your organization in Organizations, based on the filter criteria. Entities can
refer to individual customer resources, groups of customer resources, or any other
construct, depending on the Amazon Web Services service. At least one event Amazon Resource
Name (ARN) and account ID are required. Before you can call this operation, you must first
enable Health to work with Organizations. To do this, call the
EnableHealthServiceAccessForOrganization operation from your organization's management
account.    This API operation uses pagination. Specify the nextToken parameter in the next
request to return more results.   This operation doesn't support resource-level
permissions. You can't use this operation to allow or deny access to specific Health
events. For more information, see Resource- and action-based conditions in the Health User
Guide.

# Arguments
- `organization_entity_filters`: A JSON set of elements including the awsAccountId and the
  eventArn.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"locale"`: The locale (language) to return information in. English (en) is the default
  and the only supported value at this time.
- `"maxResults"`: The maximum number of items to return in one batch, between 10 and 100,
  inclusive.
- `"nextToken"`: If the results of a search are large, only a portion of the results are
  returned, and a nextToken pagination token is returned in the response. To retrieve the
  next batch of results, reissue the search request and include the returned token. When all
  results have been returned, the response does not contain a pagination token value.
"""
function describe_affected_entities_for_organization(
    organizationEntityFilters; aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DescribeAffectedEntitiesForOrganization",
        Dict{String,Any}("organizationEntityFilters" => organizationEntityFilters);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_affected_entities_for_organization(
    organizationEntityFilters,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return health(
        "DescribeAffectedEntitiesForOrganization",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("organizationEntityFilters" => organizationEntityFilters),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_entity_aggregates()
    describe_entity_aggregates(params::Dict{String,<:Any})

Returns the number of entities that are affected by each of the specified events.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"eventArns"`: A list of event ARNs (unique identifiers). For example:
  \"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREM
  ENT_SCHEDULED_ABC123-CDE456\",
  \"arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101
  \"
"""
function describe_entity_aggregates(; aws_config::AbstractAWSConfig=global_aws_config())
    return health(
        "DescribeEntityAggregates"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function describe_entity_aggregates(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DescribeEntityAggregates",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_event_aggregates(aggregate_field)
    describe_event_aggregates(aggregate_field, params::Dict{String,<:Any})

Returns the number of events of each event type (issue, scheduled change, and account
notification). If no filter is specified, the counts of all events in each category are
returned.  This API operation uses pagination. Specify the nextToken parameter in the next
request to return more results.

# Arguments
- `aggregate_field`: The only currently supported value is eventTypeCategory.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"filter"`: Values to narrow the results returned.
- `"maxResults"`: The maximum number of items to return in one batch, between 10 and 100,
  inclusive.
- `"nextToken"`: If the results of a search are large, only a portion of the results are
  returned, and a nextToken pagination token is returned in the response. To retrieve the
  next batch of results, reissue the search request and include the returned token. When all
  results have been returned, the response does not contain a pagination token value.
"""
function describe_event_aggregates(
    aggregateField; aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DescribeEventAggregates",
        Dict{String,Any}("aggregateField" => aggregateField);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_event_aggregates(
    aggregateField,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return health(
        "DescribeEventAggregates",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("aggregateField" => aggregateField), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_event_details(event_arns)
    describe_event_details(event_arns, params::Dict{String,<:Any})

Returns detailed information about one or more specified events. Information includes
standard event data (Amazon Web Services Region, service, and so on, as returned by
DescribeEvents), a detailed event description, and possible additional metadata that
depends upon the nature of the event. Affected entities are not included. To retrieve the
entities, use the DescribeAffectedEntities operation. If a specified event can't be
retrieved, an error message is returned for that event.  This operation supports
resource-level permissions. You can use this operation to allow or deny access to specific
Health events. For more information, see Resource- and action-based conditions in the
Health User Guide.

# Arguments
- `event_arns`: A list of event ARNs (unique identifiers). For example:
  \"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREM
  ENT_SCHEDULED_ABC123-CDE456\",
  \"arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101
  \"

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"locale"`: The locale (language) to return information in. English (en) is the default
  and the only supported value at this time.
"""
function describe_event_details(
    eventArns; aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DescribeEventDetails",
        Dict{String,Any}("eventArns" => eventArns);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_event_details(
    eventArns,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return health(
        "DescribeEventDetails",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("eventArns" => eventArns), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_event_details_for_organization(organization_event_detail_filters)
    describe_event_details_for_organization(organization_event_detail_filters, params::Dict{String,<:Any})

Returns detailed information about one or more specified events for one or more Amazon Web
Services accounts in your organization. This information includes standard event data (such
as the Amazon Web Services Region and service), an event description, and (depending on the
event) possible metadata. This operation doesn't return affected entities, such as the
resources related to the event. To return affected entities, use the
DescribeAffectedEntitiesForOrganization operation.  Before you can call this operation, you
must first enable Health to work with Organizations. To do this, call the
EnableHealthServiceAccessForOrganization operation from your organization's management
account.  When you call the DescribeEventDetailsForOrganization operation, specify the
organizationEventDetailFilters object in the request. Depending on the Health event type,
note the following differences:   To return event details for a public event, you must
specify a null value for the awsAccountId parameter. If you specify an account ID for a
public event, Health returns an error message because public events aren't specific to an
account.   To return event details for an event that is specific to an account in your
organization, you must specify the awsAccountId parameter in the request. If you don't
specify an account ID, Health returns an error message because the event is specific to an
account in your organization.    For more information, see Event.  This operation doesn't
support resource-level permissions. You can't use this operation to allow or deny access to
specific Health events. For more information, see Resource- and action-based conditions in
the Health User Guide.

# Arguments
- `organization_event_detail_filters`: A set of JSON elements that includes the
  awsAccountId and the eventArn.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"locale"`: The locale (language) to return information in. English (en) is the default
  and the only supported value at this time.
"""
function describe_event_details_for_organization(
    organizationEventDetailFilters; aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DescribeEventDetailsForOrganization",
        Dict{String,Any}(
            "organizationEventDetailFilters" => organizationEventDetailFilters
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_event_details_for_organization(
    organizationEventDetailFilters,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return health(
        "DescribeEventDetailsForOrganization",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "organizationEventDetailFilters" => organizationEventDetailFilters
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_event_types()
    describe_event_types(params::Dict{String,<:Any})

Returns the event types that meet the specified filter criteria. You can use this API
operation to find information about the Health event, such as the category, Amazon Web
Services service, and event code. The metadata for each event appears in the EventType
object.  If you don't specify a filter criteria, the API operation returns all event types,
in no particular order.   This API operation uses pagination. Specify the nextToken
parameter in the next request to return more results.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"filter"`: Values to narrow the results returned.
- `"locale"`: The locale (language) to return information in. English (en) is the default
  and the only supported value at this time.
- `"maxResults"`: The maximum number of items to return in one batch, between 10 and 100,
  inclusive.
- `"nextToken"`: If the results of a search are large, only a portion of the results are
  returned, and a nextToken pagination token is returned in the response. To retrieve the
  next batch of results, reissue the search request and include the returned token. When all
  results have been returned, the response does not contain a pagination token value.
"""
function describe_event_types(; aws_config::AbstractAWSConfig=global_aws_config())
    return health(
        "DescribeEventTypes"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function describe_event_types(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DescribeEventTypes", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    describe_events()
    describe_events(params::Dict{String,<:Any})

 Returns information about events that meet the specified filter criteria. Events are
returned in a summary form and do not include the detailed description, any additional
metadata that depends on the event type, or any affected resources. To retrieve that
information, use the DescribeEventDetails and DescribeAffectedEntities operations. If no
filter criteria are specified, all events are returned. Results are sorted by
lastModifiedTime, starting with the most recent event.    When you call the DescribeEvents
operation and specify an entity for the entityValues parameter, Health might return public
events that aren't specific to that resource. For example, if you call DescribeEvents and
specify an ID for an Amazon Elastic Compute Cloud (Amazon EC2) instance, Health might
return events that aren't specific to that resource or service. To get events that are
specific to a service, use the services parameter in the filter object. For more
information, see Event.   This API operation uses pagination. Specify the nextToken
parameter in the next request to return more results.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"filter"`: Values to narrow the results returned.
- `"locale"`: The locale (language) to return information in. English (en) is the default
  and the only supported value at this time.
- `"maxResults"`: The maximum number of items to return in one batch, between 10 and 100,
  inclusive.
- `"nextToken"`: If the results of a search are large, only a portion of the results are
  returned, and a nextToken pagination token is returned in the response. To retrieve the
  next batch of results, reissue the search request and include the returned token. When all
  results have been returned, the response does not contain a pagination token value.
"""
function describe_events(; aws_config::AbstractAWSConfig=global_aws_config())
    return health("DescribeEvents"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
end
function describe_events(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DescribeEvents", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    describe_events_for_organization()
    describe_events_for_organization(params::Dict{String,<:Any})

Returns information about events across your organization in Organizations. You can use
thefilters parameter to specify the events that you want to return. Events are returned in
a summary form and don't include the affected accounts, detailed description, any
additional metadata that depends on the event type, or any affected resources. To retrieve
that information, use the following operations:    DescribeAffectedAccountsForOrganization
   DescribeEventDetailsForOrganization     DescribeAffectedEntitiesForOrganization    If
you don't specify a filter, the DescribeEventsForOrganizations returns all events across
your organization. Results are sorted by lastModifiedTime, starting with the most recent
event.  For more information about the different types of Health events, see Event. Before
you can call this operation, you must first enable Health to work with Organizations. To do
this, call the EnableHealthServiceAccessForOrganization operation from your organization's
management account.  This API operation uses pagination. Specify the nextToken parameter in
the next request to return more results.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"filter"`: Values to narrow the results returned.
- `"locale"`: The locale (language) to return information in. English (en) is the default
  and the only supported value at this time.
- `"maxResults"`: The maximum number of items to return in one batch, between 10 and 100,
  inclusive.
- `"nextToken"`: If the results of a search are large, only a portion of the results are
  returned, and a nextToken pagination token is returned in the response. To retrieve the
  next batch of results, reissue the search request and include the returned token. When all
  results have been returned, the response does not contain a pagination token value.
"""
function describe_events_for_organization(;
    aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DescribeEventsForOrganization";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_events_for_organization(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DescribeEventsForOrganization",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_health_service_status_for_organization()
    describe_health_service_status_for_organization(params::Dict{String,<:Any})

This operation provides status information on enabling or disabling Health to work with
your organization. To call this operation, you must sign in as an IAM user, assume an IAM
role, or sign in as the root user (not recommended) in the organization's management
account.

"""
function describe_health_service_status_for_organization(;
    aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DescribeHealthServiceStatusForOrganization";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function describe_health_service_status_for_organization(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DescribeHealthServiceStatusForOrganization",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    disable_health_service_access_for_organization()
    disable_health_service_access_for_organization(params::Dict{String,<:Any})

Disables Health from working with Organizations. To call this operation, you must sign in
as an Identity and Access Management (IAM) user, assume an IAM role, or sign in as the root
user (not recommended) in the organization's management account. For more information, see
Aggregating Health events in the Health User Guide. This operation doesn't remove the
service-linked role from the management account in your organization. You must use the IAM
console, API, or Command Line Interface (CLI) to remove the service-linked role. For more
information, see Deleting a Service-Linked Role in the IAM User Guide.  You can also
disable the organizational feature by using the Organizations DisableAWSServiceAccess API
operation. After you call this operation, Health stops aggregating events for all other
Amazon Web Services accounts in your organization. If you call the Health API operations
for organizational view, Health returns an error. Health continues to aggregate health
events for your Amazon Web Services account.

"""
function disable_health_service_access_for_organization(;
    aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DisableHealthServiceAccessForOrganization";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function disable_health_service_access_for_organization(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "DisableHealthServiceAccessForOrganization",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    enable_health_service_access_for_organization()
    enable_health_service_access_for_organization(params::Dict{String,<:Any})

Enables Health to work with Organizations. You can use the organizational view feature to
aggregate events from all Amazon Web Services accounts in your organization in a
centralized location.  This operation also creates a service-linked role for the management
account in the organization.   To call this operation, you must meet the following
requirements:   You must have a Business, Enterprise On-Ramp, or Enterprise Support plan
from Amazon Web Services Support to use the Health API. If you call the Health API from an
Amazon Web Services account that doesn't have a Business, Enterprise On-Ramp, or Enterprise
Support plan, you receive a SubscriptionRequiredException error.   You must have permission
to call this operation from the organization's management account. For example IAM
policies, see Health identity-based policy examples.    If you don't have the required
support plan, you can instead use the Health console to enable the organizational view
feature. For more information, see Aggregating Health events in the Health User Guide.

"""
function enable_health_service_access_for_organization(;
    aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "EnableHealthServiceAccessForOrganization";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function enable_health_service_access_for_organization(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return health(
        "EnableHealthServiceAccessForOrganization",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
