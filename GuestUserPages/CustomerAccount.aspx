<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="CustomerAccount.aspx.cs" Inherits="CustomerAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="container" style="text-align: center">
        <h2><asp:Label ID="myAccount" runat="server" Text="My Account"></asp:Label></h2>
    </div>
   <hr/>
    <div class="tabbable"> <!-- Only required for left/right tabs -->
      <ul class="nav nav-tabs">
        <li class="active"><a href="#tab1" data-toggle="tab">Personal Detail</a></li>
        <li><a href="#tab2" data-toggle="tab">My Reservation</a></li>
          <li><a href="#tab3" data-toggle="tab">Change Password</a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="tab1">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>

            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="CustomerNo">
                <EditItemTemplate>
                    <span style="">
                    <table>
                            <td>
                                <tr>
                                    <div class="row container">
                                        <div class="span2">
                                            <div class="row"><h5>FirstName:</h5></div>                      
                                            <div class="row"><h5>LastName:</h5></div>                                             
                                            <div class="row"><h5>DateOfBirth:</h5></div>  
                                            <div class="row"><h5>Street:</h5></div>  
                                            <div class="row"><h5>Suburb:</h5></div>  
                                            
                                        </div>
                                        <div class="span3">
                                        <div class="row"><asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>'/></div>
                                        <div class="row"><asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' /></div>
                                        <div class="row"><asp:TextBox ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth") %>' /></div>
                                        <div class="row"><asp:TextBox ID="streetTextBox" runat="server" Text='<%# Bind("street") %>' /></div>
                                        <div class="row"><asp:TextBox ID="suburbTextBox" runat="server" Text='<%# Bind("suburb") %>' /></div>
                                        </div>
                                        <div class="span2">
                                            <div class="row"><h5>City:</h5></div> 
                                            <div class="row"><h5>ContactNo:</h5></div> 
                                            <div class="row"><h5>Email:</h5></div> 
                                            <div class="row"><h5>In Mailling List?</h5></div> 
                                            <div class="row"><h5>CardNumber:</h5></div> 
                                        </div>
                                        <div class="span3">
                                         <div class="row"><asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' /></div>
                                          <div class="row"><asp:TextBox ID="ContactNoTextBox" runat="server" Text='<%# Bind("ContactNo") %>' /></div>
                                          <div class="row"><asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' /></div>
                                         <div class="row"><asp:CheckBox ID="mailingListCheckBox" runat="server" Checked='<%# Bind("mailingList") %>' Text="" /></div>
                                         <div class="row" style="margin-top:20px;"><asp:TextBox ID="cardNumberTextBox" runat="server" Text='<%# Bind("cardNumber") %>' /></div>
                                         </div>
                                  </div>
                                </tr>
                            </td>
                        </table>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Save" CssClass="btn"/>
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn"/>
                    <br /><br /></span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>

                <ItemTemplate>
                    <span style="">
                    <table>
                            <td>
                                <tr>
                                    <div class="row container">
                                      <div class="span5">
                                            <div class="row">
                                              <div class="span2">
                                                <h5>FirstName:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="firstNameLabel" runat="server" Text='<%# Bind("firstName") %>'/>
                                              </div>
                                            </div>
                                            <div class="row">
                                              <div class="span2">
                                                <h5>LastName:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="lastNameLabel" runat="server" Text='<%# Bind("lastName") %>' />
                                              </div>
                                            </div>
                                            <div class="row">
                                              <div class="span2">
                                                <h5>DateOfBirth:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                               <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Eval("DateOfBirth","{0:dd/MM/yyyy}") %>'/>
                                              </div>
                                            </div>
                                            <div class="row">
                                              <div class="span2">
                                                <h5>Street:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="streetLabel" runat="server" Text='<%# Bind("street") %>' />
                                              </div>
                                            </div>
                                            <div class="row">
                                              <div class="span2">
                                                <h5>Suburb:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="suburbLabel" runat="server" Text='<%# Bind("suburb") %>' />
                                              </div>
                                            </div>
                                     </div>

                                     <div class="span5">
                                            <div class="row">
                                              <div class="span2">
                                                <h5>City:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                                              </div>
                                            </div>
                                            <div class="row">
                                              <div class="span2">
                                                <h5>ContactNo:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="ContactNoLabel" runat="server" Text='<%# Bind("ContactNo") %>' />
                                              </div>
                                            </div>
                                            <div class="row">
                                              <div class="span2">
                                                <h5>Email:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                               <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                                              </div>
                                            </div>
                                            <div class="row">
                                              <div class="span2">
                                                <h5>In Mailing List?</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:CheckBox ID="mailingListCheckBox" runat="server" Checked='<%# Bind("mailingList") %>' Text="" />
                                              </div>
                                            </div>
                                            <div class="row">
                                              <div class="span2">
                                                <h5>CardNumber:</h5>
                                              </div>
                                              <div class="span3" style="margin-top: 10px;">
                                                <asp:Label ID="cardNumberLabel" runat="server" Text='<%# Bind("cardNumber") %>' />
                                              </div>
                                            </div>
                                     </div>
                                         
                                   </div>
                                    <div style="margin-left: 20px;">
                                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="btn"/>
                                    </div>
                                </tr>
                            </td>
                        </table>
                   
