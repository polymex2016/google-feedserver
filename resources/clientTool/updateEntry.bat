rem updateEntry {feedId} {entryId} {entryFilePath}

@echo off
call setupEnv.bat
java -cp %FSCT_CLASSPATH% com.google.feedserver.tools.FeedServerClientTool -op update -url %FSCT_FEED_BASE%/%1/%2 -username %FSCT_USER_NAME% -serviceName %SERVICE_NAME% -authnURLProtocol %AUTHN_URL_PROTOCOL% -authnURL %AUTHN_URL% -entryFilePath %3
