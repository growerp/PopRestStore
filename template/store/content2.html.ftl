<#if !ec.web.getPathInfoList()?has_content || ec.web.getPathInfo() == '/home'>
    <#assign top = storeInfo.menu1?filter(p -> p.title?lower_case == 'home')>
<#else>
    <#assign top = storeInfo.menu1?filter(p -> p.path ==  ec.web.getPathInfo()[1])>
</#if>
<#if top??>
        </div>
    </div>
</div>
</#if>
