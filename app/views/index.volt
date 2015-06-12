<!DOCTYPE html>
<html>
	<head>
        <link rel="stylesheet" href="/css/style.css">
        <link rel="stylesheet" href="/fonts/fonts.css" type="text/css">
        <link rel="stylesheet" href="/css/normalize.css" type="text/css">
        <link rel="stylesheet" href="/css/master.less" type="text/less">
        <script src="/js/jquery-2.1.3.min.js" type="text/javascript"></script>
        <script src="/js/less.min.js" type="text/javascript"></script>
        <title>Eureka!</title>
	</head>
	<body>
    {% include "interface/head.volt" %}
		{{ content() }}
	</body>
</html>