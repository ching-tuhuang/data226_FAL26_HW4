with source as (
    select sessionId,ts
    from {{ source('raw', 'session_timestamp') }}
)
select * from source
WHERE sessionId IS NOT NULL
