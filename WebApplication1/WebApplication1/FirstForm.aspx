<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstForm.aspx.cs" Inherits="WebApplication1.FirstForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: relative;
            background-color: #FFFFFF;
            top: 5px;
            left: -5px;
            height: 20px;
            width: 136px;
            margin-top: 0px;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style5 {
            text-align: justify;
            margin-left: 120px;
        }
        body {
    background-image:url('https://www.planwallpaper.com/static/images/background-wallpapers-33.jpg');
    background-repeat:no-repeat;
    background-attachment:fixed;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
      
        <div>
        </div>
            <p class="auto-style5" style="border-style: solid; border-width: medium; padding: inherit; font-family: 'Times New Roman', Times, serif; font-size: xx-large; font-weight: 200; font-style: normal; font-variant: normal; text-transform: uppercase; color: #000066; text-align: justify; word-spacing: normal; text-decoration: blink;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rGuest Pay Test Management&nbsp; Tool&nbsp;
        </p>
        <p class="auto-style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="gatewayLabel" runat="server" Font-Bold="True" Text="Gateway      " CssClass="auto-style5" BackColor="#993300" BorderColor="#3366CC" BorderWidth="2px" ForeColor="Black" Height="24px" Width="144px"></asp:Label>
                &nbsp;:&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="gatewayDropDown" runat="server" CssClass="auto-style1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ToolTip="Select the gateway to validate" BackColor="#003366" ForeColor="White">
                    <asp:ListItem>Givex</asp:ListItem>
                    <asp:ListItem>Vantiv</asp:ListItem>
                    <asp:ListItem>CardDog</asp:ListItem>
                    <asp:ListItem>Shift4</asp:ListItem>
                </asp:DropDownList>
        </p>
        <div class="auto-style5">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="userNameLabel" runat="server" Font-Bold="True" Text="UserName" CssClass="auto-style3" BackColor="#993300" BorderColor="#3366CC" BorderWidth="2px" ForeColor="Black" Height="24px" Width="143px"></asp:Label>
                &nbsp;:<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="userNameTextBox" ErrorMessage="Enter Build Version">*</asp:RequiredFieldValidator>
            &nbsp; <asp:TextBox ID="userNameTextBox" runat="server" OnTextChanged="TextBox5_TextChanged2" ToolTip="Specify the Agilysys systerm user name" Width="134px" BackColor="#003366" BorderColor="Lime" BorderWidth="2px" CssClass="auto-style1" EnableTheming="True" ForeColor="White"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        &nbsp;</div>
            <p class="auto-style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="buildLabel" runat="server" Font-Bold="True" Text="Build Version" BackColor="#993300" BorderColor="#3366CC" BorderWidth="2px" ForeColor="Black" Height="24px" Width="144px"></asp:Label>
                &nbsp;:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="buildTextBox" runat="server" ToolTip="(optional) if required for regression specify the jira build number" Width="134px" OnTextChanged="buildTextBox_TextChanged" BackColor="#003366" BorderColor="Lime" BorderWidth="2px" CssClass="auto-style1" ForeColor="White"></asp:TextBox>
        </p>
            <p class="auto-style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="jiraLabel" runat="server" Font-Bold="True" Text="Jira Cycle Version" BackColor="#993300" BorderColor="#3366CC" BorderWidth="2px" ForeColor="Black" Height="24px" Width="143px"></asp:Label>
&nbsp;:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="jiraTextBox" runat="server" ToolTip="(optional) if required for regression specify the jira version number" Width="134px" OnTextChanged="jiraTextBox_TextChanged" BackColor="#003366" BorderColor="Lime" BorderWidth="2px" CssClass="auto-style1" ForeColor="White"></asp:TextBox>
        </p>
            <p class="auto-style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="localPathLabel" runat="server" Font-Bold="True" Text="Local Directory Path" BackColor="#993300" BorderColor="#3366CC" BorderWidth="2px" ForeColor="Black" Height="24px"></asp:Label>
                &nbsp; :<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="localPathTextBox" ErrorMessage="Enter Local Path">*</asp:RequiredFieldValidator>
                &nbsp; <asp:TextBox ID="localPathTextBox" runat="server" ToolTip="Enter the local Directory where to clone the source code" Width="134px" OnTextChanged="localPathTextBox_TextChanged" BackColor="#003366" BorderColor="Lime" BorderWidth="2px" CssClass="auto-style1" ForeColor="White"></asp:TextBox>
        </p>
            <p class="auto-style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="localFolderLabel" runat="server" Font-Bold="True" Text="Local Folder Name" BackColor="#993300" BorderColor="#3366CC" BorderWidth="2px" ForeColor="Black" Height="24px" Width="143px"></asp:Label>
&nbsp; :&nbsp;&nbsp; <asp:TextBox ID="folderTextBox" runat="server" CssClass="auto-style1" Width="134px" ToolTip="(optional)If you want to create a new folder within the specified direcotry, Enter the folder name" OnTextChanged="folderTextBox_TextChanged" BackColor="#003366" BorderColor="Lime" BorderWidth="2px" ForeColor="White"></asp:TextBox>
        </p>
        <p class="auto-style5">
                <strong>Set Date :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Calendar ID="Calendar1" runat="server"
           ondayrender="Calendar1_DayRender"
           OnSelectionChanged="TextBox5_Selection_Change"
           style="margin-left: 79px; margin-top: 0px" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="120px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="810px">

                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />

         <SelectedDayStyle BackColor="#CC3333"
                           ForeColor="White">
         </SelectedDayStyle>

                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                <TodayDayStyle BackColor="#CCCC99" />

      </asp:Calendar> 
        </p>
        

            <p>
                &nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p class="auto-style5">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sertime:&nbsp;</strong>
            <asp:DropDownList ID="hourDropDownBox" runat="server" Height="22px" Width="144px" style="margin-left: 0px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
            </asp:DropDownList>&nbsp;<strong>hoursong>hours</strong>

            <asp:DropDownList ID="MinutesDropDownBox" runat="server" Height="21px" Width="143px" style="margin-left: 78px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
                <asp:ListItem>32</asp:ListItem>
                <asp:ListItem>33</asp:ListItem>
                <asp:ListItem>34</asp:ListItem>
                <asp:ListItem>35</asp:ListItem>
                <asp:ListItem>36</asp:ListItem>
                <asp:ListItem>37</asp:ListItem>
                <asp:ListItem>38</asp:ListItem>
                <asp:ListItem>39</asp:ListItem>
                <asp:ListItem>40</asp:ListItem>
            <asp:ListItem>41</asp:ListItem>
                <asp:ListItem>42</asp:ListItem>
                <asp:ListItem>43</asp:ListItem>
                <asp:ListItem>44</asp:ListItem>
                <asp:ListItem>45</asp:ListItem>
                <asp:ListItem>46</asp:ListItem>
                <asp:ListItem>47</asp:ListItem>
                <asp:ListItem>48</asp:ListItem>
                <asp:ListItem>49</asp:ListItem>
                <asp:ListItem>50</asp:ListItem>
            <asp:ListItem>51</asp:ListItem>
                <asp:ListItem>52</asp:ListItem>
                <asp:ListItem>53</asp:ListItem>
                <asp:ListItem>54</asp:ListItem>
                <asp:ListItem>55</asp:ListItem>
                <asp:ListItem>56</asp:ListItem>
                <asp:ListItem>57</asp:ListItem>
                <asp:ListItem>58</asp:ListItem>
                <asp:ListItem>59</asp:ListItem>
                <asp:ListItem>60</asp:ListItem>
            </asp:DropDownList>&nbsp;<strong>minutes
        </strong>
        </p>
        

            <p>
       &nbsp;</p>

        <p style="margin-left: 520px">
            <asp:Button ID="buildButton" runat="server" BorderColor="#003300" BorderStyle="Solid" Font-Bold="True" Font-Names="Calibri" OnClick="Button2_Click" Text="BUILD" Width="83px" BackColor="#000066" ForeColor="White" style="margin-bottom: 30px" />
        </p>
    </form>
       
</body>
</html>
