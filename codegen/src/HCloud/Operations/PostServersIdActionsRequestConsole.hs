-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postServers_Id_ActionsRequestConsole
module HCloud.Operations.PostServersIdActionsRequestConsole where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified HCloud.Common
import HCloud.Types

-- | > POST /servers/{id}/actions/request_console
-- 
-- Requests credentials for remote access via VNC over websocket to keyboard, monitor, and mouse for a Server. The provided URL is valid for 1 minute, after this period a new url needs to be created to connect to the Server. How long the connection is open after the initial connect is not subject to this timeout.
postServers_Id_ActionsRequestConsole :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Integer.Type.Integer                                                                                                                         -- ^ id: ID of the Server
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostServersIdActionsRequestConsoleResponse))   -- ^ Monad containing the result of the operation
postServers_Id_ActionsRequestConsole config
                                     id = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsRequestConsoleResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsRequestConsoleResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        PostServersIdActionsRequestConsoleResponseBody201)
                                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/request_console"))) [])
-- | > POST /servers/{id}/actions/request_console
-- 
-- The same as 'postServers_Id_ActionsRequestConsole' but returns the raw 'Data.ByteString.Char8.ByteString'
postServers_Id_ActionsRequestConsoleRaw :: forall m s . (HCloud.Common.MonadHTTP m,
                                                         HCloud.Common.SecurityScheme s) =>
                                           HCloud.Common.Configuration s ->
                                           GHC.Integer.Type.Integer ->
                                           m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                 (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postServers_Id_ActionsRequestConsoleRaw config
                                        id = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/request_console"))) [])
-- | > POST /servers/{id}/actions/request_console
-- 
-- Monadic version of 'postServers_Id_ActionsRequestConsole' (use with 'HCloud.Common.runWithConfiguration')
postServers_Id_ActionsRequestConsoleM :: forall m s . (HCloud.Common.MonadHTTP m,
                                                       HCloud.Common.SecurityScheme s) =>
                                         GHC.Integer.Type.Integer ->
                                         Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                            m
                                                                            (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                (Network.HTTP.Client.Types.Response PostServersIdActionsRequestConsoleResponse))
postServers_Id_ActionsRequestConsoleM id = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsRequestConsoleResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsRequestConsoleResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         PostServersIdActionsRequestConsoleResponseBody201)
                                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/request_console"))) [])
