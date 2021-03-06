-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postFloatingIps_Id_ActionsUnassign
module HCloud.Operations.PostFloatingIpsIdActionsUnassign where

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

-- | > POST /floating_ips/{id}/actions/unassign
-- 
-- Unassigns a Floating IP, resulting in it being unreachable. You may assign it to a Server again at a later time.
postFloatingIps_Id_ActionsUnassign :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Floating IP
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response PostFloatingIpsIdActionsUnassignResponse) -- ^ Monadic computation which returns the result of the operation
postFloatingIps_Id_ActionsUnassign id = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostFloatingIpsIdActionsUnassignResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostFloatingIpsIdActionsUnassignResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PostFloatingIpsIdActionsUnassignResponseBody201)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/floating_ips/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/unassign"))) GHC.Base.mempty)
-- | Represents a response of the operation 'postFloatingIps_Id_ActionsUnassign'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostFloatingIpsIdActionsUnassignResponseError' is used.
data PostFloatingIpsIdActionsUnassignResponse =
   PostFloatingIpsIdActionsUnassignResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostFloatingIpsIdActionsUnassignResponse201 PostFloatingIpsIdActionsUnassignResponseBody201 -- ^ The \`action\` key contains the \`unassign\` Action
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/floating_ips\/{id}\/actions\/unassign.POST.responses.201.content.application\/json.schema@ in the specification.
-- 
-- 
data PostFloatingIpsIdActionsUnassignResponseBody201 = PostFloatingIpsIdActionsUnassignResponseBody201 {
  -- | action
  postFloatingIpsIdActionsUnassignResponseBody201Action :: PostFloatingIpsIdActionsUnassignResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostFloatingIpsIdActionsUnassignResponseBody201
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsIdActionsUnassignResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsIdActionsUnassignResponseBody201" (\obj -> GHC.Base.pure PostFloatingIpsIdActionsUnassignResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'PostFloatingIpsIdActionsUnassignResponseBody201' with all required fields.
mkPostFloatingIpsIdActionsUnassignResponseBody201 :: PostFloatingIpsIdActionsUnassignResponseBody201Action -- ^ 'postFloatingIpsIdActionsUnassignResponseBody201Action'
  -> PostFloatingIpsIdActionsUnassignResponseBody201
mkPostFloatingIpsIdActionsUnassignResponseBody201 postFloatingIpsIdActionsUnassignResponseBody201Action = PostFloatingIpsIdActionsUnassignResponseBody201{postFloatingIpsIdActionsUnassignResponseBody201Action = postFloatingIpsIdActionsUnassignResponseBody201Action}
-- | Defines the object schema located at @paths.\/floating_ips\/{id}\/actions\/unassign.POST.responses.201.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data PostFloatingIpsIdActionsUnassignResponseBody201Action = PostFloatingIpsIdActionsUnassignResponseBody201Action {
  -- | command: Command executed in the Action
  postFloatingIpsIdActionsUnassignResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postFloatingIpsIdActionsUnassignResponseBody201ActionError :: (GHC.Maybe.Maybe PostFloatingIpsIdActionsUnassignResponseBody201ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postFloatingIpsIdActionsUnassignResponseBody201ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , postFloatingIpsIdActionsUnassignResponseBody201ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , postFloatingIpsIdActionsUnassignResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postFloatingIpsIdActionsUnassignResponseBody201ActionResources :: ([PostFloatingIpsIdActionsUnassignResponseBody201ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postFloatingIpsIdActionsUnassignResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postFloatingIpsIdActionsUnassignResponseBody201ActionStatus :: PostFloatingIpsIdActionsUnassignResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostFloatingIpsIdActionsUnassignResponseBody201Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionError obj : "finished" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionId obj : "progress" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionResources obj : "started" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsIdActionsUnassignResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsIdActionsUnassignResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostFloatingIpsIdActionsUnassignResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'PostFloatingIpsIdActionsUnassignResponseBody201Action' with all required fields.
mkPostFloatingIpsIdActionsUnassignResponseBody201Action :: Data.Text.Internal.Text -- ^ 'postFloatingIpsIdActionsUnassignResponseBody201ActionCommand'
  -> GHC.Maybe.Maybe PostFloatingIpsIdActionsUnassignResponseBody201ActionError -- ^ 'postFloatingIpsIdActionsUnassignResponseBody201ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postFloatingIpsIdActionsUnassignResponseBody201ActionFinished'
  -> GHC.Types.Int -- ^ 'postFloatingIpsIdActionsUnassignResponseBody201ActionId'
  -> GHC.Types.Double -- ^ 'postFloatingIpsIdActionsUnassignResponseBody201ActionProgress'
  -> [PostFloatingIpsIdActionsUnassignResponseBody201ActionResources] -- ^ 'postFloatingIpsIdActionsUnassignResponseBody201ActionResources'
  -> Data.Text.Internal.Text -- ^ 'postFloatingIpsIdActionsUnassignResponseBody201ActionStarted'
  -> PostFloatingIpsIdActionsUnassignResponseBody201ActionStatus -- ^ 'postFloatingIpsIdActionsUnassignResponseBody201ActionStatus'
  -> PostFloatingIpsIdActionsUnassignResponseBody201Action
mkPostFloatingIpsIdActionsUnassignResponseBody201Action postFloatingIpsIdActionsUnassignResponseBody201ActionCommand postFloatingIpsIdActionsUnassignResponseBody201ActionError postFloatingIpsIdActionsUnassignResponseBody201ActionFinished postFloatingIpsIdActionsUnassignResponseBody201ActionId postFloatingIpsIdActionsUnassignResponseBody201ActionProgress postFloatingIpsIdActionsUnassignResponseBody201ActionResources postFloatingIpsIdActionsUnassignResponseBody201ActionStarted postFloatingIpsIdActionsUnassignResponseBody201ActionStatus = PostFloatingIpsIdActionsUnassignResponseBody201Action{postFloatingIpsIdActionsUnassignResponseBody201ActionCommand = postFloatingIpsIdActionsUnassignResponseBody201ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    postFloatingIpsIdActionsUnassignResponseBody201ActionError = postFloatingIpsIdActionsUnassignResponseBody201ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    postFloatingIpsIdActionsUnassignResponseBody201ActionFinished = postFloatingIpsIdActionsUnassignResponseBody201ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    postFloatingIpsIdActionsUnassignResponseBody201ActionId = postFloatingIpsIdActionsUnassignResponseBody201ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    postFloatingIpsIdActionsUnassignResponseBody201ActionProgress = postFloatingIpsIdActionsUnassignResponseBody201ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    postFloatingIpsIdActionsUnassignResponseBody201ActionResources = postFloatingIpsIdActionsUnassignResponseBody201ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    postFloatingIpsIdActionsUnassignResponseBody201ActionStarted = postFloatingIpsIdActionsUnassignResponseBody201ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    postFloatingIpsIdActionsUnassignResponseBody201ActionStatus = postFloatingIpsIdActionsUnassignResponseBody201ActionStatus}
-- | Defines the object schema located at @paths.\/floating_ips\/{id}\/actions\/unassign.POST.responses.201.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data PostFloatingIpsIdActionsUnassignResponseBody201ActionError = PostFloatingIpsIdActionsUnassignResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postFloatingIpsIdActionsUnassignResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postFloatingIpsIdActionsUnassignResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostFloatingIpsIdActionsUnassignResponseBody201ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsIdActionsUnassignResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsIdActionsUnassignResponseBody201ActionError" (\obj -> (GHC.Base.pure PostFloatingIpsIdActionsUnassignResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'PostFloatingIpsIdActionsUnassignResponseBody201ActionError' with all required fields.
mkPostFloatingIpsIdActionsUnassignResponseBody201ActionError :: Data.Text.Internal.Text -- ^ 'postFloatingIpsIdActionsUnassignResponseBody201ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'postFloatingIpsIdActionsUnassignResponseBody201ActionErrorMessage'
  -> PostFloatingIpsIdActionsUnassignResponseBody201ActionError
mkPostFloatingIpsIdActionsUnassignResponseBody201ActionError postFloatingIpsIdActionsUnassignResponseBody201ActionErrorCode postFloatingIpsIdActionsUnassignResponseBody201ActionErrorMessage = PostFloatingIpsIdActionsUnassignResponseBody201ActionError{postFloatingIpsIdActionsUnassignResponseBody201ActionErrorCode = postFloatingIpsIdActionsUnassignResponseBody201ActionErrorCode,
                                                                                                                                                                                                                                                           postFloatingIpsIdActionsUnassignResponseBody201ActionErrorMessage = postFloatingIpsIdActionsUnassignResponseBody201ActionErrorMessage}
-- | Defines the object schema located at @paths.\/floating_ips\/{id}\/actions\/unassign.POST.responses.201.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data PostFloatingIpsIdActionsUnassignResponseBody201ActionResources = PostFloatingIpsIdActionsUnassignResponseBody201ActionResources {
  -- | id: ID of the Resource
  postFloatingIpsIdActionsUnassignResponseBody201ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , postFloatingIpsIdActionsUnassignResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostFloatingIpsIdActionsUnassignResponseBody201ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsUnassignResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsIdActionsUnassignResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsIdActionsUnassignResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostFloatingIpsIdActionsUnassignResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PostFloatingIpsIdActionsUnassignResponseBody201ActionResources' with all required fields.
mkPostFloatingIpsIdActionsUnassignResponseBody201ActionResources :: GHC.Types.Int -- ^ 'postFloatingIpsIdActionsUnassignResponseBody201ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'postFloatingIpsIdActionsUnassignResponseBody201ActionResourcesType'
  -> PostFloatingIpsIdActionsUnassignResponseBody201ActionResources
mkPostFloatingIpsIdActionsUnassignResponseBody201ActionResources postFloatingIpsIdActionsUnassignResponseBody201ActionResourcesId postFloatingIpsIdActionsUnassignResponseBody201ActionResourcesType = PostFloatingIpsIdActionsUnassignResponseBody201ActionResources{postFloatingIpsIdActionsUnassignResponseBody201ActionResourcesId = postFloatingIpsIdActionsUnassignResponseBody201ActionResourcesId,
                                                                                                                                                                                                                                                                      postFloatingIpsIdActionsUnassignResponseBody201ActionResourcesType = postFloatingIpsIdActionsUnassignResponseBody201ActionResourcesType}
-- | Defines the enum schema located at @paths.\/floating_ips\/{id}\/actions\/unassign.POST.responses.201.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data PostFloatingIpsIdActionsUnassignResponseBody201ActionStatus =
   PostFloatingIpsIdActionsUnassignResponseBody201ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostFloatingIpsIdActionsUnassignResponseBody201ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostFloatingIpsIdActionsUnassignResponseBody201ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | PostFloatingIpsIdActionsUnassignResponseBody201ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | PostFloatingIpsIdActionsUnassignResponseBody201ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostFloatingIpsIdActionsUnassignResponseBody201ActionStatus
    where toJSON (PostFloatingIpsIdActionsUnassignResponseBody201ActionStatusOther val) = val
          toJSON (PostFloatingIpsIdActionsUnassignResponseBody201ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostFloatingIpsIdActionsUnassignResponseBody201ActionStatusEnumSuccess) = "success"
          toJSON (PostFloatingIpsIdActionsUnassignResponseBody201ActionStatusEnumRunning) = "running"
          toJSON (PostFloatingIpsIdActionsUnassignResponseBody201ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsIdActionsUnassignResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> PostFloatingIpsIdActionsUnassignResponseBody201ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> PostFloatingIpsIdActionsUnassignResponseBody201ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> PostFloatingIpsIdActionsUnassignResponseBody201ActionStatusEnumError
                                            | GHC.Base.otherwise -> PostFloatingIpsIdActionsUnassignResponseBody201ActionStatusOther val)
-- | > POST /floating_ips/{id}/actions/unassign
-- 
-- The same as 'postFloatingIps_Id_ActionsUnassign' but accepts an explicit configuration.
postFloatingIps_Id_ActionsUnassignWithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Floating IP
  -> m (Network.HTTP.Client.Types.Response PostFloatingIpsIdActionsUnassignResponse) -- ^ Monadic computation which returns the result of the operation
postFloatingIps_Id_ActionsUnassignWithConfiguration config
                                                    id = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostFloatingIpsIdActionsUnassignResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostFloatingIpsIdActionsUnassignResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    PostFloatingIpsIdActionsUnassignResponseBody201)
                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/floating_ips/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/unassign"))) GHC.Base.mempty)
-- | > POST /floating_ips/{id}/actions/unassign
-- 
-- The same as 'postFloatingIps_Id_ActionsUnassign' but returns the raw 'Data.ByteString.Char8.ByteString'.
postFloatingIps_Id_ActionsUnassignRaw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Floating IP
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postFloatingIps_Id_ActionsUnassignRaw id = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/floating_ips/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/unassign"))) GHC.Base.mempty)
-- | > POST /floating_ips/{id}/actions/unassign
-- 
-- The same as 'postFloatingIps_Id_ActionsUnassign' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postFloatingIps_Id_ActionsUnassignWithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Floating IP
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postFloatingIps_Id_ActionsUnassignWithConfigurationRaw config
                                                       id = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/floating_ips/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/unassign"))) GHC.Base.mempty)
