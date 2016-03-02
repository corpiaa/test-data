<h3>
  <%= u.capitalize(t(get('tipo'))) %>
  <br>
  <small><%= u.capitalize(t(get('comunidad'))) %></small>
</h3>

<div class="image-wrapper">
  <% if (getImage()) { %>
    <img src="<%= getImage() %>">
  <% } %>
</div>

<table class="table">
  <tr>
    <th>Ubicaci&oacute;n:</th>
    <td><%= getFormattedCoords() %></td>
  </tr>
  <tr>
    <th>Federaci&oacute;n:</th>
    <td><%= t(get('federacion')) %></td>
  </tr>
  <tr>
    <th>Comunidad:</th>
    <td><%= u.capitalize(t(get('comunidad'))) %></td>
  </tr>
  <% if (get('pca') !== 'not_recorded') { %>
  <tr>
    <th>P.C.A:</th>
    <td><%= get('pca') %></td>
  </tr>
  <% } %>
  <% if (get('faja') !== 'not_recorded') { %>
  <tr>
    <th>Faja:</th>
    <td><%= get('faja') %></td>
  </tr>
  <% } %>
  <% if (get('arbol') !== 'not_recorded') { %>
  <tr>
    <th>Numero de Arbol:</th>
    <td><%= get('arbol') %></td>
  </tr>
  <% } %>
  <tr>
    <th>Especie talado:</th>
    <td><%= u.capitalize(t(_getOther('especie','especie_other'))) %></td>
  </tr>
  <tr>
    <th>Diametro (DAP):</th>
    <td><%= get('dap') %></td>
  </tr>
  <tr>
    <th>Monitor:</th>
    <td><%= u.capitalize(t(_getOther('nombre_monitor','nombre_monitor_other'))) %></td>
  </tr>
  <tr>
    <th>Fecha de visita:</th>
    <td><%= u.parseDate(get('today')) %></td>
  </tr>

</table>
