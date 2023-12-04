<%@ Page Title="Add Document" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="UCCFRFWebApp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <div class="row">
        <div class="col-md-8">
            <section id="addFileForm">
                <div class="form-horizontal">
                    <h4>Use a local file to add.</h4>
                    <hr />
                    
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="FileUpload1" CssClass="col-md-2 control-label">Upload File</asp:Label>
                        <div class="col-md-10">
                            <asp:FileUpload runat="server" ID="FileUpload1" CssClass="form-control" />
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Section" CssClass="col-md-2 control-label">Section</asp:Label>
                        <div class="col-md-10">
                            <asp:DropDownList ID="Section" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem Enabled="False">Please Choose...</asp:ListItem>
                                <asp:ListItem>Section 1: Currciculum Vita</asp:ListItem>
                                <asp:ListItem>Section 2: Degree/Transcript</asp:ListItem>
                                <asp:ListItem>Section 3: Letter of hire, reappointment or promotion</asp:ListItem>
                                <asp:ListItem>Section 4: Self-Report</asp:ListItem>
                                <asp:ListItem>Section 5: Summary Page</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Section"
                                CssClass="text-danger" ErrorMessage="Document section is required." />
                        </div>
                    </div>
                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="PageNum" CssClass="col-md-2 control-label">Number of Pages</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="PageNum"
                                CssClass="text-danger" ErrorMessage="Document section is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Description" CssClass="col-md-2 control-label">Description</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox ID="TextBox1" runat="server" Height="87px" Width="353px"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Description"
                                CssClass="text-danger" ErrorMessage="Document description is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="Upload2" Text="Upload File" ID="Upload_btn" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
                
                <p>

                    <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                    --%>
                </p>
            </section>
        </div>
    </div>
</asp:Content>
