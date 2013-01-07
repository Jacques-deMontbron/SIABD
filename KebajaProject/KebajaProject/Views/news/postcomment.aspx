<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<KebajaProject.Models.comments>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	postcomment
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>postcomment</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.id_user) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.id_user) %>
                <%: Html.ValidationMessageFor(model => model.id_user) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.date_post) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.date_post) %>
                <%: Html.ValidationMessageFor(model => model.date_post) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.content) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.content) %>
                <%: Html.ValidationMessageFor(model => model.content) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>

