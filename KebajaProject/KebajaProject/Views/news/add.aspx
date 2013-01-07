<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<KebajaProject.Models.messages>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	add
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>add</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.id_message) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.id_message) %>
                <%: Html.ValidationMessageFor(model => model.id_message) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.id_user) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.id_user) %>
                <%: Html.ValidationMessageFor(model => model.id_user) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.id_theme) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.id_theme) %>
                <%: Html.ValidationMessageFor(model => model.id_theme) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.date_post) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.date_post) %>
                <%: Html.ValidationMessageFor(model => model.date_post) %>
            </div>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.title) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.title) %>
                <%: Html.ValidationMessageFor(model => model.title) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.answer_to) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.answer_to) %>
                <%: Html.ValidationMessageFor(model => model.answer_to) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.is_announce) %>
            </div>
            <div class="editor-field">
                <%: Html.CheckBoxFor(model => model.is_announce) %>
                <%: Html.ValidationMessageFor(model => model.is_announce) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.is_news) %>
            </div>
            <div class="editor-field">
                <%: Html.CheckBoxFor(model => model.is_news) %>
                <%: Html.ValidationMessageFor(model => model.is_news) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.is_censored) %>
            </div>
            <div class="editor-field">
                <%: Html.CheckBoxFor(model => model.is_censored) %>
                <%: Html.ValidationMessageFor(model => model.is_censored) %>
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

