-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postServers_Id_ActionsAddToPlacementGroup
module HCloud.Operations.PostServersIdActionsAddToPlacementGroup where

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

-- | > POST /servers/{id}/actions/add_to_placement_group
-- 
-- Adds a Server to a Placement Group.
-- 
-- Server must be powered off for this command to succeed.
-- 
-- \#\#\#\# Call specific error codes
-- 
-- | Code                          | Description                                                          |
-- |-------------------------------|----------------------------------------------------------------------|
-- | \`server_not_stopped\`          | The action requires a stopped server                                 |
postServers_Id_ActionsAddToPlacementGroup :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsAddToPlacementGroupRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response PostServersIdActionsAddToPlacementGroupResponse) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsAddToPlacementGroup id
                                          body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsAddToPlacementGroupResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsAddToPlacementGroupResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          PostServersIdActionsAddToPlacementGroupResponseBody201)
                                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/add_to_placement_group"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/add_to_placement_group.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostServersIdActionsAddToPlacementGroupRequestBody = PostServersIdActionsAddToPlacementGroupRequestBody {
  -- | placement_group: ID of Placement Group the Server should be added to
  postServersIdActionsAddToPlacementGroupRequestBodyPlacementGroup :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsAddToPlacementGroupRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("placement_group" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupRequestBodyPlacementGroup obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("placement_group" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupRequestBodyPlacementGroup obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsAddToPlacementGroupRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsAddToPlacementGroupRequestBody" (\obj -> GHC.Base.pure PostServersIdActionsAddToPlacementGroupRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "placement_group"))
-- | Create a new 'PostServersIdActionsAddToPlacementGroupRequestBody' with all required fields.
mkPostServersIdActionsAddToPlacementGroupRequestBody :: GHC.Types.Int -- ^ 'postServersIdActionsAddToPlacementGroupRequestBodyPlacementGroup'
  -> PostServersIdActionsAddToPlacementGroupRequestBody
mkPostServersIdActionsAddToPlacementGroupRequestBody postServersIdActionsAddToPlacementGroupRequestBodyPlacementGroup = PostServersIdActionsAddToPlacementGroupRequestBody{postServersIdActionsAddToPlacementGroupRequestBodyPlacementGroup = postServersIdActionsAddToPlacementGroupRequestBodyPlacementGroup}
-- | Represents a response of the operation 'postServers_Id_ActionsAddToPlacementGroup'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostServersIdActionsAddToPlacementGroupResponseError' is used.
data PostServersIdActionsAddToPlacementGroupResponse =
   PostServersIdActionsAddToPlacementGroupResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostServersIdActionsAddToPlacementGroupResponse201 PostServersIdActionsAddToPlacementGroupResponseBody201 -- ^ The \`action\` key in the reply contains an Action object with this structure
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/add_to_placement_group.POST.responses.201.content.application\/json.schema@ in the specification.
-- 
-- 
data PostServersIdActionsAddToPlacementGroupResponseBody201 = PostServersIdActionsAddToPlacementGroupResponseBody201 {
  -- | action
  postServersIdActionsAddToPlacementGroupResponseBody201Action :: PostServersIdActionsAddToPlacementGroupResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsAddToPlacementGroupResponseBody201
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsAddToPlacementGroupResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsAddToPlacementGroupResponseBody201" (\obj -> GHC.Base.pure PostServersIdActionsAddToPlacementGroupResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'PostServersIdActionsAddToPlacementGroupResponseBody201' with all required fields.
mkPostServersIdActionsAddToPlacementGroupResponseBody201 :: PostServersIdActionsAddToPlacementGroupResponseBody201Action -- ^ 'postServersIdActionsAddToPlacementGroupResponseBody201Action'
  -> PostServersIdActionsAddToPlacementGroupResponseBody201
mkPostServersIdActionsAddToPlacementGroupResponseBody201 postServersIdActionsAddToPlacementGroupResponseBody201Action = PostServersIdActionsAddToPlacementGroupResponseBody201{postServersIdActionsAddToPlacementGroupResponseBody201Action = postServersIdActionsAddToPlacementGroupResponseBody201Action}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/add_to_placement_group.POST.responses.201.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data PostServersIdActionsAddToPlacementGroupResponseBody201Action = PostServersIdActionsAddToPlacementGroupResponseBody201Action {
  -- | command: Command executed in the Action
  postServersIdActionsAddToPlacementGroupResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postServersIdActionsAddToPlacementGroupResponseBody201ActionError :: (GHC.Maybe.Maybe PostServersIdActionsAddToPlacementGroupResponseBody201ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postServersIdActionsAddToPlacementGroupResponseBody201ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , postServersIdActionsAddToPlacementGroupResponseBody201ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , postServersIdActionsAddToPlacementGroupResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postServersIdActionsAddToPlacementGroupResponseBody201ActionResources :: ([PostServersIdActionsAddToPlacementGroupResponseBody201ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postServersIdActionsAddToPlacementGroupResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postServersIdActionsAddToPlacementGroupResponseBody201ActionStatus :: PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsAddToPlacementGroupResponseBody201Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionError obj : "finished" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionId obj : "progress" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionResources obj : "started" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsAddToPlacementGroupResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsAddToPlacementGroupResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostServersIdActionsAddToPlacementGroupResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'PostServersIdActionsAddToPlacementGroupResponseBody201Action' with all required fields.
mkPostServersIdActionsAddToPlacementGroupResponseBody201Action :: Data.Text.Internal.Text -- ^ 'postServersIdActionsAddToPlacementGroupResponseBody201ActionCommand'
  -> GHC.Maybe.Maybe PostServersIdActionsAddToPlacementGroupResponseBody201ActionError -- ^ 'postServersIdActionsAddToPlacementGroupResponseBody201ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postServersIdActionsAddToPlacementGroupResponseBody201ActionFinished'
  -> GHC.Types.Int -- ^ 'postServersIdActionsAddToPlacementGroupResponseBody201ActionId'
  -> GHC.Types.Double -- ^ 'postServersIdActionsAddToPlacementGroupResponseBody201ActionProgress'
  -> [PostServersIdActionsAddToPlacementGroupResponseBody201ActionResources] -- ^ 'postServersIdActionsAddToPlacementGroupResponseBody201ActionResources'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsAddToPlacementGroupResponseBody201ActionStarted'
  -> PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatus -- ^ 'postServersIdActionsAddToPlacementGroupResponseBody201ActionStatus'
  -> PostServersIdActionsAddToPlacementGroupResponseBody201Action
mkPostServersIdActionsAddToPlacementGroupResponseBody201Action postServersIdActionsAddToPlacementGroupResponseBody201ActionCommand postServersIdActionsAddToPlacementGroupResponseBody201ActionError postServersIdActionsAddToPlacementGroupResponseBody201ActionFinished postServersIdActionsAddToPlacementGroupResponseBody201ActionId postServersIdActionsAddToPlacementGroupResponseBody201ActionProgress postServersIdActionsAddToPlacementGroupResponseBody201ActionResources postServersIdActionsAddToPlacementGroupResponseBody201ActionStarted postServersIdActionsAddToPlacementGroupResponseBody201ActionStatus = PostServersIdActionsAddToPlacementGroupResponseBody201Action{postServersIdActionsAddToPlacementGroupResponseBody201ActionCommand = postServersIdActionsAddToPlacementGroupResponseBody201ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          postServersIdActionsAddToPlacementGroupResponseBody201ActionError = postServersIdActionsAddToPlacementGroupResponseBody201ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          postServersIdActionsAddToPlacementGroupResponseBody201ActionFinished = postServersIdActionsAddToPlacementGroupResponseBody201ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          postServersIdActionsAddToPlacementGroupResponseBody201ActionId = postServersIdActionsAddToPlacementGroupResponseBody201ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          postServersIdActionsAddToPlacementGroupResponseBody201ActionProgress = postServersIdActionsAddToPlacementGroupResponseBody201ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          postServersIdActionsAddToPlacementGroupResponseBody201ActionResources = postServersIdActionsAddToPlacementGroupResponseBody201ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          postServersIdActionsAddToPlacementGroupResponseBody201ActionStarted = postServersIdActionsAddToPlacementGroupResponseBody201ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          postServersIdActionsAddToPlacementGroupResponseBody201ActionStatus = postServersIdActionsAddToPlacementGroupResponseBody201ActionStatus}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/add_to_placement_group.POST.responses.201.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data PostServersIdActionsAddToPlacementGroupResponseBody201ActionError = PostServersIdActionsAddToPlacementGroupResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postServersIdActionsAddToPlacementGroupResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postServersIdActionsAddToPlacementGroupResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsAddToPlacementGroupResponseBody201ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsAddToPlacementGroupResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsAddToPlacementGroupResponseBody201ActionError" (\obj -> (GHC.Base.pure PostServersIdActionsAddToPlacementGroupResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'PostServersIdActionsAddToPlacementGroupResponseBody201ActionError' with all required fields.
mkPostServersIdActionsAddToPlacementGroupResponseBody201ActionError :: Data.Text.Internal.Text -- ^ 'postServersIdActionsAddToPlacementGroupResponseBody201ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsAddToPlacementGroupResponseBody201ActionErrorMessage'
  -> PostServersIdActionsAddToPlacementGroupResponseBody201ActionError
mkPostServersIdActionsAddToPlacementGroupResponseBody201ActionError postServersIdActionsAddToPlacementGroupResponseBody201ActionErrorCode postServersIdActionsAddToPlacementGroupResponseBody201ActionErrorMessage = PostServersIdActionsAddToPlacementGroupResponseBody201ActionError{postServersIdActionsAddToPlacementGroupResponseBody201ActionErrorCode = postServersIdActionsAddToPlacementGroupResponseBody201ActionErrorCode,
                                                                                                                                                                                                                                                                                       postServersIdActionsAddToPlacementGroupResponseBody201ActionErrorMessage = postServersIdActionsAddToPlacementGroupResponseBody201ActionErrorMessage}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/add_to_placement_group.POST.responses.201.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data PostServersIdActionsAddToPlacementGroupResponseBody201ActionResources = PostServersIdActionsAddToPlacementGroupResponseBody201ActionResources {
  -- | id: ID of the Resource
  postServersIdActionsAddToPlacementGroupResponseBody201ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , postServersIdActionsAddToPlacementGroupResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsAddToPlacementGroupResponseBody201ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postServersIdActionsAddToPlacementGroupResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsAddToPlacementGroupResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsAddToPlacementGroupResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostServersIdActionsAddToPlacementGroupResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PostServersIdActionsAddToPlacementGroupResponseBody201ActionResources' with all required fields.
mkPostServersIdActionsAddToPlacementGroupResponseBody201ActionResources :: GHC.Types.Int -- ^ 'postServersIdActionsAddToPlacementGroupResponseBody201ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsAddToPlacementGroupResponseBody201ActionResourcesType'
  -> PostServersIdActionsAddToPlacementGroupResponseBody201ActionResources
mkPostServersIdActionsAddToPlacementGroupResponseBody201ActionResources postServersIdActionsAddToPlacementGroupResponseBody201ActionResourcesId postServersIdActionsAddToPlacementGroupResponseBody201ActionResourcesType = PostServersIdActionsAddToPlacementGroupResponseBody201ActionResources{postServersIdActionsAddToPlacementGroupResponseBody201ActionResourcesId = postServersIdActionsAddToPlacementGroupResponseBody201ActionResourcesId,
                                                                                                                                                                                                                                                                                                  postServersIdActionsAddToPlacementGroupResponseBody201ActionResourcesType = postServersIdActionsAddToPlacementGroupResponseBody201ActionResourcesType}
-- | Defines the enum schema located at @paths.\/servers\/{id}\/actions\/add_to_placement_group.POST.responses.201.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatus =
   PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatus
    where toJSON (PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatusOther val) = val
          toJSON (PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatusEnumSuccess) = "success"
          toJSON (PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatusEnumRunning) = "running"
          toJSON (PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatusEnumError
                                            | GHC.Base.otherwise -> PostServersIdActionsAddToPlacementGroupResponseBody201ActionStatusOther val)
-- | > POST /servers/{id}/actions/add_to_placement_group
-- 
-- The same as 'postServers_Id_ActionsAddToPlacementGroup' but accepts an explicit configuration.
postServers_Id_ActionsAddToPlacementGroupWithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsAddToPlacementGroupRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostServersIdActionsAddToPlacementGroupResponse) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsAddToPlacementGroupWithConfiguration config
                                                           id
                                                           body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsAddToPlacementGroupResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsAddToPlacementGroupResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           PostServersIdActionsAddToPlacementGroupResponseBody201)
                                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/add_to_placement_group"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /servers/{id}/actions/add_to_placement_group
-- 
-- The same as 'postServers_Id_ActionsAddToPlacementGroup' but returns the raw 'Data.ByteString.Char8.ByteString'.
postServers_Id_ActionsAddToPlacementGroupRaw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsAddToPlacementGroupRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsAddToPlacementGroupRaw id
                                             body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/add_to_placement_group"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /servers/{id}/actions/add_to_placement_group
-- 
-- The same as 'postServers_Id_ActionsAddToPlacementGroup' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postServers_Id_ActionsAddToPlacementGroupWithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsAddToPlacementGroupRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsAddToPlacementGroupWithConfigurationRaw config
                                                              id
                                                              body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/add_to_placement_group"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
