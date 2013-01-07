<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Liste des thèmes
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Liste des thèmes</h2>
 
    <ul>
    <% foreach (var item in Model) { %>
        <% string title = item.id_theme.ToString() + " " + (string)item.title; %>
        <li><%: Html.ActionLink(title, "index", new { id = item.id_theme }) %></li>
   
    <% } %>
    </ul>
    



</asp:Content>
