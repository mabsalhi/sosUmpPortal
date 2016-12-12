<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone") />

<div aria-expanded="false" class="collapse navbar-collapse" id="navigationCollapse">
	<#if has_navigation && is_setup_complete>
    <@liferay.navigation_menu default_preferences="${freeMarkerPortletPreferences}" />
		
	</#if>
</div>

<#assign VOID = freeMarkerPortletPreferences.reset() />
