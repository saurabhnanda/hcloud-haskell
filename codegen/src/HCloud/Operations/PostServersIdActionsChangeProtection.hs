-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postServers_Id_ActionsChangeProtection
module HCloud.Operations.PostServersIdActionsChangeProtection where

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

-- | > POST /servers/{id}/actions/change_protection
-- 
-- Changes the protection configuration of the Server.
postServers_Id_ActionsChangeProtection :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsChangeProtectionRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response PostServersIdActionsChangeProtectionResponse) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsChangeProtection id
                                       body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsChangeProtectionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsChangeProtectionResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 PostServersIdActionsChangeProtectionResponseBody201)
                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_protection"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/change_protection.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostServersIdActionsChangeProtectionRequestBody = PostServersIdActionsChangeProtectionRequestBody {
  -- | delete: If true, prevents the Server from being deleted (currently delete and rebuild attribute needs to have the same value)
  postServersIdActionsChangeProtectionRequestBodyDelete :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | rebuild: If true, prevents the Server from being rebuilt (currently delete and rebuild attribute needs to have the same value)
  , postServersIdActionsChangeProtectionRequestBodyRebuild :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsChangeProtectionRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("delete" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionRequestBodyDelete obj : "rebuild" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionRequestBodyRebuild obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("delete" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionRequestBodyDelete obj) GHC.Base.<> ("rebuild" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionRequestBodyRebuild obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsChangeProtectionRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsChangeProtectionRequestBody" (\obj -> (GHC.Base.pure PostServersIdActionsChangeProtectionRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "delete")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "rebuild"))
-- | Create a new 'PostServersIdActionsChangeProtectionRequestBody' with all required fields.
mkPostServersIdActionsChangeProtectionRequestBody :: PostServersIdActionsChangeProtectionRequestBody
mkPostServersIdActionsChangeProtectionRequestBody = PostServersIdActionsChangeProtectionRequestBody{postServersIdActionsChangeProtectionRequestBodyDelete = GHC.Maybe.Nothing,
                                                                                                    postServersIdActionsChangeProtectionRequestBodyRebuild = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postServers_Id_ActionsChangeProtection'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostServersIdActionsChangeProtectionResponseError' is used.
data PostServersIdActionsChangeProtectionResponse =
   PostServersIdActionsChangeProtectionResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostServersIdActionsChangeProtectionResponse201 PostServersIdActionsChangeProtectionResponseBody201 -- ^ The \`action\` key in the reply contains an Action object with this structure
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/change_protection.POST.responses.201.content.application\/json.schema@ in the specification.
-- 
-- 
data PostServersIdActionsChangeProtectionResponseBody201 = PostServersIdActionsChangeProtectionResponseBody201 {
  -- | action
  postServersIdActionsChangeProtectionResponseBody201Action :: PostServersIdActionsChangeProtectionResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsChangeProtectionResponseBody201
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsChangeProtectionResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsChangeProtectionResponseBody201" (\obj -> GHC.Base.pure PostServersIdActionsChangeProtectionResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'PostServersIdActionsChangeProtectionResponseBody201' with all required fields.
mkPostServersIdActionsChangeProtectionResponseBody201 :: PostServersIdActionsChangeProtectionResponseBody201Action -- ^ 'postServersIdActionsChangeProtectionResponseBody201Action'
  -> PostServersIdActionsChangeProtectionResponseBody201
mkPostServersIdActionsChangeProtectionResponseBody201 postServersIdActionsChangeProtectionResponseBody201Action = PostServersIdActionsChangeProtectionResponseBody201{postServersIdActionsChangeProtectionResponseBody201Action = postServersIdActionsChangeProtectionResponseBody201Action}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/change_protection.POST.responses.201.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data PostServersIdActionsChangeProtectionResponseBody201Action = PostServersIdActionsChangeProtectionResponseBody201Action {
  -- | command: Command executed in the Action
  postServersIdActionsChangeProtectionResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postServersIdActionsChangeProtectionResponseBody201ActionError :: (GHC.Maybe.Maybe PostServersIdActionsChangeProtectionResponseBody201ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postServersIdActionsChangeProtectionResponseBody201ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , postServersIdActionsChangeProtectionResponseBody201ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , postServersIdActionsChangeProtectionResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postServersIdActionsChangeProtectionResponseBody201ActionResources :: ([PostServersIdActionsChangeProtectionResponseBody201ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postServersIdActionsChangeProtectionResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postServersIdActionsChangeProtectionResponseBody201ActionStatus :: PostServersIdActionsChangeProtectionResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsChangeProtectionResponseBody201Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionError obj : "finished" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionId obj : "progress" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionResources obj : "started" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsChangeProtectionResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsChangeProtectionResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostServersIdActionsChangeProtectionResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'PostServersIdActionsChangeProtectionResponseBody201Action' with all required fields.
mkPostServersIdActionsChangeProtectionResponseBody201Action :: Data.Text.Internal.Text -- ^ 'postServersIdActionsChangeProtectionResponseBody201ActionCommand'
  -> GHC.Maybe.Maybe PostServersIdActionsChangeProtectionResponseBody201ActionError -- ^ 'postServersIdActionsChangeProtectionResponseBody201ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postServersIdActionsChangeProtectionResponseBody201ActionFinished'
  -> GHC.Types.Int -- ^ 'postServersIdActionsChangeProtectionResponseBody201ActionId'
  -> GHC.Types.Double -- ^ 'postServersIdActionsChangeProtectionResponseBody201ActionProgress'
  -> [PostServersIdActionsChangeProtectionResponseBody201ActionResources] -- ^ 'postServersIdActionsChangeProtectionResponseBody201ActionResources'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsChangeProtectionResponseBody201ActionStarted'
  -> PostServersIdActionsChangeProtectionResponseBody201ActionStatus -- ^ 'postServersIdActionsChangeProtectionResponseBody201ActionStatus'
  -> PostServersIdActionsChangeProtectionResponseBody201Action
mkPostServersIdActionsChangeProtectionResponseBody201Action postServersIdActionsChangeProtectionResponseBody201ActionCommand postServersIdActionsChangeProtectionResponseBody201ActionError postServersIdActionsChangeProtectionResponseBody201ActionFinished postServersIdActionsChangeProtectionResponseBody201ActionId postServersIdActionsChangeProtectionResponseBody201ActionProgress postServersIdActionsChangeProtectionResponseBody201ActionResources postServersIdActionsChangeProtectionResponseBody201ActionStarted postServersIdActionsChangeProtectionResponseBody201ActionStatus = PostServersIdActionsChangeProtectionResponseBody201Action{postServersIdActionsChangeProtectionResponseBody201ActionCommand = postServersIdActionsChangeProtectionResponseBody201ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postServersIdActionsChangeProtectionResponseBody201ActionError = postServersIdActionsChangeProtectionResponseBody201ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postServersIdActionsChangeProtectionResponseBody201ActionFinished = postServersIdActionsChangeProtectionResponseBody201ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postServersIdActionsChangeProtectionResponseBody201ActionId = postServersIdActionsChangeProtectionResponseBody201ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postServersIdActionsChangeProtectionResponseBody201ActionProgress = postServersIdActionsChangeProtectionResponseBody201ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postServersIdActionsChangeProtectionResponseBody201ActionResources = postServersIdActionsChangeProtectionResponseBody201ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postServersIdActionsChangeProtectionResponseBody201ActionStarted = postServersIdActionsChangeProtectionResponseBody201ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postServersIdActionsChangeProtectionResponseBody201ActionStatus = postServersIdActionsChangeProtectionResponseBody201ActionStatus}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/change_protection.POST.responses.201.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data PostServersIdActionsChangeProtectionResponseBody201ActionError = PostServersIdActionsChangeProtectionResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postServersIdActionsChangeProtectionResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postServersIdActionsChangeProtectionResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsChangeProtectionResponseBody201ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsChangeProtectionResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsChangeProtectionResponseBody201ActionError" (\obj -> (GHC.Base.pure PostServersIdActionsChangeProtectionResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'PostServersIdActionsChangeProtectionResponseBody201ActionError' with all required fields.
mkPostServersIdActionsChangeProtectionResponseBody201ActionError :: Data.Text.Internal.Text -- ^ 'postServersIdActionsChangeProtectionResponseBody201ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsChangeProtectionResponseBody201ActionErrorMessage'
  -> PostServersIdActionsChangeProtectionResponseBody201ActionError
mkPostServersIdActionsChangeProtectionResponseBody201ActionError postServersIdActionsChangeProtectionResponseBody201ActionErrorCode postServersIdActionsChangeProtectionResponseBody201ActionErrorMessage = PostServersIdActionsChangeProtectionResponseBody201ActionError{postServersIdActionsChangeProtectionResponseBody201ActionErrorCode = postServersIdActionsChangeProtectionResponseBody201ActionErrorCode,
                                                                                                                                                                                                                                                                           postServersIdActionsChangeProtectionResponseBody201ActionErrorMessage = postServersIdActionsChangeProtectionResponseBody201ActionErrorMessage}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/change_protection.POST.responses.201.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data PostServersIdActionsChangeProtectionResponseBody201ActionResources = PostServersIdActionsChangeProtectionResponseBody201ActionResources {
  -- | id: ID of the Resource
  postServersIdActionsChangeProtectionResponseBody201ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , postServersIdActionsChangeProtectionResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsChangeProtectionResponseBody201ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postServersIdActionsChangeProtectionResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsChangeProtectionResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsChangeProtectionResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostServersIdActionsChangeProtectionResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PostServersIdActionsChangeProtectionResponseBody201ActionResources' with all required fields.
mkPostServersIdActionsChangeProtectionResponseBody201ActionResources :: GHC.Types.Int -- ^ 'postServersIdActionsChangeProtectionResponseBody201ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsChangeProtectionResponseBody201ActionResourcesType'
  -> PostServersIdActionsChangeProtectionResponseBody201ActionResources
mkPostServersIdActionsChangeProtectionResponseBody201ActionResources postServersIdActionsChangeProtectionResponseBody201ActionResourcesId postServersIdActionsChangeProtectionResponseBody201ActionResourcesType = PostServersIdActionsChangeProtectionResponseBody201ActionResources{postServersIdActionsChangeProtectionResponseBody201ActionResourcesId = postServersIdActionsChangeProtectionResponseBody201ActionResourcesId,
                                                                                                                                                                                                                                                                                      postServersIdActionsChangeProtectionResponseBody201ActionResourcesType = postServersIdActionsChangeProtectionResponseBody201ActionResourcesType}
-- | Defines the enum schema located at @paths.\/servers\/{id}\/actions\/change_protection.POST.responses.201.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data PostServersIdActionsChangeProtectionResponseBody201ActionStatus =
   PostServersIdActionsChangeProtectionResponseBody201ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostServersIdActionsChangeProtectionResponseBody201ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostServersIdActionsChangeProtectionResponseBody201ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | PostServersIdActionsChangeProtectionResponseBody201ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | PostServersIdActionsChangeProtectionResponseBody201ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsChangeProtectionResponseBody201ActionStatus
    where toJSON (PostServersIdActionsChangeProtectionResponseBody201ActionStatusOther val) = val
          toJSON (PostServersIdActionsChangeProtectionResponseBody201ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostServersIdActionsChangeProtectionResponseBody201ActionStatusEnumSuccess) = "success"
          toJSON (PostServersIdActionsChangeProtectionResponseBody201ActionStatusEnumRunning) = "running"
          toJSON (PostServersIdActionsChangeProtectionResponseBody201ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsChangeProtectionResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> PostServersIdActionsChangeProtectionResponseBody201ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> PostServersIdActionsChangeProtectionResponseBody201ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> PostServersIdActionsChangeProtectionResponseBody201ActionStatusEnumError
                                            | GHC.Base.otherwise -> PostServersIdActionsChangeProtectionResponseBody201ActionStatusOther val)
-- | > POST /servers/{id}/actions/change_protection
-- 
-- The same as 'postServers_Id_ActionsChangeProtection' but accepts an explicit configuration.
postServers_Id_ActionsChangeProtectionWithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsChangeProtectionRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostServersIdActionsChangeProtectionResponse) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsChangeProtectionWithConfiguration config
                                                        id
                                                        body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsChangeProtectionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsChangeProtectionResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  PostServersIdActionsChangeProtectionResponseBody201)
                                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_protection"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /servers/{id}/actions/change_protection
-- 
-- The same as 'postServers_Id_ActionsChangeProtection' but returns the raw 'Data.ByteString.Char8.ByteString'.
postServers_Id_ActionsChangeProtectionRaw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsChangeProtectionRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsChangeProtectionRaw id
                                          body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_protection"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /servers/{id}/actions/change_protection
-- 
-- The same as 'postServers_Id_ActionsChangeProtection' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postServers_Id_ActionsChangeProtectionWithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsChangeProtectionRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsChangeProtectionWithConfigurationRaw config
                                                           id
                                                           body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_protection"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
