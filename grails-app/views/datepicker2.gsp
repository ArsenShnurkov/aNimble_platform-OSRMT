<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html dir="ltr">
    
    <head>
    <style type="text/css">
        @import "${grailsApplication.metadata['app.namespace']}/dojoroot/dijit/themes/tundra/tundra.css";
        @import "${grailsApplication.metadata['app.namespace']}/dojoroot/dojo/resources/dojo.css"
    </style>
    <script type="text/javascript" src="${grailsApplication.metadata['app.namespace']}/dojoroot/dojo/dojo.js"
        djConfig="parseOnLoad: true"></script>

<script type="text/javascript">
    dojo.require("dijit.form.DateTextBox");
</script>      
    </head>
    
    <body class="tundra">
<input type="text" name="date1" id="date1" value="${new Date()}" dojoType="dijit.form.DateTextBox"
required="true" size="10" />
    </body>




</html>