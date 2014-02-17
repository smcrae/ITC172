<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default2.aspx.cs" Inherits="default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:SqlDataSource ID="dsPerson" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:CommunityAssistConnectionString %>" 
        DeleteCommand="DELETE FROM [Person] WHERE [PersonKey] = @original_PersonKey AND [PersonLastName] = @original_PersonLastName AND (([PersonFirstName] = @original_PersonFirstName) OR ([PersonFirstName] IS NULL AND @original_PersonFirstName IS NULL)) AND (([PersonUsername] = @original_PersonUsername) OR ([PersonUsername] IS NULL AND @original_PersonUsername IS NULL)) AND (([PersonPlainPassword] = @original_PersonPlainPassword) OR ([PersonPlainPassword] IS NULL AND @original_PersonPlainPassword IS NULL)) AND (([Personpasskey] = @original_Personpasskey) OR ([Personpasskey] IS NULL AND @original_Personpasskey IS NULL)) AND (([PersonEntryDate] = @original_PersonEntryDate) OR ([PersonEntryDate] IS NULL AND @original_PersonEntryDate IS NULL)) AND (([PersonUserPassword] = @original_PersonUserPassword) OR ([PersonUserPassword] IS NULL AND @original_PersonUserPassword IS NULL))" 
        InsertCommand="INSERT INTO [Person] ([PersonLastName], [PersonFirstName], [PersonUsername], [PersonPlainPassword], [Personpasskey], [PersonEntryDate], [PersonUserPassword]) VALUES (@PersonLastName, @PersonFirstName, @PersonUsername, @PersonPlainPassword, @Personpasskey, @PersonEntryDate, @PersonUserPassword)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Person]">
        <DeleteParameters>
            <asp:Parameter Name="original_PersonKey" Type="Int32" />
            <asp:Parameter Name="original_PersonLastName" Type="String" />
            <asp:Parameter Name="original_PersonFirstName" Type="String" />
            <asp:Parameter Name="original_PersonUsername" Type="String" />
            <asp:Parameter Name="original_PersonPlainPassword" Type="String" />
            <asp:Parameter Name="original_Personpasskey" Type="Int32" />
            <asp:Parameter DbType="Date" Name="original_PersonEntryDate" />
            <asp:Parameter Name="original_PersonUserPassword" Type="Object" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PersonLastName" Type="String" />
            <asp:Parameter Name="PersonFirstName" Type="String" />
            <asp:Parameter Name="PersonUsername" Type="String" />
            <asp:Parameter Name="PersonPlainPassword" Type="String" />
            <asp:Parameter Name="Personpasskey" Type="Int32" />
            <asp:Parameter DbType="Date" Name="PersonEntryDate" />
            <asp:Parameter Name="PersonUserPassword" Type="Object" />
        </InsertParameters>
        
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsSinglePerson" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CommunityAssistConnectionString %>" 
        SelectCommand="SELECT * FROM [Person] WHERE ([PersonKey] = @PersonKey)"
                
        UpdateCommand="UPDATE [Person] SET [PersonLastName] = @PersonLastName, [PersonFirstName] = @PersonFirstName, [PersonUsername] = @PersonUsername, [PersonPlainPassword] = @PersonPlainPassword, [Personpasskey] = @Personpasskey, [PersonEntryDate] = @PersonEntryDate WHERE [PersonKey] = @original_PersonKey " 
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [Person] WHERE [PersonKey] = @original_PersonKey AND [PersonLastName] = @original_PersonLastName AND (([PersonFirstName] = @original_PersonFirstName) OR ([PersonFirstName] IS NULL AND @original_PersonFirstName IS NULL)) AND (([PersonUsername] = @original_PersonUsername) OR ([PersonUsername] IS NULL AND @original_PersonUsername IS NULL)) AND (([PersonPlainPassword] = @original_PersonPlainPassword) OR ([PersonPlainPassword] IS NULL AND @original_PersonPlainPassword IS NULL)) AND (([Personpasskey] = @original_Personpasskey) OR ([Personpasskey] IS NULL AND @original_Personpasskey IS NULL)) AND (([PersonEntryDate] = @original_PersonEntryDate) OR ([PersonEntryDate] IS NULL AND @original_PersonEntryDate IS NULL)) AND (([PersonUserPassword] = @original_PersonUserPassword) OR ([PersonUserPassword] IS NULL AND @original_PersonUserPassword IS NULL))" 
        InsertCommand="INSERT INTO [Person] ([PersonLastName], [PersonFirstName], [PersonUsername], [PersonPlainPassword], [Personpasskey], [PersonEntryDate], [PersonUserPassword]) VALUES (@PersonLastName, @PersonFirstName, @PersonUsername, @PersonPlainPassword, @Personpasskey, @PersonEntryDate, @PersonUserPassword)" OldValuesParameterFormatString="original_{0}"
        >
        <DeleteParameters>
            <asp:Parameter Name="original_PersonKey" Type="Int32" />
            <asp:Parameter Name="original_PersonLastName" Type="String" />
            <asp:Parameter Name="original_PersonFirstName" Type="String" />
            <asp:Parameter Name="original_PersonUsername" Type="String" />
            <asp:Parameter Name="original_PersonPlainPassword" Type="String" />
            <asp:Parameter Name="original_Personpasskey" Type="Int32" />
            <asp:Parameter DbType="Date" Name="original_PersonEntryDate" />
            <asp:Parameter Name="original_PersonUserPassword" Type="Object" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PersonLastName" Type="String" />
            <asp:Parameter Name="PersonFirstName" Type="String" />
            <asp:Parameter Name="PersonUsername" Type="String" />
            <asp:Parameter Name="PersonPlainPassword" Type="String" />
            <asp:Parameter Name="Personpasskey" Type="Int32" />
            <asp:Parameter DbType="Date" Name="PersonEntryDate" />
            <asp:Parameter Name="PersonUserPassword" Type="Object" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gridAllPerson" DefaultValue="1" 
                Name="PersonKey" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="PersonLastName" Type="String" />
            <asp:Parameter Name="PersonFirstName" Type="String" />
            <asp:Parameter Name="PersonUsername" Type="String" />
            <asp:Parameter Name="PersonPlainPassword" Type="String" />
            <asp:Parameter Name="Personpasskey" Type="Int32" />
            <asp:Parameter DbType="Date" Name="PersonEntryDate" />
            <asp:Parameter Name="original_PersonKey" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="gridAllPerson" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="PersonKey" DataSourceID="dsPerson" 
        onselectedindexchanged="gridAllPerson_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="PersonKey" HeaderText="PersonKey" 
                InsertVisible="False" ReadOnly="True" SortExpression="PersonKey" />
            <asp:BoundField DataField="PersonLastName" HeaderText="PersonLastName" 
                SortExpression="PersonLastName" />
            <asp:BoundField DataField="PersonFirstName" HeaderText="PersonFirstName" 
                SortExpression="PersonFirstName" />
            <asp:BoundField DataField="PersonUsername" HeaderText="PersonUsername" 
                SortExpression="PersonUsername" />
            <asp:BoundField DataField="PersonPlainPassword" 
                HeaderText="PersonPlainPassword" SortExpression="PersonPlainPassword" />
            <asp:BoundField DataField="Personpasskey" HeaderText="Personpasskey" 
                SortExpression="Personpasskey" />
            <asp:BoundField DataField="PersonEntryDate" HeaderText="PersonEntryDate" 
                SortExpression="PersonEntryDate" />
        </Columns>
    </asp:GridView>
    <asp:FormView ID="fViewPerson" runat="server" DataKeyNames="PersonKey" 
        DataSourceID="dsSinglePerson" DefaultMode="Edit" 
        onitemupdated="fViewPerson_ItemUpdated">
        <EditItemTemplate>
            PersonKey:
            <asp:Label ID="PersonKeyLabel1" runat="server" 
                Text='<%# Eval("PersonKey") %>' />
            <br />
            PersonLastName:
            <asp:TextBox ID="PersonLastNameTextBox" runat="server" 
                Text='<%# Bind("PersonLastName") %>' />
            <br />
            PersonFirstName:
            <asp:TextBox ID="PersonFirstNameTextBox" runat="server" 
                Text='<%# Bind("PersonFirstName") %>' />
            <br />
            PersonUsername:
            <asp:TextBox ID="PersonUsernameTextBox" runat="server" 
                Text='<%# Bind("PersonUsername") %>' />
            <br />
            PersonPlainPassword:
            <asp:TextBox ID="PersonPlainPasswordTextBox" runat="server" 
                Text='<%# Bind("PersonPlainPassword") %>' />
            <br />
            Personpasskey:
            <asp:TextBox ID="PersonpasskeyTextBox" runat="server" 
                Text='<%# Bind("Personpasskey") %>' />
            <br />
            PersonEntryDate:
            <asp:TextBox ID="PersonEntryDateTextBox" runat="server" 
                Text='<%# Bind("PersonEntryDate") %>' />
            <br />
            PersonUserPassword:
            <asp:TextBox ID="PersonUserPasswordTextBox" runat="server" 
                Text='<%# Bind("PersonUserPassword") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            PersonLastName:
            <asp:TextBox ID="PersonLastNameTextBox" runat="server" 
                Text='<%# Bind("PersonLastName") %>' />
            <br />
            PersonFirstName:
            <asp:TextBox ID="PersonFirstNameTextBox" runat="server" 
                Text='<%# Bind("PersonFirstName") %>' />
            <br />
            PersonUsername:
            <asp:TextBox ID="PersonUsernameTextBox" runat="server" 
                Text='<%# Bind("PersonUsername") %>' />
            <br />
            PersonPlainPassword:
            <asp:TextBox ID="PersonPlainPasswordTextBox" runat="server" 
                Text='<%# Bind("PersonPlainPassword") %>' />
            <br />
            Personpasskey:
            <asp:TextBox ID="PersonpasskeyTextBox" runat="server" 
                Text='<%# Bind("Personpasskey") %>' />
            <br />
            PersonEntryDate:
            <asp:TextBox ID="PersonEntryDateTextBox" runat="server" 
                Text='<%# Bind("PersonEntryDate") %>' />
            <br />
            PersonUserPassword:
            <asp:TextBox ID="PersonUserPasswordTextBox" runat="server" 
                Text='<%# Bind("PersonUserPassword") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            PersonKey:
            <asp:Label ID="PersonKeyLabel" runat="server" Text='<%# Eval("PersonKey") %>' />
            <br />
            PersonLastName:
            <asp:Label ID="PersonLastNameLabel" runat="server" 
                Text='<%# Bind("PersonLastName") %>' />
            <br />
            PersonFirstName:
            <asp:Label ID="PersonFirstNameLabel" runat="server" 
                Text='<%# Bind("PersonFirstName") %>' />
            <br />
            PersonUsername:
            <asp:Label ID="PersonUsernameLabel" runat="server" 
                Text='<%# Bind("PersonUsername") %>' />
            <br />
            PersonPlainPassword:
            <asp:Label ID="PersonPlainPasswordLabel" runat="server" 
                Text='<%# Bind("PersonPlainPassword") %>' />
            <br />
            Personpasskey:
            <asp:Label ID="PersonpasskeyLabel" runat="server" 
                Text='<%# Bind("Personpasskey") %>' />
            <br />
            PersonEntryDate:
            <asp:Label ID="PersonEntryDateLabel" runat="server" 
                Text='<%# Bind("PersonEntryDate") %>' />
            <br />
            PersonUserPassword:
            <asp:Label ID="PersonUserPasswordLabel" runat="server" 
                Text='<%# Bind("PersonUserPassword") %>' />
            <br />

            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" />

        </ItemTemplate>
    </asp:FormView>
    </form>
</body>
</html>
