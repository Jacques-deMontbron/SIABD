<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<KebajaProject.Models.messages>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Nouvelles</h2>

    <p>
        <%: Html.ActionLink("Poster une news", "add", "news")%> |
    </p>

    

    <% foreach (var item in Model) { %>

    <table width="100%">

        <tr>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
        <tr>
            <td style="width:50px;"></td>
            <td>
                <%: String.Format("{0:g}", item.title) %>
            </td>
            <td style="width:90px;">
                <%: Html.ActionLink("Commentaires", "Comment", new { id=item.id_message }) %> 
            </td>
            <td style="width:20px;">
                <%: Html.ActionLink("Like", "Like", new { id=item.id_message }) %> 
            </td>
            <td style="width:120px;">
                <%: String.Format("{0:g}", item.date_post) %>
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <%: item.content %>
            </td>
        </tr>

    </table>
    <br />
    
    <% } %>

    

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>

