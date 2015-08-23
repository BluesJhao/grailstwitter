<html>
<head>
    <meta name="layout" content="main"/>
    <title>What Are You Doing?</title>
    <g:javascript library="jquery" plugin="jquery" />
</head>
<body>
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/status')}"><g:message code="default.home.label"/></a></li>
            <li><g:link controller="person">Users</g:link></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div>
    <div class="pageBody">
        <h1>Hello <twitter:renderCurrentUserName/>. What Are You Doing?</h1>
        <div class="updatStatusForm">
            <g:formRemote url="[action: 'updateStatus']" update="messages" name="updateStatusForm"
                      onSuccess="document.getElementById('message').value='';">
                <g:textArea name="message" value=""/><br/>
                <g:submitButton name="Update Status" id="update_status_button"/>
            </g:formRemote>
        </div>
        <div id="messages">
            <twitter:renderMessages messages="${statusMessages}"/>
        </div>
    </div>
</body>
</html>
