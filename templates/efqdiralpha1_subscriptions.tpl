<{if $lang_subscr_offers_header}><h3><{$lang_subscr_offers_header}></h3><{/if}>
<{if $lang_subscr_payment}><h3><{$lang_subscr_payment}></h3><{/if}>
<{if $lang_no_subscr_moment}>
    <{$lang_no_subscr_moment}><br><br>
<{else}>
    <{if $order_table}>
     <table width='100%' bgcolor="#FFFFFF" cellpadding="10" cellspacing='1' border='1'>
     <tr>
        <th class="head"><{$lang_ordername}></th>
        <th class="head"><{$lang_startdate}></th>
        <th class="head"><{$lang_billtodate}></th>
        <th class="head"><{$lang_enddate}></th>
        <th class="head"><{$lang_paymentstatus}></th>
        <th class="head"><{$lang_actions}></th>
    </tr>
    <{foreach item=active_orders from=$active_orders}>
          <tr class="<{cycle values="odd,even"}>">
            <td><strong><{$active_orders.ordername}></strong></td>
            <td><{$active_orders.startdate}></td>
            <td><{$active_orders.billto}></td>
            <td><{$active_orders.enddate}></td>
            <td><{$active_orders.paymentstatus}></td>
            <td>
                <{if $active_orders.terminate_on == false}>
                <a href="<{$active_orders.renewal_url}>"><img src="<{$xoops_url}>/modules/<{$moddir}>/assets/images/renew.gif" title="<{$lang_renew_subscription}>" alt="<{$lang_renew_subscription_alt}>"></a>
                <{/if}>
                <{if $active_orders.terminate_on}>
                <a href="<{$active_orders.terminate_url}>"><img src="<{$xoops_url}>/modules/<{$moddir}>/assets/images/terminate.png" title="<{$lang_terminate_order}>" alt="<{$lang_terminate_order_alt}>"></a>
                <{/if}>
            </td>
          </tr>
    <{/foreach}>
    </table>
    <br>
    <{/if}>
<{/if}>
<{if $orderform}><{$orderform}><{/if}>
<{if $paymentform}><{$paymentform}><{/if}>
<br><input type="button" value="<< Back" onclick="history.go(-1); return false;"><br><br>
