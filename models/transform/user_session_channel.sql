with source as (

    select
        userId,
        sessionId,
        channel
    from {{ source('raw', 'user_session_channel') }}

)

select *
from source
WHERE sessionId IS NOT NULL
