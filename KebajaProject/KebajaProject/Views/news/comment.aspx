<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<KebajaProject.Models.CommentModels>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	comment
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Commentaires sur la nouvelle</h2>

    <p>
        <%: Html.ActionLink("Réagir à cette nouvelle", "PostComment", new { id = @Model.Message.id_message })%> |
    </p>

    <table width="100%">

        <tr>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
        <tr>
            <td style="width:50px;"></td>
            <td>
                <%: String.Format("{0:g}", @Model.Message.title)%>
            </td>
            <td style="width:20px;">
                <%: Html.ActionLink("Like", "Like", new { id=@Model.Message.id_message }) %> 
            </td>
            <td style="width:120px;">
                <%: String.Format("{0:g}", @Model.Message.date_post)%>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <%: @Model.Message.content%>
            </td>
        </tr>

    </table>
    
    <br />

    <% foreach (var item in @Model.Comments) { %>

    <table width="60%">

        <tr>
            <th></th>
            <th></th>
        </tr>
        <tr>
            <td></td>
            <td style="width:120px;">
                <%: String.Format("{0:g}", item.date_post) %>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <%: item.content %>
            </td>
        </tr>

    </table>
    <br />
    
    <% } %>

    

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>

