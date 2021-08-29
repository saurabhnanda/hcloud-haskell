-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postServers_Id_ActionsReset
module HCloud.Operations.PostServersIdActionsReset where

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

-- | > POST /servers/{id}/actions/reset
-- 
-- Cuts power to a Server and starts it again. This forcefully stops it without giving the Server operating system time to gracefully stop. This may lead to data loss, it’s equivalent to pulling the power cord and plugging it in again. Reset should only be used when reboot does not work.
postServers_Id_ActionsReset :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response PostServersIdActionsResetResponse) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsReset id = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsResetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsResetResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                              PostServersIdActionsResetResponseBody201)
                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/reset"))) GHC.Base.mempty)
-- | Represents a response of the operation 'postServers_Id_ActionsReset'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostServersIdActionsResetResponseError' is used.
data PostServersIdActionsResetResponse =
   PostServersIdActionsResetResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostServersIdActionsResetResponse201 PostServersIdActionsResetResponseBody201 -- ^ The \`action\` key in the reply contains an Action object with this structure
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/reset.POST.responses.201.content.application\/json.schema@ in the specification.
-- 
-- 
data PostServersIdActionsResetResponseBody201 = PostServersIdActionsResetResponseBody201 {
  -- | action
  postServersIdActionsResetResponseBody201Action :: PostServersIdActionsResetResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsResetResponseBody201
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsResetResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsResetResponseBody201" (\obj -> GHC.Base.pure PostServersIdActionsResetResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'PostServersIdActionsResetResponseBody201' with all required fields.
mkPostServersIdActionsResetResponseBody201 :: PostServersIdActionsResetResponseBody201Action -- ^ 'postServersIdActionsResetResponseBody201Action'
  -> PostServersIdActionsResetResponseBody201
mkPostServersIdActionsResetResponseBody201 postServersIdActionsResetResponseBody201Action = PostServersIdActionsResetResponseBody201{postServersIdActionsResetResponseBody201Action = postServersIdActionsResetResponseBody201Action}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/reset.POST.responses.201.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data PostServersIdActionsResetResponseBody201Action = PostServersIdActionsResetResponseBody201Action {
  -- | command: Command executed in the Action
  postServersIdActionsResetResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postServersIdActionsResetResponseBody201ActionError :: (GHC.Maybe.Maybe PostServersIdActionsResetResponseBody201ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postServersIdActionsResetResponseBody201ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , postServersIdActionsResetResponseBody201ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , postServersIdActionsResetResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postServersIdActionsResetResponseBody201ActionResources :: ([PostServersIdActionsResetResponseBody201ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postServersIdActionsResetResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postServersIdActionsResetResponseBody201ActionStatus :: PostServersIdActionsResetResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsResetResponseBody201Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionError obj : "finished" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionId obj : "progress" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionResources obj : "started" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsResetResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsResetResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostServersIdActionsResetResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'PostServersIdActionsResetResponseBody201Action' with all required fields.
mkPostServersIdActionsResetResponseBody201Action :: Data.Text.Internal.Text -- ^ 'postServersIdActionsResetResponseBody201ActionCommand'
  -> GHC.Maybe.Maybe PostServersIdActionsResetResponseBody201ActionError -- ^ 'postServersIdActionsResetResponseBody201ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postServersIdActionsResetResponseBody201ActionFinished'
  -> GHC.Types.Int -- ^ 'postServersIdActionsResetResponseBody201ActionId'
  -> GHC.Types.Double -- ^ 'postServersIdActionsResetResponseBody201ActionProgress'
  -> [PostServersIdActionsResetResponseBody201ActionResources] -- ^ 'postServersIdActionsResetResponseBody201ActionResources'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsResetResponseBody201ActionStarted'
  -> PostServersIdActionsResetResponseBody201ActionStatus -- ^ 'postServersIdActionsResetResponseBody201ActionStatus'
  -> PostServersIdActionsResetResponseBody201Action
mkPostServersIdActionsResetResponseBody201Action postServersIdActionsResetResponseBody201ActionCommand postServersIdActionsResetResponseBody201ActionError postServersIdActionsResetResponseBody201ActionFinished postServersIdActionsResetResponseBody201ActionId postServersIdActionsResetResponseBody201ActionProgress postServersIdActionsResetResponseBody201ActionResources postServersIdActionsResetResponseBody201ActionStarted postServersIdActionsResetResponseBody201ActionStatus = PostServersIdActionsResetResponseBody201Action{postServersIdActionsResetResponseBody201ActionCommand = postServersIdActionsResetResponseBody201ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              postServersIdActionsResetResponseBody201ActionError = postServersIdActionsResetResponseBody201ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              postServersIdActionsResetResponseBody201ActionFinished = postServersIdActionsResetResponseBody201ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              postServersIdActionsResetResponseBody201ActionId = postServersIdActionsResetResponseBody201ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              postServersIdActionsResetResponseBody201ActionProgress = postServersIdActionsResetResponseBody201ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              postServersIdActionsResetResponseBody201ActionResources = postServersIdActionsResetResponseBody201ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              postServersIdActionsResetResponseBody201ActionStarted = postServersIdActionsResetResponseBody201ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              postServersIdActionsResetResponseBody201ActionStatus = postServersIdActionsResetResponseBody201ActionStatus}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/reset.POST.responses.201.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data PostServersIdActionsResetResponseBody201ActionError = PostServersIdActionsResetResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postServersIdActionsResetResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postServersIdActionsResetResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsResetResponseBody201ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsResetResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsResetResponseBody201ActionError" (\obj -> (GHC.Base.pure PostServersIdActionsResetResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'PostServersIdActionsResetResponseBody201ActionError' with all required fields.
mkPostServersIdActionsResetResponseBody201ActionError :: Data.Text.Internal.Text -- ^ 'postServersIdActionsResetResponseBody201ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsResetResponseBody201ActionErrorMessage'
  -> PostServersIdActionsResetResponseBody201ActionError
mkPostServersIdActionsResetResponseBody201ActionError postServersIdActionsResetResponseBody201ActionErrorCode postServersIdActionsResetResponseBody201ActionErrorMessage = PostServersIdActionsResetResponseBody201ActionError{postServersIdActionsResetResponseBody201ActionErrorCode = postServersIdActionsResetResponseBody201ActionErrorCode,
                                                                                                                                                                                                                               postServersIdActionsResetResponseBody201ActionErrorMessage = postServersIdActionsResetResponseBody201ActionErrorMessage}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/reset.POST.responses.201.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data PostServersIdActionsResetResponseBody201ActionResources = PostServersIdActionsResetResponseBody201ActionResources {
  -- | id: ID of the Resource
  postServersIdActionsResetResponseBody201ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , postServersIdActionsResetResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsResetResponseBody201ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postServersIdActionsResetResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsResetResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsResetResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostServersIdActionsResetResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PostServersIdActionsResetResponseBody201ActionResources' with all required fields.
mkPostServersIdActionsResetResponseBody201ActionResources :: GHC.Types.Int -- ^ 'postServersIdActionsResetResponseBody201ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsResetResponseBody201ActionResourcesType'
  -> PostServersIdActionsResetResponseBody201ActionResources
mkPostServersIdActionsResetResponseBody201ActionResources postServersIdActionsResetResponseBody201ActionResourcesId postServersIdActionsResetResponseBody201ActionResourcesType = PostServersIdActionsResetResponseBody201ActionResources{postServersIdActionsResetResponseBody201ActionResourcesId = postServersIdActionsResetResponseBody201ActionResourcesId,
                                                                                                                                                                                                                                          postServersIdActionsResetResponseBody201ActionResourcesType = postServersIdActionsResetResponseBody201ActionResourcesType}
-- | Defines the enum schema located at @paths.\/servers\/{id}\/actions\/reset.POST.responses.201.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data PostServersIdActionsResetResponseBody201ActionStatus =
   PostServersIdActionsResetResponseBody201ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostServersIdActionsResetResponseBody201ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostServersIdActionsResetResponseBody201ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | PostServersIdActionsResetResponseBody201ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | PostServersIdActionsResetResponseBody201ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsResetResponseBody201ActionStatus
    where toJSON (PostServersIdActionsResetResponseBody201ActionStatusOther val) = val
          toJSON (PostServersIdActionsResetResponseBody201ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostServersIdActionsResetResponseBody201ActionStatusEnumSuccess) = "success"
          toJSON (PostServersIdActionsResetResponseBody201ActionStatusEnumRunning) = "running"
          toJSON (PostServersIdActionsResetResponseBody201ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsResetResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> PostServersIdActionsResetResponseBody201ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> PostServersIdActionsResetResponseBody201ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> PostServersIdActionsResetResponseBody201ActionStatusEnumError
                                            | GHC.Base.otherwise -> PostServersIdActionsResetResponseBody201ActionStatusOther val)
-- | > POST /servers/{id}/actions/reset
-- 
-- The same as 'postServers_Id_ActionsReset' but accepts an explicit configuration.
postServers_Id_ActionsResetWithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> m (Network.HTTP.Client.Types.Response PostServersIdActionsResetResponse) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsResetWithConfiguration config
                                             id = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsResetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsResetResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                               PostServersIdActionsResetResponseBody201)
                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/reset"))) GHC.Base.mempty)
-- | > POST /servers/{id}/actions/reset
-- 
-- The same as 'postServers_Id_ActionsReset' but returns the raw 'Data.ByteString.Char8.ByteString'.
postServers_Id_ActionsResetRaw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsResetRaw id = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/reset"))) GHC.Base.mempty)
-- | > POST /servers/{id}/actions/reset
-- 
-- The same as 'postServers_Id_ActionsReset' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postServers_Id_ActionsResetWithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsResetWithConfigurationRaw config
                                                id = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/reset"))) GHC.Base.mempty)
