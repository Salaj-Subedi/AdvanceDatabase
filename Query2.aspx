<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Query2.aspx.cs" Inherits="_20049007SalajSubedi.Complex_Form_Query2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="HOME.aspx">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b>SEN OFFICE RECORDS</b> </a>
     <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Address_Details.aspx" CssClass="nav-link text-dark"><b>Address Details</b></asp:HyperLink>
                </li>
                <li class="nav-item">
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Employee_Details.aspx" CssClass="nav-link text-dark"><b>Employee Details</b></asp:HyperLink>
                </li>
                <li class="nav-item">
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="Department_Details.aspx" CssClass="nav-link text-dark"><b>Department Details</b></asp:HyperLink>
                </li>
                <li class="nav-item">
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="Job_Details.aspx" CssClass="nav-link text-dark"><b>Job Details</b></asp:HyperLink>
                </li>
                <li class="nav-item">
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="Role_Details.aspx" CssClass="nav-link text-dark"><b>Role Details</b></asp:HyperLink>
                </li>
            </ul>  
        </div>
       <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Complex WebForms
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="Query1.aspx">Employee Jobs Q1</a>
    <a class="dropdown-item" href="Query2.aspx">Employee Votes Q2</a>
    <a class="dropdown-item" href="Query3.aspx">Voting Record Q3</a>
  </div>
</div>&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
    </nav>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CoursworkConnection %>" ProviderName="<%$ ConnectionStrings:CoursworkConnection.ProviderName %>" SelectCommand="SELECT e.EMPID, e.EMPNAME, v.VOTERID, v.VOTINGYEAR, v.VOTINGMONTH, c.EMPNAME AS candidate_name, v.CANDIDATEID FROM EMPLOYEES e, VOTES v, EMPLOYEES c WHERE e.EMPID = v.VOTERID AND v.CANDIDATEID = c.EMPID AND (e.EMPID = :employee)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="employee" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CoursworkConnection %>" ProviderName="<%$ ConnectionStrings:CoursworkConnection.ProviderName %>" SelectCommand="SELECT &quot;EMPID&quot;, &quot;EMPNAME&quot; FROM &quot;EMPLOYEES&quot;"></asp:SqlDataSource>
        SELECT AN EMPLOYEE<br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="EMPNAME" DataValueField="EMPID">
        </asp:DropDownList>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EMPID,VOTERID,VOTINGYEAR,VOTINGMONTH" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="EMPID" HeaderText="EMPID" ReadOnly="True" SortExpression="EMPID" />
                <asp:BoundField DataField="EMPNAME" HeaderText="EMPNAME" SortExpression="EMPNAME" />
                <asp:BoundField DataField="VOTERID" HeaderText="VOTERID" ReadOnly="True" SortExpression="VOTERID" />
                <asp:BoundField DataField="VOTINGYEAR" HeaderText="VOTINGYEAR" ReadOnly="True" SortExpression="VOTINGYEAR" />
                <asp:BoundField DataField="VOTINGMONTH" HeaderText="VOTINGMONTH" ReadOnly="True" SortExpression="VOTINGMONTH" />
                <asp:BoundField DataField="CANDIDATE_NAME" HeaderText="CANDIDATE_NAME" SortExpression="CANDIDATE_NAME" />
                <asp:BoundField DataField="CANDIDATEID" HeaderText="CANDIDATEID" SortExpression="CANDIDATEID" />
            </Columns>
        </asp:GridView>
    </form>
      <br /> <br /> <br /> <br />
        <footer class="site-footer">
      <div class="container">
        <div class="row">

          <div class="col-lg-5 mx-lg-auto col-md-8 col-10">
            <h1 class="text-white"  ="100">SEN OFFICE IS PROUD PARTHERS FOR<br /> <strong> TOP COMPANIES</strong>.</h1>
          </div>

          <div class="col-lg-3 col-md-6 col-12"  ="200">
            <h4 class="my-4">Contact Info</h4>

            <p class="mb-1">
              <i class="fa fa-phone mr-2 footer-icon"></i> 
              +977 9812345678
            </p>

            <p>
              <a href="#">
                <i class="fa fa-envelope mr-2 footer-icon"></i>
                SEN@OFFICE.ORG
              </a>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 col-12"  ="300">
            <h4 class="my-4">Our Address</h4>

            <p class="mb-1">
              <i class="fa fa-home mr-2 footer-icon"></i> 
              Dhapakhel, Lalitpur, Nepal
            </p>
          </div>

          <div class="col-lg-4 mx-lg-auto text-center col-md-8 col-12"  ="400">
            <p class="copyright-text">Copyright &copy; 2020
       
          </div>

          <div class="col-lg-3 mx-lg-auto col-md-6 col-12"  ="600">
            <ul class="social-icon">
              <li><a href="#" class="fa fa-instagram"></a></li>
              <li><a href="#" class="fa fa-twitter"></a></li>
              <li><a href="#" class="fa fa-facebook"></a></li>
              <li><a href="#" class="fa fa-youtube"></a></li>
            </ul>
          </div>

        </div>
      </div>
    </footer>
</body>
</html>
