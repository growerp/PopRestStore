<#assign path = ec.web.getPathInfo().split('/')[3]>
<#list storeInfo.menu?filter(p -> p.path == path) as topMenu>
<div class="container container-top">
    <div class="container">
        <a href="/store" class="customer-link" id="${topMenu.path}">
            Home
            <i class="fas fa-angle-right"></i>
        </a>
        <span class="modal-text">${topMenu.title}</span>
    </div>
    <div class="row mt-4">
            <div class="customer-menu col col-lg-2 col-md-3 mb-5">
                <span class="modal-text">${topMenu.title}</span>
                <ul class="customer-orders-ul">
                <#list topMenu.items as item>
                    <li>
                        <a href="/store/content/${path}#${item.anchor}">${item.text}</a>
                    </li>
                </#list>
                </ul>
                <a href="/store/content/about" class="customer-link">About this Shop</a>
                <a href="/store/content/contact" class="customer-link">Contact Us</a>
            </div>
        <div class="col col-lg-9 offset-lg-1 col-12">
</#list>