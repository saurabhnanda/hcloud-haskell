-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postServers_Id_ActionsChangeType
module HCloud.Operations.PostServersIdActionsChangeType where

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

-- | > POST /servers/{id}/actions/change_type
-- 
-- Changes the type (Cores, RAM and disk sizes) of a Server.
-- 
-- Server must be powered off for this command to succeed.
-- 
-- This copies the content of its disk, and starts it again.
-- 
-- You can only migrate to Server types with the same \`storage_type\` and equal or bigger disks. Shrinking disks is not possible as it might destroy data.
-- 
-- If the disk gets upgraded, the Server type can not be downgraded any more. If you plan to downgrade the Server type, set \`upgrade_disk\` to \`false\`.
-- 
-- \#\#\#\# Call specific error codes
-- 
-- | Code                          | Description                                                          |
-- |-------------------------------|----------------------------------------------------------------------|
-- | \`invalid_server_type\`         | The server type does not fit for the given server or is deprecated   |
-- | \`server_not_stopped\`          | The action requires a stopped server                                 |
postServers_Id_ActionsChangeType :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsChangeTypeRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response PostServersIdActionsChangeTypeResponse) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsChangeType id
                                 body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsChangeTypeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsChangeTypeResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                               PostServersIdActionsChangeTypeResponseBody201)
                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_type"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/change_type.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostServersIdActionsChangeTypeRequestBody = PostServersIdActionsChangeTypeRequestBody {
  -- | server_type: ID or name of Server type the Server should migrate to
  postServersIdActionsChangeTypeRequestBodyServerType :: Data.Text.Internal.Text
  -- | upgrade_disk: If false, do not upgrade the disk (this allows downgrading the Server type later)
  , postServersIdActionsChangeTypeRequestBodyUpgradeDisk :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsChangeTypeRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("server_type" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeRequestBodyServerType obj : "upgrade_disk" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeRequestBodyUpgradeDisk obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("server_type" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeRequestBodyServerType obj) GHC.Base.<> ("upgrade_disk" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeRequestBodyUpgradeDisk obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsChangeTypeRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsChangeTypeRequestBody" (\obj -> (GHC.Base.pure PostServersIdActionsChangeTypeRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "server_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "upgrade_disk"))
-- | Create a new 'PostServersIdActionsChangeTypeRequestBody' with all required fields.
mkPostServersIdActionsChangeTypeRequestBody :: Data.Text.Internal.Text -- ^ 'postServersIdActionsChangeTypeRequestBodyServerType'
  -> GHC.Types.Bool -- ^ 'postServersIdActionsChangeTypeRequestBodyUpgradeDisk'
  -> PostServersIdActionsChangeTypeRequestBody
mkPostServersIdActionsChangeTypeRequestBody postServersIdActionsChangeTypeRequestBodyServerType postServersIdActionsChangeTypeRequestBodyUpgradeDisk = PostServersIdActionsChangeTypeRequestBody{postServersIdActionsChangeTypeRequestBodyServerType = postServersIdActionsChangeTypeRequestBodyServerType,
                                                                                                                                                                                                 postServersIdActionsChangeTypeRequestBodyUpgradeDisk = postServersIdActionsChangeTypeRequestBodyUpgradeDisk}
-- | Represents a response of the operation 'postServers_Id_ActionsChangeType'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostServersIdActionsChangeTypeResponseError' is used.
data PostServersIdActionsChangeTypeResponse =
   PostServersIdActionsChangeTypeResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostServersIdActionsChangeTypeResponse201 PostServersIdActionsChangeTypeResponseBody201 -- ^ The \`action\` key in the reply contains an Action object with this structure
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/change_type.POST.responses.201.content.application\/json.schema@ in the specification.
-- 
-- 
data PostServersIdActionsChangeTypeResponseBody201 = PostServersIdActionsChangeTypeResponseBody201 {
  -- | action
  postServersIdActionsChangeTypeResponseBody201Action :: PostServersIdActionsChangeTypeResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsChangeTypeResponseBody201
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsChangeTypeResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsChangeTypeResponseBody201" (\obj -> GHC.Base.pure PostServersIdActionsChangeTypeResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'PostServersIdActionsChangeTypeResponseBody201' with all required fields.
mkPostServersIdActionsChangeTypeResponseBody201 :: PostServersIdActionsChangeTypeResponseBody201Action -- ^ 'postServersIdActionsChangeTypeResponseBody201Action'
  -> PostServersIdActionsChangeTypeResponseBody201
mkPostServersIdActionsChangeTypeResponseBody201 postServersIdActionsChangeTypeResponseBody201Action = PostServersIdActionsChangeTypeResponseBody201{postServersIdActionsChangeTypeResponseBody201Action = postServersIdActionsChangeTypeResponseBody201Action}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/change_type.POST.responses.201.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data PostServersIdActionsChangeTypeResponseBody201Action = PostServersIdActionsChangeTypeResponseBody201Action {
  -- | command: Command executed in the Action
  postServersIdActionsChangeTypeResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postServersIdActionsChangeTypeResponseBody201ActionError :: (GHC.Maybe.Maybe PostServersIdActionsChangeTypeResponseBody201ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postServersIdActionsChangeTypeResponseBody201ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , postServersIdActionsChangeTypeResponseBody201ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , postServersIdActionsChangeTypeResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postServersIdActionsChangeTypeResponseBody201ActionResources :: ([PostServersIdActionsChangeTypeResponseBody201ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postServersIdActionsChangeTypeResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postServersIdActionsChangeTypeResponseBody201ActionStatus :: PostServersIdActionsChangeTypeResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsChangeTypeResponseBody201Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionError obj : "finished" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionId obj : "progress" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionResources obj : "started" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsChangeTypeResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsChangeTypeResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostServersIdActionsChangeTypeResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'PostServersIdActionsChangeTypeResponseBody201Action' with all required fields.
mkPostServersIdActionsChangeTypeResponseBody201Action :: Data.Text.Internal.Text -- ^ 'postServersIdActionsChangeTypeResponseBody201ActionCommand'
  -> GHC.Maybe.Maybe PostServersIdActionsChangeTypeResponseBody201ActionError -- ^ 'postServersIdActionsChangeTypeResponseBody201ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postServersIdActionsChangeTypeResponseBody201ActionFinished'
  -> GHC.Types.Int -- ^ 'postServersIdActionsChangeTypeResponseBody201ActionId'
  -> GHC.Types.Double -- ^ 'postServersIdActionsChangeTypeResponseBody201ActionProgress'
  -> [PostServersIdActionsChangeTypeResponseBody201ActionResources] -- ^ 'postServersIdActionsChangeTypeResponseBody201ActionResources'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsChangeTypeResponseBody201ActionStarted'
  -> PostServersIdActionsChangeTypeResponseBody201ActionStatus -- ^ 'postServersIdActionsChangeTypeResponseBody201ActionStatus'
  -> PostServersIdActionsChangeTypeResponseBody201Action
mkPostServersIdActionsChangeTypeResponseBody201Action postServersIdActionsChangeTypeResponseBody201ActionCommand postServersIdActionsChangeTypeResponseBody201ActionError postServersIdActionsChangeTypeResponseBody201ActionFinished postServersIdActionsChangeTypeResponseBody201ActionId postServersIdActionsChangeTypeResponseBody201ActionProgress postServersIdActionsChangeTypeResponseBody201ActionResources postServersIdActionsChangeTypeResponseBody201ActionStarted postServersIdActionsChangeTypeResponseBody201ActionStatus = PostServersIdActionsChangeTypeResponseBody201Action{postServersIdActionsChangeTypeResponseBody201ActionCommand = postServersIdActionsChangeTypeResponseBody201ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                postServersIdActionsChangeTypeResponseBody201ActionError = postServersIdActionsChangeTypeResponseBody201ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                postServersIdActionsChangeTypeResponseBody201ActionFinished = postServersIdActionsChangeTypeResponseBody201ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                postServersIdActionsChangeTypeResponseBody201ActionId = postServersIdActionsChangeTypeResponseBody201ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                postServersIdActionsChangeTypeResponseBody201ActionProgress = postServersIdActionsChangeTypeResponseBody201ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                postServersIdActionsChangeTypeResponseBody201ActionResources = postServersIdActionsChangeTypeResponseBody201ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                postServersIdActionsChangeTypeResponseBody201ActionStarted = postServersIdActionsChangeTypeResponseBody201ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                postServersIdActionsChangeTypeResponseBody201ActionStatus = postServersIdActionsChangeTypeResponseBody201ActionStatus}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/change_type.POST.responses.201.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data PostServersIdActionsChangeTypeResponseBody201ActionError = PostServersIdActionsChangeTypeResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postServersIdActionsChangeTypeResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postServersIdActionsChangeTypeResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsChangeTypeResponseBody201ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsChangeTypeResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsChangeTypeResponseBody201ActionError" (\obj -> (GHC.Base.pure PostServersIdActionsChangeTypeResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'PostServersIdActionsChangeTypeResponseBody201ActionError' with all required fields.
mkPostServersIdActionsChangeTypeResponseBody201ActionError :: Data.Text.Internal.Text -- ^ 'postServersIdActionsChangeTypeResponseBody201ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsChangeTypeResponseBody201ActionErrorMessage'
  -> PostServersIdActionsChangeTypeResponseBody201ActionError
mkPostServersIdActionsChangeTypeResponseBody201ActionError postServersIdActionsChangeTypeResponseBody201ActionErrorCode postServersIdActionsChangeTypeResponseBody201ActionErrorMessage = PostServersIdActionsChangeTypeResponseBody201ActionError{postServersIdActionsChangeTypeResponseBody201ActionErrorCode = postServersIdActionsChangeTypeResponseBody201ActionErrorCode,
                                                                                                                                                                                                                                                   postServersIdActionsChangeTypeResponseBody201ActionErrorMessage = postServersIdActionsChangeTypeResponseBody201ActionErrorMessage}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/change_type.POST.responses.201.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data PostServersIdActionsChangeTypeResponseBody201ActionResources = PostServersIdActionsChangeTypeResponseBody201ActionResources {
  -- | id: ID of the Resource
  postServersIdActionsChangeTypeResponseBody201ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , postServersIdActionsChangeTypeResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsChangeTypeResponseBody201ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeTypeResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsChangeTypeResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsChangeTypeResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostServersIdActionsChangeTypeResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PostServersIdActionsChangeTypeResponseBody201ActionResources' with all required fields.
mkPostServersIdActionsChangeTypeResponseBody201ActionResources :: GHC.Types.Int -- ^ 'postServersIdActionsChangeTypeResponseBody201ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsChangeTypeResponseBody201ActionResourcesType'
  -> PostServersIdActionsChangeTypeResponseBody201ActionResources
mkPostServersIdActionsChangeTypeResponseBody201ActionResources postServersIdActionsChangeTypeResponseBody201ActionResourcesId postServersIdActionsChangeTypeResponseBody201ActionResourcesType = PostServersIdActionsChangeTypeResponseBody201ActionResources{postServersIdActionsChangeTypeResponseBody201ActionResourcesId = postServersIdActionsChangeTypeResponseBody201ActionResourcesId,
                                                                                                                                                                                                                                                              postServersIdActionsChangeTypeResponseBody201ActionResourcesType = postServersIdActionsChangeTypeResponseBody201ActionResourcesType}
-- | Defines the enum schema located at @paths.\/servers\/{id}\/actions\/change_type.POST.responses.201.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data PostServersIdActionsChangeTypeResponseBody201ActionStatus =
   PostServersIdActionsChangeTypeResponseBody201ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostServersIdActionsChangeTypeResponseBody201ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostServersIdActionsChangeTypeResponseBody201ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | PostServersIdActionsChangeTypeResponseBody201ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | PostServersIdActionsChangeTypeResponseBody201ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsChangeTypeResponseBody201ActionStatus
    where toJSON (PostServersIdActionsChangeTypeResponseBody201ActionStatusOther val) = val
          toJSON (PostServersIdActionsChangeTypeResponseBody201ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostServersIdActionsChangeTypeResponseBody201ActionStatusEnumSuccess) = "success"
          toJSON (PostServersIdActionsChangeTypeResponseBody201ActionStatusEnumRunning) = "running"
          toJSON (PostServersIdActionsChangeTypeResponseBody201ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsChangeTypeResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> PostServersIdActionsChangeTypeResponseBody201ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> PostServersIdActionsChangeTypeResponseBody201ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> PostServersIdActionsChangeTypeResponseBody201ActionStatusEnumError
                                            | GHC.Base.otherwise -> PostServersIdActionsChangeTypeResponseBody201ActionStatusOther val)
-- | > POST /servers/{id}/actions/change_type
-- 
-- The same as 'postServers_Id_ActionsChangeType' but accepts an explicit configuration.
postServers_Id_ActionsChangeTypeWithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsChangeTypeRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostServersIdActionsChangeTypeResponse) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsChangeTypeWithConfiguration config
                                                  id
                                                  body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsChangeTypeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsChangeTypeResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                PostServersIdActionsChangeTypeResponseBody201)
                                                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_type"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /servers/{id}/actions/change_type
-- 
-- The same as 'postServers_Id_ActionsChangeType' but returns the raw 'Data.ByteString.Char8.ByteString'.
postServers_Id_ActionsChangeTypeRaw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsChangeTypeRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsChangeTypeRaw id
                                    body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_type"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /servers/{id}/actions/change_type
-- 
-- The same as 'postServers_Id_ActionsChangeType' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postServers_Id_ActionsChangeTypeWithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsChangeTypeRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsChangeTypeWithConfigurationRaw config
                                                     id
                                                     body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_type"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
