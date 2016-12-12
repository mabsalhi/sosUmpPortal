<!DOCTYPE html>
<#include init />
<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">
<head>
	<title>${the_title} - ${company_name}</title>
	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<@liferay_util["include"] page=top_head_include />
</head>
<body class="${css_class}">
<@liferay_ui["quick-access"] contentId="#main-content" />
<@liferay_util["include"] page=body_top_include />
<@liferay.control_menu />

<div id="wrapper">
	<header class="container-fluid-1280" id="banner" role="banner">
         <div class="row">       
              <div class="col-md-4">
                  <a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
                      <img alt="${logo_description}" height="64" src="${site_logo}" />
                  </a>
                <#if show_site_name>
                    <span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">${site_name}</span>
                </#if>
              </div>
              <div class="col-md-5 col-md-offset-3">
                  <div class="row">
                  <div id="lang-selector-bar" class="col-md-4">
                  <style>           #lang-selector-bar .portlet-title-text, .portlet-title .icon { display: none; }
                                    #lang-selector-bar .portlet-decorate .portlet-content{ border-style: none; padding-top: 3px;}
                                    #lang-selector-bar .portlet-title { height: 1px;}
                                    #lang-selector-bar .lexicon-icon-ar-sa { background: url(http://localhost:8080/o/sos-ump-theme/images/marocFlag.png); background-repeat: no-repeat; margin-top: 3px; }
                                    #lang-selector-bar .lexicon-icon-ar-sa rect { display: none; }
                                    #lang-selector-bar .lexicon-icon-ar-sa path {display: none;}
                                    #lang-selector-bar .portlet-content{padding: 0px;}
                                    #lang-selector-bar .portlet{padding: 0px;}
                                </style>
                    <@liferay_portlet["runtime"]
                                    defaultPreferences=default_preferences
                                    portletProviderAction=portletProviderAction.VIEW
                                    portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.LanguageEntry"
                    /></div>
                  <div class="col-md-8">
                      <#if is_setup_complete>
					<button aria-controls="navigation" aria-expanded="false" class="collapsed navbar-toggle" data-target="#navigationCollapse" data-toggle="collapse" type="button">
						<span class="icon-bar"></span>

						<span class="icon-bar"></span>

						<span class="icon-bar"></span>
					</button>
                         
					<div class="personal">
						<@liferay.user_personal_bar />
					</div>
				</#if>
                      </div>
                      </div>
                  <div class="row"> 
                 
                  <#if show_header_search>
				
					<@liferay.search default_preferences="${freeMarkerPortletPreferences}" />
				
			</#if></div>
  </div>
              </div>
                  
          
			<div class="navbar-header" id="heading">
                            
				
<#include "${full_templates_path}/navigation.ftl" />
				
			</div>
            
            
	</header>
        <section class="container-fluid-1280" id="breadCrumb">
            
            <@liferay_portlet["runtime"]
		defaultPreferences=default_preferences
		portletProviderAction=portletProviderAction.VIEW
                portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.BreadcrumbEntry"
/>
        </section>
	<section class="container-fluid-1280" id="content">
		<h1 class="hide-accessible">${the_title}</h1>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<footer class="container-fluid-1280" id="footer" role="contentinfo">
		<div class="row">
			Université Mohammed I<sup>er</sup> Oujda
		</div>
	</footer>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>
