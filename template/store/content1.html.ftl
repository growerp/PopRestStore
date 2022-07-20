<#if !ec.web.getPathInfoList()?has_content>
    <#assign top = storeInfo.menu1?filter(p -> p.title?lower_case?starts_with('home'))>
<#else>
    <#assign top = storeInfo.menu1?filter(p -> p.path ==  ec.web.getPathInfoList()[1])>
</#if>
<div class="container container-top">
    <div class="row mt-4">
        <div class="customer-menu col col-lg-2 col-md-3 mb-5">
<#list top as topMenu>
            <span class="modal-text">${topMenu.title}</span>
            <ul class="customer-orders-ul">
            <#list topMenu.items as item>
                <li>
                    <a href="/content/${topMenu.path}#${item.anchor}">${item.text}</a>
                </li>
            </#list>
            </ul>
</#list>
            <#--a href="/content/about" class="customer-link">About this Shop</a>
            <a href="/content/contact" class="customer-link">Contact Us</a-->
        </div>
        <div class="col col-lg-9 offset-lg-1 col-12">