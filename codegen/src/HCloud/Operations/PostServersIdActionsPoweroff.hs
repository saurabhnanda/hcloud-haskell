-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postServers_Id_ActionsPoweroff
module HCloud.Operations.PostServersIdActionsPoweroff where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
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

-- | > POST /servers/{id}/actions/poweroff
-- 
-- Cuts power to the Server. This forcefully stops it without giving the Server operating system time to gracefully stop. May lead to data loss, equivalent to pulling the power cord. Power off should only be used when shutdown does not work.
postServers_Id_ActionsPoweroff :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response PostServersIdActionsPoweroffResponse) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsPoweroff id = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsPoweroffResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsPoweroffResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                       PostServersIdActionsPoweroffResponseBody201)
                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/poweroff"))) GHC.Base.mempty)
-- | Represents a response of the operation 'postServers_Id_ActionsPoweroff'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostServersIdActionsPoweroffResponseError' is used.
data PostServersIdActionsPoweroffResponse =
   PostServersIdActionsPoweroffResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostServersIdActionsPoweroffResponse201 PostServersIdActionsPoweroffResponseBody201 -- ^ The \`action\` key in the reply contains an Action object with this structure
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/poweroff.POST.responses.201.content.application\/json.schema@ in the specification.
-- 
-- 
data PostServersIdActionsPoweroffResponseBody201 = PostServersIdActionsPoweroffResponseBody201 {
  -- | action
  postServersIdActionsPoweroffResponseBody201Action :: PostServersIdActionsPoweroffResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsPoweroffResponseBody201
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsPoweroffResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsPoweroffResponseBody201" (\obj -> GHC.Base.pure PostServersIdActionsPoweroffResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'PostServersIdActionsPoweroffResponseBody201' with all required fields.
mkPostServersIdActionsPoweroffResponseBody201 :: PostServersIdActionsPoweroffResponseBody201Action -- ^ 'postServersIdActionsPoweroffResponseBody201Action'
  -> PostServersIdActionsPoweroffResponseBody201
mkPostServersIdActionsPoweroffResponseBody201 postServersIdActionsPoweroffResponseBody201Action = PostServersIdActionsPoweroffResponseBody201{postServersIdActionsPoweroffResponseBody201Action = postServersIdActionsPoweroffResponseBody201Action}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/poweroff.POST.responses.201.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data PostServersIdActionsPoweroffResponseBody201Action = PostServersIdActionsPoweroffResponseBody201Action {
  -- | command: Command executed in the Action
  postServersIdActionsPoweroffResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postServersIdActionsPoweroffResponseBody201ActionError :: (GHC.Maybe.Maybe PostServersIdActionsPoweroffResponseBody201ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postServersIdActionsPoweroffResponseBody201ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , postServersIdActionsPoweroffResponseBody201ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , postServersIdActionsPoweroffResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postServersIdActionsPoweroffResponseBody201ActionResources :: ([PostServersIdActionsPoweroffResponseBody201ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postServersIdActionsPoweroffResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postServersIdActionsPoweroffResponseBody201ActionStatus :: PostServersIdActionsPoweroffResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsPoweroffResponseBody201Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionError obj : "finished" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionId obj : "progress" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionResources obj : "started" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsPoweroffResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsPoweroffResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostServersIdActionsPoweroffResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'PostServersIdActionsPoweroffResponseBody201Action' with all required fields.
mkPostServersIdActionsPoweroffResponseBody201Action :: Data.Text.Internal.Text -- ^ 'postServersIdActionsPoweroffResponseBody201ActionCommand'
  -> GHC.Maybe.Maybe PostServersIdActionsPoweroffResponseBody201ActionError -- ^ 'postServersIdActionsPoweroffResponseBody201ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postServersIdActionsPoweroffResponseBody201ActionFinished'
  -> GHC.Types.Int -- ^ 'postServersIdActionsPoweroffResponseBody201ActionId'
  -> GHC.Types.Double -- ^ 'postServersIdActionsPoweroffResponseBody201ActionProgress'
  -> [PostServersIdActionsPoweroffResponseBody201ActionResources] -- ^ 'postServersIdActionsPoweroffResponseBody201ActionResources'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsPoweroffResponseBody201ActionStarted'
  -> PostServersIdActionsPoweroffResponseBody201ActionStatus -- ^ 'postServersIdActionsPoweroffResponseBody201ActionStatus'
  -> PostServersIdActionsPoweroffResponseBody201Action
mkPostServersIdActionsPoweroffResponseBody201Action postServersIdActionsPoweroffResponseBody201ActionCommand postServersIdActionsPoweroffResponseBody201ActionError postServersIdActionsPoweroffResponseBody201ActionFinished postServersIdActionsPoweroffResponseBody201ActionId postServersIdActionsPoweroffResponseBody201ActionProgress postServersIdActionsPoweroffResponseBody201ActionResources postServersIdActionsPoweroffResponseBody201ActionStarted postServersIdActionsPoweroffResponseBody201ActionStatus = PostServersIdActionsPoweroffResponseBody201Action{postServersIdActionsPoweroffResponseBody201ActionCommand = postServersIdActionsPoweroffResponseBody201ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postServersIdActionsPoweroffResponseBody201ActionError = postServersIdActionsPoweroffResponseBody201ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postServersIdActionsPoweroffResponseBody201ActionFinished = postServersIdActionsPoweroffResponseBody201ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postServersIdActionsPoweroffResponseBody201ActionId = postServersIdActionsPoweroffResponseBody201ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postServersIdActionsPoweroffResponseBody201ActionProgress = postServersIdActionsPoweroffResponseBody201ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postServersIdActionsPoweroffResponseBody201ActionResources = postServersIdActionsPoweroffResponseBody201ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postServersIdActionsPoweroffResponseBody201ActionStarted = postServersIdActionsPoweroffResponseBody201ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postServersIdActionsPoweroffResponseBody201ActionStatus = postServersIdActionsPoweroffResponseBody201ActionStatus}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/poweroff.POST.responses.201.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data PostServersIdActionsPoweroffResponseBody201ActionError = PostServersIdActionsPoweroffResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postServersIdActionsPoweroffResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postServersIdActionsPoweroffResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsPoweroffResponseBody201ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsPoweroffResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsPoweroffResponseBody201ActionError" (\obj -> (GHC.Base.pure PostServersIdActionsPoweroffResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'PostServersIdActionsPoweroffResponseBody201ActionError' with all required fields.
mkPostServersIdActionsPoweroffResponseBody201ActionError :: Data.Text.Internal.Text -- ^ 'postServersIdActionsPoweroffResponseBody201ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsPoweroffResponseBody201ActionErrorMessage'
  -> PostServersIdActionsPoweroffResponseBody201ActionError
mkPostServersIdActionsPoweroffResponseBody201ActionError postServersIdActionsPoweroffResponseBody201ActionErrorCode postServersIdActionsPoweroffResponseBody201ActionErrorMessage = PostServersIdActionsPoweroffResponseBody201ActionError{postServersIdActionsPoweroffResponseBody201ActionErrorCode = postServersIdActionsPoweroffResponseBody201ActionErrorCode,
                                                                                                                                                                                                                                           postServersIdActionsPoweroffResponseBody201ActionErrorMessage = postServersIdActionsPoweroffResponseBody201ActionErrorMessage}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/poweroff.POST.responses.201.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data PostServersIdActionsPoweroffResponseBody201ActionResources = PostServersIdActionsPoweroffResponseBody201ActionResources {
  -- | id: ID of the Resource
  postServersIdActionsPoweroffResponseBody201ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , postServersIdActionsPoweroffResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsPoweroffResponseBody201ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postServersIdActionsPoweroffResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsPoweroffResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsPoweroffResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostServersIdActionsPoweroffResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PostServersIdActionsPoweroffResponseBody201ActionResources' with all required fields.
mkPostServersIdActionsPoweroffResponseBody201ActionResources :: GHC.Types.Int -- ^ 'postServersIdActionsPoweroffResponseBody201ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsPoweroffResponseBody201ActionResourcesType'
  -> PostServersIdActionsPoweroffResponseBody201ActionResources
mkPostServersIdActionsPoweroffResponseBody201ActionResources postServersIdActionsPoweroffResponseBody201ActionResourcesId postServersIdActionsPoweroffResponseBody201ActionResourcesType = PostServersIdActionsPoweroffResponseBody201ActionResources{postServersIdActionsPoweroffResponseBody201ActionResourcesId = postServersIdActionsPoweroffResponseBody201ActionResourcesId,
                                                                                                                                                                                                                                                      postServersIdActionsPoweroffResponseBody201ActionResourcesType = postServersIdActionsPoweroffResponseBody201ActionResourcesType}
-- | Defines the enum schema located at @paths.\/servers\/{id}\/actions\/poweroff.POST.responses.201.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data PostServersIdActionsPoweroffResponseBody201ActionStatus =
   PostServersIdActionsPoweroffResponseBody201ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostServersIdActionsPoweroffResponseBody201ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostServersIdActionsPoweroffResponseBody201ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | PostServersIdActionsPoweroffResponseBody201ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | PostServersIdActionsPoweroffResponseBody201ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsPoweroffResponseBody201ActionStatus
    where toJSON (PostServersIdActionsPoweroffResponseBody201ActionStatusOther val) = val
          toJSON (PostServersIdActionsPoweroffResponseBody201ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostServersIdActionsPoweroffResponseBody201ActionStatusEnumSuccess) = "success"
          toJSON (PostServersIdActionsPoweroffResponseBody201ActionStatusEnumRunning) = "running"
          toJSON (PostServersIdActionsPoweroffResponseBody201ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsPoweroffResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> PostServersIdActionsPoweroffResponseBody201ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> PostServersIdActionsPoweroffResponseBody201ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> PostServersIdActionsPoweroffResponseBody201ActionStatusEnumError
                                            | GHC.Base.otherwise -> PostServersIdActionsPoweroffResponseBody201ActionStatusOther val)
-- | > POST /servers/{id}/actions/poweroff
-- 
-- The same as 'postServers_Id_ActionsPoweroff' but accepts an explicit configuration.
postServers_Id_ActionsPoweroffWithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> m (Network.HTTP.Client.Types.Response PostServersIdActionsPoweroffResponse) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsPoweroffWithConfiguration config
                                                id = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsPoweroffResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsPoweroffResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        PostServersIdActionsPoweroffResponseBody201)
                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/poweroff"))) GHC.Base.mempty)
-- | > POST /servers/{id}/actions/poweroff
-- 
-- The same as 'postServers_Id_ActionsPoweroff' but returns the raw 'Data.ByteString.Char8.ByteString'.
postServers_Id_ActionsPoweroffRaw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsPoweroffRaw id = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/poweroff"))) GHC.Base.mempty)
-- | > POST /servers/{id}/actions/poweroff
-- 
-- The same as 'postServers_Id_ActionsPoweroff' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postServers_Id_ActionsPoweroffWithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsPoweroffWithConfigurationRaw config
                                                   id = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/poweroff"))) GHC.Base.mempty)
