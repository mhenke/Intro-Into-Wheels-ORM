<cfoutput>
<cfoutput>

#errorMessagesFor("newUser")#

#startFormTag(action="save")#
    #textField(label="First Name", objectName="newUser", property="firstName")#<br>
    #textField(label="Last Name", objectName="newUser", property="lastName")#<br>
    #textField(label="Email", objectName="newUser", property="email")#<br>
    #textField(label="Age", objectName="newUser", property="age")#<br>
    #passwordField(label="Password", objectName="newUser", property="password")#<br>
    #passwordField(label="Re-type Password to Confirm", objectName="newUser", property="passwordConfirmation")#<br>
    #submitTag()#
#endFormTag()#

<cfdump var="#newUser#">

</cfoutput>
</cfoutput>