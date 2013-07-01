<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="de.uni_koeln.spinfo.wafs.mp3.data.Track"%>
<%@page import="java.util.List"%>
<%@page import="de.uni_koeln.wafs.datakeeper.query.Result"%>
<%@page import="de.uni_koeln.wafs.datakeeper.util.TrackField"%>
<%@page import="de.uni_koeln.wafs.datakeeper.query.WAFSQuery"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="/modules/htmlhead.jsp" />

<body style="padding-top: 0px;">
	<div id="top">
		<jsp:include page="/modules/header_small.jsp" />
	</div>

	<div class="pagination">
		<ul>
			<li>
				<%
					for (char c = 'A'; c <= 'Z'; c++) {
				%> <!-- Hier alphabetische Liste... -->
				<a href="/albums/<%=c + ".html"%>"> <%=c%></a> <%
 	}
 %>
			
		</ul>
	</div>
	<%
		Result result = (Result) request.getAttribute("result");
	%>
	<%
		List<Track> tracks = result.getEntries();
	%>

	<table class="table table-striped">
		<%
			for (Track track : tracks) {
		%>

		<tr>
			<td>
			<a href="/tracks/<%=track.getArtist()%>/<%=track.getAlbum() + ".html"%>"> <%=track.getAlbum()%></a>
			</td>
		</tr>

		<%
			}
		%>
	</table>



</body>
</html>