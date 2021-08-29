-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postServers_Id_ActionsReboot
module HCloud.Operations.PostServersIdActionsReboot where

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

-- | > POST /servers/{id}/actions/reboot
-- 
-- Reboots a Server gracefully by sending an ACPI request. The Server operating system must support ACPI and react to the request, otherwise the Server will not reboot.
postServers_Id_ActionsReboot :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response PostServersIdActionsRebootResponse) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsReboot id = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsRebootResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsRebootResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                 PostServersIdActionsRebootResponseBody201)
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/reboot"))) GHC.Base.mempty)
-- | Represents a response of the operation 'postServers_Id_ActionsReboot'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostServersIdActionsRebootResponseError' is used.
data PostServersIdActionsRebootResponse =
   PostServersIdActionsRebootResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostServersIdActionsRebootResponse201 PostServersIdActionsRebootResponseBody201 -- ^ The \`action\` key in the reply contains an Action object with this structure
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/reboot.POST.responses.201.content.application\/json.schema@ in the specification.
-- 
-- 
data PostServersIdActionsRebootResponseBody201 = PostServersIdActionsRebootResponseBody201 {
  -- | action
  postServersIdActionsRebootResponseBody201Action :: PostServersIdActionsRebootResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsRebootResponseBody201
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsRebootResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsRebootResponseBody201" (\obj -> GHC.Base.pure PostServersIdActionsRebootResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'PostServersIdActionsRebootResponseBody201' with all required fields.
mkPostServersIdActionsRebootResponseBody201 :: PostServersIdActionsRebootResponseBody201Action -- ^ 'postServersIdActionsRebootResponseBody201Action'
  -> PostServersIdActionsRebootResponseBody201
mkPostServersIdActionsRebootResponseBody201 postServersIdActionsRebootResponseBody201Action = PostServersIdActionsRebootResponseBody201{postServersIdActionsRebootResponseBody201Action = postServersIdActionsRebootResponseBody201Action}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/reboot.POST.responses.201.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data PostServersIdActionsRebootResponseBody201Action = PostServersIdActionsRebootResponseBody201Action {
  -- | command: Command executed in the Action
  postServersIdActionsRebootResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postServersIdActionsRebootResponseBody201ActionError :: (GHC.Maybe.Maybe PostServersIdActionsRebootResponseBody201ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postServersIdActionsRebootResponseBody201ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , postServersIdActionsRebootResponseBody201ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , postServersIdActionsRebootResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postServersIdActionsRebootResponseBody201ActionResources :: ([PostServersIdActionsRebootResponseBody201ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postServersIdActionsRebootResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postServersIdActionsRebootResponseBody201ActionStatus :: PostServersIdActionsRebootResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsRebootResponseBody201Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionError obj : "finished" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionId obj : "progress" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionResources obj : "started" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsRebootResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsRebootResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostServersIdActionsRebootResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'PostServersIdActionsRebootResponseBody201Action' with all required fields.
mkPostServersIdActionsRebootResponseBody201Action :: Data.Text.Internal.Text -- ^ 'postServersIdActionsRebootResponseBody201ActionCommand'
  -> GHC.Maybe.Maybe PostServersIdActionsRebootResponseBody201ActionError -- ^ 'postServersIdActionsRebootResponseBody201ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postServersIdActionsRebootResponseBody201ActionFinished'
  -> GHC.Types.Int -- ^ 'postServersIdActionsRebootResponseBody201ActionId'
  -> GHC.Types.Double -- ^ 'postServersIdActionsRebootResponseBody201ActionProgress'
  -> [PostServersIdActionsRebootResponseBody201ActionResources] -- ^ 'postServersIdActionsRebootResponseBody201ActionResources'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsRebootResponseBody201ActionStarted'
  -> PostServersIdActionsRebootResponseBody201ActionStatus -- ^ 'postServersIdActionsRebootResponseBody201ActionStatus'
  -> PostServersIdActionsRebootResponseBody201Action
mkPostServersIdActionsRebootResponseBody201Action postServersIdActionsRebootResponseBody201ActionCommand postServersIdActionsRebootResponseBody201ActionError postServersIdActionsRebootResponseBody201ActionFinished postServersIdActionsRebootResponseBody201ActionId postServersIdActionsRebootResponseBody201ActionProgress postServersIdActionsRebootResponseBody201ActionResources postServersIdActionsRebootResponseBody201ActionStarted postServersIdActionsRebootResponseBody201ActionStatus = PostServersIdActionsRebootResponseBody201Action{postServersIdActionsRebootResponseBody201ActionCommand = postServersIdActionsRebootResponseBody201ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postServersIdActionsRebootResponseBody201ActionError = postServersIdActionsRebootResponseBody201ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postServersIdActionsRebootResponseBody201ActionFinished = postServersIdActionsRebootResponseBody201ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postServersIdActionsRebootResponseBody201ActionId = postServersIdActionsRebootResponseBody201ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postServersIdActionsRebootResponseBody201ActionProgress = postServersIdActionsRebootResponseBody201ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postServersIdActionsRebootResponseBody201ActionResources = postServersIdActionsRebootResponseBody201ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postServersIdActionsRebootResponseBody201ActionStarted = postServersIdActionsRebootResponseBody201ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postServersIdActionsRebootResponseBody201ActionStatus = postServersIdActionsRebootResponseBody201ActionStatus}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/reboot.POST.responses.201.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data PostServersIdActionsRebootResponseBody201ActionError = PostServersIdActionsRebootResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postServersIdActionsRebootResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postServersIdActionsRebootResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsRebootResponseBody201ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsRebootResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsRebootResponseBody201ActionError" (\obj -> (GHC.Base.pure PostServersIdActionsRebootResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'PostServersIdActionsRebootResponseBody201ActionError' with all required fields.
mkPostServersIdActionsRebootResponseBody201ActionError :: Data.Text.Internal.Text -- ^ 'postServersIdActionsRebootResponseBody201ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsRebootResponseBody201ActionErrorMessage'
  -> PostServersIdActionsRebootResponseBody201ActionError
mkPostServersIdActionsRebootResponseBody201ActionError postServersIdActionsRebootResponseBody201ActionErrorCode postServersIdActionsRebootResponseBody201ActionErrorMessage = PostServersIdActionsRebootResponseBody201ActionError{postServersIdActionsRebootResponseBody201ActionErrorCode = postServersIdActionsRebootResponseBody201ActionErrorCode,
                                                                                                                                                                                                                                   postServersIdActionsRebootResponseBody201ActionErrorMessage = postServersIdActionsRebootResponseBody201ActionErrorMessage}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/reboot.POST.responses.201.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data PostServersIdActionsRebootResponseBody201ActionResources = PostServersIdActionsRebootResponseBody201ActionResources {
  -- | id: ID of the Resource
  postServersIdActionsRebootResponseBody201ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , postServersIdActionsRebootResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsRebootResponseBody201ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postServersIdActionsRebootResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsRebootResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsRebootResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostServersIdActionsRebootResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PostServersIdActionsRebootResponseBody201ActionResources' with all required fields.
mkPostServersIdActionsRebootResponseBody201ActionResources :: GHC.Types.Int -- ^ 'postServersIdActionsRebootResponseBody201ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsRebootResponseBody201ActionResourcesType'
  -> PostServersIdActionsRebootResponseBody201ActionResources
mkPostServersIdActionsRebootResponseBody201ActionResources postServersIdActionsRebootResponseBody201ActionResourcesId postServersIdActionsRebootResponseBody201ActionResourcesType = PostServersIdActionsRebootResponseBody201ActionResources{postServersIdActionsRebootResponseBody201ActionResourcesId = postServersIdActionsRebootResponseBody201ActionResourcesId,
                                                                                                                                                                                                                                              postServersIdActionsRebootResponseBody201ActionResourcesType = postServersIdActionsRebootResponseBody201ActionResourcesType}
-- | Defines the enum schema located at @paths.\/servers\/{id}\/actions\/reboot.POST.responses.201.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data PostServersIdActionsRebootResponseBody201ActionStatus =
   PostServersIdActionsRebootResponseBody201ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostServersIdActionsRebootResponseBody201ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostServersIdActionsRebootResponseBody201ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | PostServersIdActionsRebootResponseBody201ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | PostServersIdActionsRebootResponseBody201ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsRebootResponseBody201ActionStatus
    where toJSON (PostServersIdActionsRebootResponseBody201ActionStatusOther val) = val
          toJSON (PostServersIdActionsRebootResponseBody201ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostServersIdActionsRebootResponseBody201ActionStatusEnumSuccess) = "success"
          toJSON (PostServersIdActionsRebootResponseBody201ActionStatusEnumRunning) = "running"
          toJSON (PostServersIdActionsRebootResponseBody201ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsRebootResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> PostServersIdActionsRebootResponseBody201ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> PostServersIdActionsRebootResponseBody201ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> PostServersIdActionsRebootResponseBody201ActionStatusEnumError
                                            | GHC.Base.otherwise -> PostServersIdActionsRebootResponseBody201ActionStatusOther val)
-- | > POST /servers/{id}/actions/reboot
-- 
-- The same as 'postServers_Id_ActionsReboot' but accepts an explicit configuration.
postServers_Id_ActionsRebootWithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> m (Network.HTTP.Client.Types.Response PostServersIdActionsRebootResponse) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsRebootWithConfiguration config
                                              id = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsRebootResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsRebootResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  PostServersIdActionsRebootResponseBody201)
                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/reboot"))) GHC.Base.mempty)
-- | > POST /servers/{id}/actions/reboot
-- 
-- The same as 'postServers_Id_ActionsReboot' but returns the raw 'Data.ByteString.Char8.ByteString'.
postServers_Id_ActionsRebootRaw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsRebootRaw id = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/reboot"))) GHC.Base.mempty)
-- | > POST /servers/{id}/actions/reboot
-- 
-- The same as 'postServers_Id_ActionsReboot' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postServers_Id_ActionsRebootWithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsRebootWithConfigurationRaw config
                                                 id = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/reboot"))) GHC.Base.mempty)
