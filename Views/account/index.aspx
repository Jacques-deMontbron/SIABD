<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Mon Compte</h2>

    <h3>Mes dernières nouvelles</h3>
    <p>
        // Récupérer les trois dernières nouvelles avec un lien vers chacune
        <br /><br />
        <%: Html.ActionLink("Consulter toutes mes nouvelles", "mynews", "account")%>
    </p>

    <h3>Mes derniers messages</h3>
    <p>
        // Récupérer les trois derniers messages (+ écrire le thème) avec un lien vers chaque topic
        <br /><br />
        <%: Html.ActionLink("Consulter tous mes messages", "mymessages", "account")%>
    </p>



</asp:Content>