-- | > POST /servers/{id}/actions/request_console
-- 
-- Monadic version of 'postServers_Id_ActionsRequestConsoleRaw' (use with 'HCloud.Common.runWithConfiguration')
postServers_Id_ActionsRequestConsoleRawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                                          HCloud.Common.SecurityScheme s) =>
                                            GHC.Integer.Type.Integer ->
                                            Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                               m
                                                                               (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postServers_Id_ActionsRequestConsoleRawM id = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/request_console"))) [])
-- | Represents a response of the operation 'postServers_Id_ActionsRequestConsole'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostServersIdActionsRequestConsoleResponseError' is used.
data PostServersIdActionsRequestConsoleResponse =                                                    
   PostServersIdActionsRequestConsoleResponseError GHC.Base.String                                   -- ^ Means either no matching case available or a parse error
  | PostServersIdActionsRequestConsoleResponse201 PostServersIdActionsRequestConsoleResponseBody201  -- ^ The \`action\` key in the reply contains an Action object with this structure
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema PostServersIdActionsRequestConsoleResponseBody201
-- 
-- 
data PostServersIdActionsRequestConsoleResponseBody201 = PostServersIdActionsRequestConsoleResponseBody201 {
  -- | action
  postServersIdActionsRequestConsoleResponseBody201Action :: PostServersIdActionsRequestConsoleResponseBody201Action
  -- | password: VNC password to use for this connection (this password only works in combination with a wss_url with valid token)
  , postServersIdActionsRequestConsoleResponseBody201Password :: Data.Text.Internal.Text
  -- | wss_url: URL of websocket proxy to use; this includes a token which is valid for a limited time only
  , postServersIdActionsRequestConsoleResponseBody201WssUrl :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostServersIdActionsRequestConsoleResponseBody201
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "action" (postServersIdActionsRequestConsoleResponseBody201Action obj) : (Data.Aeson..=) "password" (postServersIdActionsRequestConsoleResponseBody201Password obj) : (Data.Aeson..=) "wss_url" (postServersIdActionsRequestConsoleResponseBody201WssUrl obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "action" (postServersIdActionsRequestConsoleResponseBody201Action obj) GHC.Base.<> ((Data.Aeson..=) "password" (postServersIdActionsRequestConsoleResponseBody201Password obj) GHC.Base.<> (Data.Aeson..=) "wss_url" (postServersIdActionsRequestConsoleResponseBody201WssUrl obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsRequestConsoleResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsRequestConsoleResponseBody201" (\obj -> ((GHC.Base.pure PostServersIdActionsRequestConsoleResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "password")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "wss_url"))
-- | Defines the data type for the schema PostServersIdActionsRequestConsoleResponseBody201Action
-- 
-- 
data PostServersIdActionsRequestConsoleResponseBody201Action = PostServersIdActionsRequestConsoleResponseBody201Action {
  -- | command: Command executed in the Action
  postServersIdActionsRequestConsoleResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postServersIdActionsRequestConsoleResponseBody201ActionError :: PostServersIdActionsRequestConsoleResponseBody201ActionError
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postServersIdActionsRequestConsoleResponseBody201ActionFinished :: Data.Text.Internal.Text
  -- | id: ID of the Resource
  , postServersIdActionsRequestConsoleResponseBody201ActionId :: GHC.Integer.Type.Integer
  -- | progress: Progress of Action in percent
  , postServersIdActionsRequestConsoleResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postServersIdActionsRequestConsoleResponseBody201ActionResources :: ([] PostServersIdActionsRequestConsoleResponseBody201ActionResources)
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postServersIdActionsRequestConsoleResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postServersIdActionsRequestConsoleResponseBody201ActionStatus :: PostServersIdActionsRequestConsoleResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostServersIdActionsRequestConsoleResponseBody201Action
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "command" (postServersIdActionsRequestConsoleResponseBody201ActionCommand obj) : (Data.Aeson..=) "error" (postServersIdActionsRequestConsoleResponseBody201ActionError obj) : (Data.Aeson..=) "finished" (postServersIdActionsRequestConsoleResponseBody201ActionFinished obj) : (Data.Aeson..=) "id" (postServersIdActionsRequestConsoleResponseBody201ActionId obj) : (Data.Aeson..=) "progress" (postServersIdActionsRequestConsoleResponseBody201ActionProgress obj) : (Data.Aeson..=) "resources" (postServersIdActionsRequestConsoleResponseBody201ActionResources obj) : (Data.Aeson..=) "started" (postServersIdActionsRequestConsoleResponseBody201ActionStarted obj) : (Data.Aeson..=) "status" (postServersIdActionsRequestConsoleResponseBody201ActionStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "command" (postServersIdActionsRequestConsoleResponseBody201ActionCommand obj) GHC.Base.<> ((Data.Aeson..=) "error" (postServersIdActionsRequestConsoleResponseBody201ActionError obj) GHC.Base.<> ((Data.Aeson..=) "finished" (postServersIdActionsRequestConsoleResponseBody201ActionFinished obj) GHC.Base.<> ((Data.Aeson..=) "id" (postServersIdActionsRequestConsoleResponseBody201ActionId obj) GHC.Base.<> ((Data.Aeson..=) "progress" (postServersIdActionsRequestConsoleResponseBody201ActionProgress obj) GHC.Base.<> ((Data.Aeson..=) "resources" (postServersIdActionsRequestConsoleResponseBody201ActionResources obj) GHC.Base.<> ((Data.Aeson..=) "started" (postServersIdActionsRequestConsoleResponseBody201ActionStarted obj) GHC.Base.<> (Data.Aeson..=) "status" (postServersIdActionsRequestConsoleResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsRequestConsoleResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsRequestConsoleResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostServersIdActionsRequestConsoleResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Defines the data type for the schema PostServersIdActionsRequestConsoleResponseBody201ActionError
-- 
-- Error message for the Action if error occurred, otherwise null
data PostServersIdActionsRequestConsoleResponseBody201ActionError = PostServersIdActionsRequestConsoleResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postServersIdActionsRequestConsoleResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postServersIdActionsRequestConsoleResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostServersIdActionsRequestConsoleResponseBody201ActionError
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "code" (postServersIdActionsRequestConsoleResponseBody201ActionErrorCode obj) : (Data.Aeson..=) "message" (postServersIdActionsRequestConsoleResponseBody201ActionErrorMessage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "code" (postServersIdActionsRequestConsoleResponseBody201ActionErrorCode obj) GHC.Base.<> (Data.Aeson..=) "message" (postServersIdActionsRequestConsoleResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsRequestConsoleResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsRequestConsoleResponseBody201ActionError" (\obj -> (GHC.Base.pure PostServersIdActionsRequestConsoleResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Defines the data type for the schema PostServersIdActionsRequestConsoleResponseBody201ActionResources
-- 
-- 
data PostServersIdActionsRequestConsoleResponseBody201ActionResources = PostServersIdActionsRequestConsoleResponseBody201ActionResources {
  -- | id: ID of the Resource
  postServersIdActionsRequestConsoleResponseBody201ActionResourcesId :: GHC.Integer.Type.Integer
  -- | type: Type of resource referenced
  , postServersIdActionsRequestConsoleResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostServersIdActionsRequestConsoleResponseBody201ActionResources
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (postServersIdActionsRequestConsoleResponseBody201ActionResourcesId obj) : (Data.Aeson..=) "type" (postServersIdActionsRequestConsoleResponseBody201ActionResourcesType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (postServersIdActionsRequestConsoleResponseBody201ActionResourcesId obj) GHC.Base.<> (Data.Aeson..=) "type" (postServersIdActionsRequestConsoleResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsRequestConsoleResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsRequestConsoleResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostServersIdActionsRequestConsoleResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema PostServersIdActionsRequestConsoleResponseBody201ActionStatus
-- 
-- Status of the Action
data PostServersIdActionsRequestConsoleResponseBody201ActionStatus
    = PostServersIdActionsRequestConsoleResponseBody201ActionStatusEnumOther Data.Aeson.Types.Internal.Value
    | PostServersIdActionsRequestConsoleResponseBody201ActionStatusEnumTyped Data.Text.Internal.Text
    | PostServersIdActionsRequestConsoleResponseBody201ActionStatusEnumStringError
    | PostServersIdActionsRequestConsoleResponseBody201ActionStatusEnumStringRunning
    | PostServersIdActionsRequestConsoleResponseBody201ActionStatusEnumStringSuccess
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostServersIdActionsRequestConsoleResponseBody201ActionStatus
    where toJSON (PostServersIdActionsRequestConsoleResponseBody201ActionStatusEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostServersIdActionsRequestConsoleResponseBody201ActionStatusEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostServersIdActionsRequestConsoleResponseBody201ActionStatusEnumStringError) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error"
          toJSON (PostServersIdActionsRequestConsoleResponseBody201ActionStatusEnumStringRunning) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running"
          toJSON (PostServersIdActionsRequestConsoleResponseBody201ActionStatusEnumStringSuccess) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success"
instance Data.Aeson.FromJSON PostServersIdActionsRequestConsoleResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error")
                                          then PostServersIdActionsRequestConsoleResponseBody201ActionStatusEnumStringError
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running")
                                                then PostServersIdActionsRequestConsoleResponseBody201ActionStatusEnumStringRunning
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success")
                                                      then PostServersIdActionsRequestConsoleResponseBody201ActionStatusEnumStringSuccess
                                                      else PostServersIdActionsRequestConsoleResponseBody201ActionStatusEnumOther val)
