<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" StaticDisplayLevels="2" Orientation="Horizontal" CssClass="nav navbar navbar-inner">
        </asp:Menu>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    
        <div class="tabbable"> <!-- Only required for left/right tabs -->
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab1" data-toggle="tab">Section 1</a></li>
            <li><a href="#tab2" data-toggle="tab">Section 2</a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab1">
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>"></asp:SqlDataSource>
             <div class="container row span11">
                 <div class="row span5">
                <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" GroupItemCount="3">
                <EmptyDataTemplate>
                <span>You have no reservations.</span>
            </EmptyDataTemplate>
                 <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <ItemTemplate>
                <span style="">
                    <table>
                            <td>
                                <tr>
                       
                                      <div class="span5">

                                            <div class="row">
                                              <div class="span2">
                                                <h5>Branch Name:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="branchNameLabel" runat="server" Text='<%# Eval("branchName") %>' />
                                              </div>
                                            </div>

                                            <div class="row">
                                              <div class="span2">
                                                <h5>Room Type:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' />
                                              </div>
                                            </div>

                                            <div class="row">
                                              <div class="span2">
                                                <h5>Max People:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="numOfPeopleLabel" runat="server" Text='<%# Eval("numOfPeople") %>' />
                                              </div>
                                            </div>

                                            <div class="row">
                                              <div class="span2">
                                                <h5>Check In:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                 <asp:Label ID="checkinDateLabel" runat="server" Text='<%# Eval("checkinDate","{0:dd/MM/yyyy}") %>' />
                                              </div>
                                            </div>

                                            <div class="row">
                                              <div class="span2">
                                                <h5>Check Out:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="checkoutDateLabel" runat="server" Text='<%# Eval("checkoutDate","{0:dd/MM/yyyy}") %>' />
                                              </div>
                                            </div>

                                            <div class="row">
                                              <div class="span2">
                                                <h5>Room Rate:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price","{0:c}") %>' />
                                              </div>
                                            </div>
                                     </div>
                     

                                </tr>
                            </td>
                        </table>
<br />
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <table id="Table1" runat="server">
                    <tr id="Tr1"  runat="server">
                        <td id="Td1" runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="Tr2"  runat="server">
                        <td id="Td2"  runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            </asp:ListView>
          </div>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>"></asp:SqlDataSource>
           <div class="row span5">
                 <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource4">
                <EmptyDataTemplate>
                <span>You have no reservations.</span>
            </EmptyDataTemplate>
            <ItemTemplate>
                <span style="">
                    <table>
                            <td>
                                <tr>
                           
                                      <div class="span5">

                                            <div class="row">
                                              <div class="span2">
                                                <h5>Package Name:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="packageNameLabel" runat="server" Text='<%# Eval("packageName") %>' />
                                              </div>
                                            </div>

                                            <div class="row">
                                              <div class="span2">
                                                <h5>Offering:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="offerNameLabel" runat="server" Text='<%# Eval("offerName") %>' />
                                              </div>
                                            </div>

                                            <div class="row">
                                              <div class="span2">
                                                <h5>Start Date:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="startDateLabel" runat="server" Text='<%# Eval("startDate","{0:dd/MM/yyyy}") %>' />
                                              </div>
                                            </div>

                                            <div class="row">
                                              <div class="span2">
                                                <h5>End Date:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="endDateLabel" runat="server" Text='<%# Eval("endDate","{0:dd/MM/yyyy}") %>' />
                                              </div>
                                            </div>

                                            <div class="row">
                                              <div class="span2">
                                                <h5>Package Rate:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="price1Label" runat="server" Text='<%# Eval("price","{0:c}") %>' />
                                              </div>
                                            </div>

                                     </div>
                        

                                </tr>
                            </td>
                        </table>
