<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Page d'accueil
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Bienvenue sur le Réseau Social de Kebaja <%--: ViewData["Message"] --%></h2>
    <p>
        Les dernières nouvelles :
    </p>

    <p>
        /* Afficher les 5 dernières nouvelles */
    </p>
    
    <p>
        <%: Html.ActionLink("Voir + de nouvelles", "index", "news")%>
    </p>
   
</asp:Content>