<br />
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
             </ContentTemplate>
          </asp:UpdatePanel>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [CustomerNo],[firstName], [lastName], [DateOfBirth], [street], [suburb], [city], [ContactNo], [email], [mailingList], [cardNumber] FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [firstName] = @firstName, [lastName] = @lastName, [DateOfBirth] = @DateOfBirth, [street] = @street, [suburb] = @suburb, [city] = @city, [ContactNo] = @ContactNo, [email] = @email, [mailingList] = @mailingList, [cardNumber] = @cardNumber WHERE [CustomerNo] = @CustomerNo">
                <UpdateParameters>
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfBirth" />
                <asp:Parameter Name="street" Type="String" />
                <asp:Parameter Name="suburb" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mailingList" Type="Boolean" />
                <asp:Parameter Name="cardNumber" Type="Decimal" />
                <asp:Parameter Name="CustomerNo" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
        <div class="tab-pane" id="tab2">
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>"></asp:SqlDataSource>
             <div class="container row span11">
                 <div class="row span5">
                <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" GroupItemCount="3">
                <EmptyDataTemplate>
                <span>You have no room reservations.</span>
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
                                          <div class="row">
                                              <div class="span3">
                                                  <asp:Label ID="ratingTitle" runat="server" Text="How much do you like the room?"></asp:Label>
                                              </div>
                                              <div class="span2">
                                                   <ajaxToolkit:Rating ID="roomRating" runat="server" MaxRating="5" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar"></ajaxToolkit:Rating>
                                              </div>
                                          </div>
                                          
                                            </div>
                                          <div class="row">
                                              <div class="span5">
                                                <hr />
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
                <span>You have no package reservations.</span>
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
                                          
                                          <div class="row">
                                              <div class="span3">
                                                  <asp:Label ID="ratingTitle2" runat="server" Text="How much do you like the package?"></asp:Label>
                                              </div>
                                              <div class="span2">
                                                   <ajaxToolkit:Rating ID="packageRating" runat="server" MaxRating="5" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar"></ajaxToolkit:Rating>
                                              </div>
                                          </div>
                                         
                                          <div class="row">
                                              <div class="span5">
                                                <hr />
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
           <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>"></asp:SqlDataSource>
            <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource5">
                <ItemTemplate>
                    <div class="row span7 offset4">
                        <strong>Reservation Date:</strong><asp:Label ID="reservationDateLabel" runat="server" Text='<%# Convert.ToDateTime(Eval("reservationDate")).ToString("dd/MM/yyyy") %>'/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <strong>Number of Guests: </strong><asp:Label ID="NumOfGuestsLabel" runat="server" Text='<%# Eval("NumOfGuests") %>' />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <strong>Total Price:</strong><asp:Label ID="totalPrice" runat="server" Text= '<%# Convert.ToInt32(Eval("price")) + Convert.ToInt32(Eval("price1")) %>' ></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:ListView>
         </div>
        </div>
          <div class="tab-pane" id="tab3">
              <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" UpdateCommand="UPDATE [Customer] SET [password] = @password WHERE [userName] = @userName">
                <UpdateParameters>
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="userName" Type="String" />
                </UpdateParameters>
              </asp:SqlDataSource>
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                  <ContentTemplate>
                      <div class="row">
                          <div class="span4 offset4"  style="text-align: center;">
                              <div class="row">
                                 <asp:Label ID="OldPasswdLabel" runat="server" Text="Please enter your old password."></asp:Label> 
                              </div>
                              <div class="row">
                                  <asp:TextBox ID="OldPasswdText" runat="server" type="password"></asp:TextBox>
                              </div>
                              <div class="row">
                                  <asp:Label ID="NewPasswdLabel" runat="server" Text="Please enter your new password."></asp:Label>
                              </div>
                              <div class="row">
                                   <asp:TextBox ID="NewPasswdText" runat="server" type="password"></asp:TextBox>
                                  <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="NewPasswdText" StrengthIndicatorType="Text" PrefixText="Strength:" HelpStatusLabelID="lblhelp" PreferredPasswordLength="8"
                                    MinimumNumericCharacters="1" MinimumSymbolCharacters="1" TextStrengthDescriptions="Very Poor;Weak;Average;Good;Excellent" TextStrengthDescriptionStyles="VeryPoorStrength;WeakStrength;
                                    AverageStrength;GoodStrength;ExcellentStrength"></ajaxToolkit:PasswordStrength>
                              </div>
                             <div class="row">
                                   <asp:Label ID="ReEnterLabel" runat="server" Text="Please re-enter your new password."></asp:Label>
                              </div>
                              <div class="row">
                                   <asp:TextBox ID="ReEnterText" runat="server" type="password"></asp:TextBox>
                              </div>
                             <div class="row">
                                  <asp:Button ID="Confirm" runat="server" Text="Confirm" CssClass="btn" OnClick="Confrim_Click" /><asp:Button ID="Reset" runat="server" Text="Reset" CssClass="btn" OnClick="Reset_Click"/>
                             </div>
                          </div>
                          <div class="span4">
                              <div class="row" style="margin-top: 20px;">
                                 <asp:Label ID="WrongPasswd" runat="server" Text="Your old password is incorrect." Style="color: red;" ></asp:Label>
                              </div>
                              <div class="row" style="margin-top: 70px;">
                                <asp:Label ID="passwdNotMatch" runat="server" Text="Password does not match." Style="color: red;"></asp:Label>
                              </div>
                              
                          </div>
                          <div class="span5 offset4" style="margin-bottom: 50px;">
                              <asp:Label ID="SuccessMessage" runat="server" Text="Successful! Your password has been changed."></asp:Label>
                          </div>
                      </div>
                  </ContentTemplate>
            </asp:UpdatePanel>
         </div>
      </div>
    </div>
</asp:Content>

