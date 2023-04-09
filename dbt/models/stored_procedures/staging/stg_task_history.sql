SELECT
    NAME,
    QUERY_TEXT,
    CONDITION_TEXT,
    SCHEMA_NAME,
    TASK_SCHEMA_ID,
    DATABASE_NAME,
    TASK_DATABASE_ID,
    SCHEDULED_TIME,
    COMPLETED_TIME,
    STATE,
    RETURN_VALUE,
    QUERY_ID,
    QUERY_START_TIME,
    ERROR_CODE,
    ERROR_MESSAGE,
    GRAPH_VERSION,
    RUN_ID,
    ROOT_TASK_ID,
    SCHEDULED_FROM,
    CURRENT_TIMESTAMP AS INGESTION_TIME

FROM {{ source('snowflake_account_usage', 'task_history') }}