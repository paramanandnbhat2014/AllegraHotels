<%@ Page Title="Allegra Hotel" Language="C#" MasterPageFile="Home.master" AutoEventWireup="true" 
    CodeFile="PackageConfirmation.aspx.cs" Inherits="PackageConfirmation" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
    <div>
       <h3>Details for the reservation</h3>
        <hr />
      <asp:ListView ID="ListView10" runat="server" DataSourceID="SqlDataSource2">
 
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <span style="">
            <h4>
            <asp:Label ID="Label1" runat="server" Text="Personal Information"></asp:Label>
            </h4>
            <table>
                    <tr>
                        <td>                           
                            <div class="row container">
                                        <div class="span2">
                                            <div class="row"><h5>Customer No:</h5></div> 
                                            <div class="row"><h5>FirstName:</h5></div>                      
                                            <div class="row"><h5>LastName:</h5></div>                                             
                                            <div class="row"><h5>DateOfBirth:</h5></div>  
                                            <div class="row"><h5>Street:</h5></div>  
                                              
                                            
                                        </div>
                                        <div class="span3" style="margin-top:10px;">
                                        <div class="row"><asp:Label ID="customerNoLabel" runat="server" Text='<%# Eval("CustomerNo") %>' /></div><br />
                                        <div class="row"><asp:Label ID="firstNameLabel" runat="server" Text='<%# Eval("firstName") %>' /></div><br />
                                        <div class="row"><asp:Label ID="lastNameLabel" runat="server" Text='<%# Eval("lastName") %>' /></div><br />
                                        <div class="row"><asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Eval("DateOfBirth") %>' /></div><br />
                                        <div class="row"><asp:Label ID="streetLabel" runat="server" Text='<%# Eval("street") %>' /></div><br />
                                       
                                        </div>
                                        <div class="span2">
                                            <div class="row"><h5>Suburb:</h5></div>
                                            <div class="row"><h5>City:</h5></div> 
                                            <div class="row"><h5>ContactNo:</h5></div>
                                            <div class="row"><h5>Email:</h5></div> 
                                        </div>
                                        <div class="span3" style="margin-top:10px;">
                                        <div class="row"><asp:Label ID="suburbLabel" runat="server" Text='<%# Eval("suburb") %>' /></div><br /> 
                                         <div class="row"><asp:Label ID="cityLabel" runat="server" Text='<%# Eval("City") %>' /></div><br />
                                          <div class="row"><asp:Label ID="ContactNoLabel" runat="server" Text='<%# Eval("ContactNo") %>' /></div><br />
                                          <div class="row"><asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' /></div><br />
                                        </div>
                                  </div>
                        </td>
                    </tr>
                </table>
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div style="" id="itemPlaceholderContainer" runat="server">
                <span runat="server" id="itemPlaceholder" />
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>

        
    </div>
    <hr />
    <div>

     <asp:ListView ID="ListView11" runat="server" DataSourceID="SqlDataSource3" >
 
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <span style="">
             <h4>
             <asp:Label ID="Label1" runat="server" Text="Package Information"></asp:Label>
             </h4>
            <table>
                    <tr>
                        <td>
                            <div class="row container">
                                        <div class="span2">
                                            <div class="row"><h5>Package Number:</h5></div> 
                                            <div class="row"><h5>Package Name:</h5></div>                      
                                            <div class="row"><h5>Room type:</h5></div>                                             
                                            <div class="row"><h5>Offer Name:</h5></div>  
                                           
                                        </div>
                                        <div class="span3" style="margin-top:10px;">
                                        <div class="row"><asp:Label ID="packageNoLabel" runat="server" Text='<%# Eval("packageNo") %>' /></div><br />
                                        <div class="row"><asp:Label ID="packageNameLabel" runat="server" Text='<%# Eval("packageName") %>' /></div><br />
                                        <div class="row"><asp:Label ID="roomTypeLabel" runat="server" Text='<%# Eval("typeName") %>' /></div><br />
                                        <div class="row"><asp:Label ID="offerNameLabel" runat="server" Text='<%# Eval("offerName") %>' /></div><br />
                                       
                                        </div>
                                        <div class="span2">
                                            <div class="row"><h5>Start Date:</h5></div> 
                                            <div class="row"><h5>End Date:</h5></div>
                                            <div class="row"><h5>Price:</h5></div>
                                            <div class="row"><h5>Deposit:</h5></div> 
                                        </div>
                                        <div class="span3" style="margin-top:10px;">
                                         <div class="row"><asp:Label ID="startLabel" runat="server" Text='<%# Eval("startDate") %>'/></div><br />
                                          <div class="row"><asp:Label ID="checkoutLabel" runat="server"  Text='<%# Eval("endDate") %>' /></div><br />
                                         <div class="row"><asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></div><br />
                                          <div class="row"><asp:Label ID="depositLabel" runat="server" Text='<%# Eval("price") %>' /></div><br />
                                        </div>
                                  </div>                           
                        </td>
                    </tr>
                </table>
                <hr/>
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div style="" id="itemPlaceholderContainer" runat="server">
                <span runat="server" id="itemPlaceholder" />
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [Package] , [RoomType], [Offering] "></asp:SqlDataSource>

    </div>

    <asp:Button ID="Button2" runat="server" Text="Back"  CssClass="btn btn-primary" OnClick="Button2_Click1" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Next"  CssClass="btn btn-primary" OnClick="Button1_Click1" />

</asp:Content>