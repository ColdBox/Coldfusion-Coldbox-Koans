/**
 * ColdBox 5 Router
 */
component{

	function configure(){
		// The valid extensions this interceptor will detect
		setValidExtensions( 'xml,json,jsont,rss,html,htm,cfm,print,pdf,doc' );
		setFullRewrites( true );

		// Your Application Routes
		route( "/tasks/:action" )
			.toHandler( "tasks" );

		route( "/:handler/:action?" ).end();
	}
}