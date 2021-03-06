<div class="listing_top_left"><{$category_path}></div><div class="listing_top_right"><{if $editrights == "1"}><{$edit_link}><{/if}></div> <br class="clear">
<div class="itemTitleLarge"><{$item_title}>&nbsp;<{$adminlink}></div>
<table class="itemTable"><tr>
<{if $item_logo != ""}><td class="itemLogo"><{$item_logo}></td><{/if}><td class="itemText"><{$item_description}></td>
</tr></table>

<{if $datatypes}>
<table width="100%" class="itemValuesTable" cellspacing="1" border="0"><tr>

    <{if $section1 != "" }><{if $section0 != ""}>
    <td width="50%" height="100%">
    <{/if}><{/if}>

    <{if $section1 == "" }><{if $section0 == "" }>
        <{if $section1 == "" }>
        <td width="100%" height="100%">
        <{/if}>
        <{if $section0 == "" }>
        <td width="100%" height="100%">
        <{/if}>
    <{/if}><{/if}>
        <{if $section0 != ""}>
        <td><table class="itemValuesTd" width="100%">
        <{foreach item=item from=$section0}>
        <{if $item.value != ""}>
        <tr>
        <td valign="top" class="itemLabel"><{if $item.icon != ""}><{$item.icon}><{/if}><{$item.label}>:</td>
        <td valign="top" class="itemValue"><{$item.value}></td>
        </tr>
        <{/if}>
        <{/foreach}>
        </table>
        <{/if}>
    </td>
    <{if $section1 != ""}>
    <td width="50%" height="100%">
        <table class="itemValuesTd" width="100%">
        <{foreach item=item from=$section1}>
        <{if $item.value != ""}>
        <tr>
        <td valign="top" class="itemLabel"><{if $item.icon != ""}><{$item.icon}><{/if}><{$item.label}>:</td>
        <td valign="top" class="itemValue"><{$item.value}></td>
        </tr>
        <{/if}>
        <{/foreach}>
        </table>
    </td>
    <{/if}>
    <{if $section2 != ""}>
    </tr><tr>
    <td colspan="2">
        <table class="itemValuesTdSection2" width="100%">
        <{foreach item=item from=$section2}>
        <{if $item.value != ""}>
        <tr>
        <td valign="top"><{if $item.icon != ""}><{$item.icon}><{/if}><div class="itemLabel"><{$item.label}>:</div><div class="itemValueSection2"><{$item.value}></div></td>
        </tr>
        <{/if}>
        <{/foreach}>
        </table>
    </td>
    <{/if}>

</tr></table>
<{/if}>
<{if $coupons > 0}>
<br><a href="savings.php?itemid=<{$item_id}>"><img src="<{$xoops_url}>/modules/<{$moddir}>/assets/images/coupons.jpg" alt="<{$smarty.const._MD_SAVINGS}>"></a><br>
<{/if}>

<{if $listingowner == "1"}><{if $couponsallowed == "1"}>
 <a href="addcoupon.php?item=<{$item_id}>">&nbsp;&nbsp;[ <{$lang_addcoupon}> ]</a>
<{/if}><{/if}>

<{if $listingowner == "1"}><{if $subscrallowed == "1"}>
 <a href="subscriptions.php?item=<{$item_id}>">&nbsp;&nbsp;[ <{$lang_viewsubscription}> ]</a>
<{/if}><{/if}>
