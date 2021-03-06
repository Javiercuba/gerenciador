<!DOCTYPE html>
<!--
Application Name: CloudOnex Business Suite
Version: 1.0.2
Website: https://www.cloudonex.com/
License: You must have a valid license purchased only from cloudonex.com in order to legally use this software.
-->
<html>

<head>



    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{$_title}</title>
    <link rel="shortcut icon" href="{$app_url}storage/icon/favicon.ico" type="image/x-icon" />


    <link href="{$app_url}ui/lib/css/ibilling.css" rel="stylesheet">


    {foreach $plugin_ui_header_admin as $plugin_ui_header_add}
        {$plugin_ui_header_add}
    {/foreach}



    {if isset($xheader)}
        {$xheader}
    {/if}

    {block name=style}{/block}

    {foreach $plugin_ui_header_client as $plugin_ui_header_add}
        {$plugin_ui_header_add}
    {/foreach}

    {$config['header_scripts']}



    <style type="text/css">
        body {

            background-color: #FAFAFA;
            overflow-x: visible;
        }
        .paper {
            margin: 50px auto;

            border: 2px solid #DDD;
            background-color: #FFF;
            position: relative;
            width: {if isset($width)}{$width}{else}800px{/if};
        }

        .panel {

            box-shadow: none;

        }

    </style>

</head>

<body class="fixed-nav">

<div class="paper">
    <section class="panel">
        <div class="panel-body" style="font-size: 14px;">
            {if isset($notify)}
                {$notify}
            {/if}

            {$content}



        </div>
    </section>

</div>


<input type="hidden" id="_url" name="_url" value="{$_url}">
<input type="hidden" id="_df" name="_df" value="{$config['df']}">
<input type="hidden" id="_lan" name="_lan" value="{$config['language']}">
<!-- END PRELOADER -->
<!-- Mainly scripts -->

<script>

    var _L = [];


    _L['Save'] = '{$_L['Save']}';
    _L['Submit'] = '{$_L['Submit']}';
    _L['Loading'] = '{$_L['Loading']}';
    _L['Media'] = '{$_L['Media']}';
    _L['OK'] = '{$_L['OK']}';
    _L['Cancel'] = '{$_L['Cancel']}';
    _L['Close'] = '{$_L['Close']}';
    _L['Close'] = '{$_L['Close']}';
    _L['are_you_sure'] = '{$_L['are_you_sure']}';
    _L['Saved Successfully'] = '{$_L['Saved Successfully']}';
    _L['Empty'] = '{$_L['Empty']}';

    var app_url = '{$app_url}';
    var base_url = '{$base_url}';

    {if ($config['animate']) eq '1'}
    var config_animate = 'Yes';
    {else}
    var config_animate = 'No';
    {/if}
    {$jsvar}
</script>









<script src="{$app_url}ui/lib/ibilling.js"></script>


{if isset($xfooter)}
    {$xfooter}
{/if}

{block name=script}{/block}

<script>
    jQuery(document).ready(function() {
        // initiate layout and plugins


        matForms();

        {if isset($xjq)}
        {$xjq}
        {/if}


        $('#app_media').fancybox({
            'width'		: 900,
            'height'	: 600,
            'type'		: 'iframe',
            'autoScale'    	: false,
            buttons : [

                'fullScreen',
                'close'
            ]
        });

    });

</script>
{$config['footer_scripts']}
</body>

</html>