<br />
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                </div>
            </LayoutTemplate>
            </asp:ListView>
          </div>
         </div>
            <div class="tab-pane" id="tab2">
              
            </div>
          </div>
        </div>
        <br />
    
    </div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="packageNo" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <AlternatingItemTemplate>
                <span style="">packageNo:
                <asp:Label ID="packageNoLabel" runat="server" Text='<%# Eval("packageNo") %>' />
                <br />
                roomTypeId:
                <asp:Label ID="roomTypeIdLabel" runat="server" Text='<%# Eval("roomTypeId") %>' />
                <br />
                packageName:
                <asp:Label ID="packageNameLabel" runat="server" Text='<%# Eval("packageName") %>' />
                <br />
                <asp:CheckBox ID="availableStatusCheckBox" runat="server" Checked='<%# Eval("availableStatus") %>' Enabled="false" Text="availableStatus" />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                offeringId:
                <asp:Label ID="offeringIdLabel" runat="server" Text='<%# Eval("offeringId") %>' />
                <br />
                img:
                <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">packageNo:
                <asp:Label ID="packageNoLabel1" runat="server" Text='<%# Eval("packageNo") %>' />
                <br />
                roomTypeId:
                <asp:TextBox ID="roomTypeIdTextBox" runat="server" Text='<%# Bind("roomTypeId") %>' />
                <br />
                packageName:
                <asp:TextBox ID="packageNameTextBox" runat="server" Text='<%# Bind("packageName") %>' />
                <br />
                <asp:CheckBox ID="availableStatusCheckBox" runat="server" Checked='<%# Bind("availableStatus") %>' Text="availableStatus" />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                description:
                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                <br />
                offeringId:
                <asp:TextBox ID="offeringIdTextBox" runat="server" Text='<%# Bind("offeringId") %>' />
                <br />
                img:
                <asp:TextBox ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">roomTypeId:
                <asp:TextBox ID="roomTypeIdTextBox" runat="server" Text='<%# Bind("roomTypeId") %>' />
                <br />packageName:
                <asp:TextBox ID="packageNameTextBox" runat="server" Text='<%# Bind("packageName") %>' />
                <br />
                <asp:CheckBox ID="availableStatusCheckBox" runat="server" Checked='<%# Bind("availableStatus") %>' Text="availableStatus" />
                <br />price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />description:
                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                <br />offeringId:
                <asp:TextBox ID="offeringIdTextBox" runat="server" Text='<%# Bind("offeringId") %>' />
                <br />img:
                <asp:TextBox ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">packageNo:
                <asp:Label ID="packageNoLabel" runat="server" Text='<%# Eval("packageNo") %>' />
                <br />
                roomTypeId:
                <asp:Label ID="roomTypeIdLabel" runat="server" Text='<%# Eval("roomTypeId") %>' />
                <br />
                packageName:
                <asp:Label ID="packageNameLabel" runat="server" Text='<%# Eval("packageName") %>' />
                <br />
                <asp:CheckBox ID="availableStatusCheckBox" runat="server" Checked='<%# Eval("availableStatus") %>' Enabled="false" Text="availableStatus" />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                offeringId:
                <asp:Label ID="offeringIdLabel" runat="server" Text='<%# Eval("offeringId") %>' />
                <br />
                img:
                <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="">packageNo:
                <asp:Label ID="packageNoLabel" runat="server" Text='<%# Eval("packageNo") %>' />
                <br />
                roomTypeId:
                <asp:Label ID="roomTypeIdLabel" runat="server" Text='<%# Eval("roomTypeId") %>' />
                <br />
                packageName:
                <asp:Label ID="packageNameLabel" runat="server" Text='<%# Eval("packageName") %>' />
                <br />
                <asp:CheckBox ID="availableStatusCheckBox" runat="server" Checked='<%# Eval("availableStatus") %>' Enabled="false" Text="availableStatus" />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                offeringId:
                <asp:Label ID="offeringIdLabel" runat="server" Text='<%# Eval("offeringId") %>' />
                <br />
                img:
                <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Package] WHERE [packageNo] = @packageNo" InsertCommand="INSERT INTO [Package] ([roomTypeId], [packageName], [availableStatus], [price], [description], [offeringId], [img]) VALUES (@roomTypeId, @packageName, @availableStatus, @price, @description, @offeringId, @img)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [packageNo], [roomTypeId], [packageName], [availableStatus], [price], [description], [offeringId], [img] FROM [Package]" UpdateCommand="UPDATE [Package] SET [roomTypeId] = @roomTypeId, [packageName] = @packageName, [availableStatus] = @availableStatus, [price] = @price, [description] = @description, [offeringId] = @offeringId, [img] = @img WHERE [packageNo] = @packageNo">
            <DeleteParameters>
                <asp:Parameter Name="packageNo" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="roomTypeId" Type="Decimal" />
                <asp:Parameter Name="packageName" Type="String" />
                <asp:Parameter Name="availableStatus" Type="Boolean" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="offeringId" Type="Decimal" />
                <asp:Parameter Name="img" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="roomTypeId" Type="Decimal" />
                <asp:Parameter Name="packageName" Type="String" />
                <asp:Parameter Name="availableStatus" Type="Boolean" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="offeringId" Type="Decimal" />
                <asp:Parameter Name="img" Type="String" />
                <asp:Parameter Name="packageNo" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
