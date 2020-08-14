<#assign
    known = Session.SPRING_SECURITY_CONTENT??
>
<#if known>
    <#assign
        user = Session.SPRING_SECURITY_CONTENT.authentication.principal
        name = user.getUsername()
        isAdmin = user.isAdmin()
    >
<#else>
    <#assign
        name = "unknown"
        isAdmin = false
    >
</#if>