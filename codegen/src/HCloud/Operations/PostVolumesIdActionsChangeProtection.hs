-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postVolumes_Id_ActionsChangeProtection
module HCloud.Operations.PostVolumesIdActionsChangeProtection where

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

-- | > POST /volumes/{id}/actions/change_protection
-- 
-- Changes the protection configuration of a Volume.
postVolumes_Id_ActionsChangeProtection :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Volume
  -> GHC.Maybe.Maybe PostVolumesIdActionsChangeProtectionRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response PostVolumesIdActionsChangeProtectionResponse) -- ^ Monadic computation which returns the result of the operation
postVolumes_Id_ActionsChangeProtection id
                                       body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostVolumesIdActionsChangeProtectionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostVolumesIdActionsChangeProtectionResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 PostVolumesIdActionsChangeProtectionResponseBody201)
                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_protection"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/volumes\/{id}\/actions\/change_protection.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostVolumesIdActionsChangeProtectionRequestBody = PostVolumesIdActionsChangeProtectionRequestBody {
  -- | delete: If true, prevents the Volume from being deleted
  postVolumesIdActionsChangeProtectionRequestBodyDelete :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostVolumesIdActionsChangeProtectionRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("delete" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionRequestBodyDelete obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("delete" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionRequestBodyDelete obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsChangeProtectionRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostVolumesIdActionsChangeProtectionRequestBody" (\obj -> GHC.Base.pure PostVolumesIdActionsChangeProtectionRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "delete"))
-- | Create a new 'PostVolumesIdActionsChangeProtectionRequestBody' with all required fields.
mkPostVolumesIdActionsChangeProtectionRequestBody :: PostVolumesIdActionsChangeProtectionRequestBody
mkPostVolumesIdActionsChangeProtectionRequestBody = PostVolumesIdActionsChangeProtectionRequestBody{postVolumesIdActionsChangeProtectionRequestBodyDelete = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postVolumes_Id_ActionsChangeProtection'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostVolumesIdActionsChangeProtectionResponseError' is used.
data PostVolumesIdActionsChangeProtectionResponse =
   PostVolumesIdActionsChangeProtectionResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostVolumesIdActionsChangeProtectionResponse201 PostVolumesIdActionsChangeProtectionResponseBody201 -- ^ The \`action\` key contains the \`change_protection\` Action
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/volumes\/{id}\/actions\/change_protection.POST.responses.201.content.application\/json.schema@ in the specification.
-- 
-- 
data PostVolumesIdActionsChangeProtectionResponseBody201 = PostVolumesIdActionsChangeProtectionResponseBody201 {
  -- | action
  postVolumesIdActionsChangeProtectionResponseBody201Action :: PostVolumesIdActionsChangeProtectionResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostVolumesIdActionsChangeProtectionResponseBody201
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsChangeProtectionResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostVolumesIdActionsChangeProtectionResponseBody201" (\obj -> GHC.Base.pure PostVolumesIdActionsChangeProtectionResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'PostVolumesIdActionsChangeProtectionResponseBody201' with all required fields.
mkPostVolumesIdActionsChangeProtectionResponseBody201 :: PostVolumesIdActionsChangeProtectionResponseBody201Action -- ^ 'postVolumesIdActionsChangeProtectionResponseBody201Action'
  -> PostVolumesIdActionsChangeProtectionResponseBody201
mkPostVolumesIdActionsChangeProtectionResponseBody201 postVolumesIdActionsChangeProtectionResponseBody201Action = PostVolumesIdActionsChangeProtectionResponseBody201{postVolumesIdActionsChangeProtectionResponseBody201Action = postVolumesIdActionsChangeProtectionResponseBody201Action}
-- | Defines the object schema located at @paths.\/volumes\/{id}\/actions\/change_protection.POST.responses.201.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data PostVolumesIdActionsChangeProtectionResponseBody201Action = PostVolumesIdActionsChangeProtectionResponseBody201Action {
  -- | command: Command executed in the Action
  postVolumesIdActionsChangeProtectionResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postVolumesIdActionsChangeProtectionResponseBody201ActionError :: (GHC.Maybe.Maybe PostVolumesIdActionsChangeProtectionResponseBody201ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postVolumesIdActionsChangeProtectionResponseBody201ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , postVolumesIdActionsChangeProtectionResponseBody201ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , postVolumesIdActionsChangeProtectionResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postVolumesIdActionsChangeProtectionResponseBody201ActionResources :: ([PostVolumesIdActionsChangeProtectionResponseBody201ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postVolumesIdActionsChangeProtectionResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postVolumesIdActionsChangeProtectionResponseBody201ActionStatus :: PostVolumesIdActionsChangeProtectionResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostVolumesIdActionsChangeProtectionResponseBody201Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionError obj : "finished" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionId obj : "progress" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionResources obj : "started" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsChangeProtectionResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostVolumesIdActionsChangeProtectionResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostVolumesIdActionsChangeProtectionResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'PostVolumesIdActionsChangeProtectionResponseBody201Action' with all required fields.
mkPostVolumesIdActionsChangeProtectionResponseBody201Action :: Data.Text.Internal.Text -- ^ 'postVolumesIdActionsChangeProtectionResponseBody201ActionCommand'
  -> GHC.Maybe.Maybe PostVolumesIdActionsChangeProtectionResponseBody201ActionError -- ^ 'postVolumesIdActionsChangeProtectionResponseBody201ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postVolumesIdActionsChangeProtectionResponseBody201ActionFinished'
  -> GHC.Types.Int -- ^ 'postVolumesIdActionsChangeProtectionResponseBody201ActionId'
  -> GHC.Types.Double -- ^ 'postVolumesIdActionsChangeProtectionResponseBody201ActionProgress'
  -> [PostVolumesIdActionsChangeProtectionResponseBody201ActionResources] -- ^ 'postVolumesIdActionsChangeProtectionResponseBody201ActionResources'
  -> Data.Text.Internal.Text -- ^ 'postVolumesIdActionsChangeProtectionResponseBody201ActionStarted'
  -> PostVolumesIdActionsChangeProtectionResponseBody201ActionStatus -- ^ 'postVolumesIdActionsChangeProtectionResponseBody201ActionStatus'
  -> PostVolumesIdActionsChangeProtectionResponseBody201Action
mkPostVolumesIdActionsChangeProtectionResponseBody201Action postVolumesIdActionsChangeProtectionResponseBody201ActionCommand postVolumesIdActionsChangeProtectionResponseBody201ActionError postVolumesIdActionsChangeProtectionResponseBody201ActionFinished postVolumesIdActionsChangeProtectionResponseBody201ActionId postVolumesIdActionsChangeProtectionResponseBody201ActionProgress postVolumesIdActionsChangeProtectionResponseBody201ActionResources postVolumesIdActionsChangeProtectionResponseBody201ActionStarted postVolumesIdActionsChangeProtectionResponseBody201ActionStatus = PostVolumesIdActionsChangeProtectionResponseBody201Action{postVolumesIdActionsChangeProtectionResponseBody201ActionCommand = postVolumesIdActionsChangeProtectionResponseBody201ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postVolumesIdActionsChangeProtectionResponseBody201ActionError = postVolumesIdActionsChangeProtectionResponseBody201ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postVolumesIdActionsChangeProtectionResponseBody201ActionFinished = postVolumesIdActionsChangeProtectionResponseBody201ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postVolumesIdActionsChangeProtectionResponseBody201ActionId = postVolumesIdActionsChangeProtectionResponseBody201ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postVolumesIdActionsChangeProtectionResponseBody201ActionProgress = postVolumesIdActionsChangeProtectionResponseBody201ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postVolumesIdActionsChangeProtectionResponseBody201ActionResources = postVolumesIdActionsChangeProtectionResponseBody201ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postVolumesIdActionsChangeProtectionResponseBody201ActionStarted = postVolumesIdActionsChangeProtectionResponseBody201ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postVolumesIdActionsChangeProtectionResponseBody201ActionStatus = postVolumesIdActionsChangeProtectionResponseBody201ActionStatus}
-- | Defines the object schema located at @paths.\/volumes\/{id}\/actions\/change_protection.POST.responses.201.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data PostVolumesIdActionsChangeProtectionResponseBody201ActionError = PostVolumesIdActionsChangeProtectionResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postVolumesIdActionsChangeProtectionResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postVolumesIdActionsChangeProtectionResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostVolumesIdActionsChangeProtectionResponseBody201ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsChangeProtectionResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostVolumesIdActionsChangeProtectionResponseBody201ActionError" (\obj -> (GHC.Base.pure PostVolumesIdActionsChangeProtectionResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'PostVolumesIdActionsChangeProtectionResponseBody201ActionError' with all required fields.
mkPostVolumesIdActionsChangeProtectionResponseBody201ActionError :: Data.Text.Internal.Text -- ^ 'postVolumesIdActionsChangeProtectionResponseBody201ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'postVolumesIdActionsChangeProtectionResponseBody201ActionErrorMessage'
  -> PostVolumesIdActionsChangeProtectionResponseBody201ActionError
mkPostVolumesIdActionsChangeProtectionResponseBody201ActionError postVolumesIdActionsChangeProtectionResponseBody201ActionErrorCode postVolumesIdActionsChangeProtectionResponseBody201ActionErrorMessage = PostVolumesIdActionsChangeProtectionResponseBody201ActionError{postVolumesIdActionsChangeProtectionResponseBody201ActionErrorCode = postVolumesIdActionsChangeProtectionResponseBody201ActionErrorCode,
                                                                                                                                                                                                                                                                           postVolumesIdActionsChangeProtectionResponseBody201ActionErrorMessage = postVolumesIdActionsChangeProtectionResponseBody201ActionErrorMessage}
-- | Defines the object schema located at @paths.\/volumes\/{id}\/actions\/change_protection.POST.responses.201.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data PostVolumesIdActionsChangeProtectionResponseBody201ActionResources = PostVolumesIdActionsChangeProtectionResponseBody201ActionResources {
  -- | id: ID of the Resource
  postVolumesIdActionsChangeProtectionResponseBody201ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , postVolumesIdActionsChangeProtectionResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostVolumesIdActionsChangeProtectionResponseBody201ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postVolumesIdActionsChangeProtectionResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsChangeProtectionResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostVolumesIdActionsChangeProtectionResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostVolumesIdActionsChangeProtectionResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PostVolumesIdActionsChangeProtectionResponseBody201ActionResources' with all required fields.
mkPostVolumesIdActionsChangeProtectionResponseBody201ActionResources :: GHC.Types.Int -- ^ 'postVolumesIdActionsChangeProtectionResponseBody201ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'postVolumesIdActionsChangeProtectionResponseBody201ActionResourcesType'
  -> PostVolumesIdActionsChangeProtectionResponseBody201ActionResources
mkPostVolumesIdActionsChangeProtectionResponseBody201ActionResources postVolumesIdActionsChangeProtectionResponseBody201ActionResourcesId postVolumesIdActionsChangeProtectionResponseBody201ActionResourcesType = PostVolumesIdActionsChangeProtectionResponseBody201ActionResources{postVolumesIdActionsChangeProtectionResponseBody201ActionResourcesId = postVolumesIdActionsChangeProtectionResponseBody201ActionResourcesId,
                                                                                                                                                                                                                                                                                      postVolumesIdActionsChangeProtectionResponseBody201ActionResourcesType = postVolumesIdActionsChangeProtectionResponseBody201ActionResourcesType}
-- | Defines the enum schema located at @paths.\/volumes\/{id}\/actions\/change_protection.POST.responses.201.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data PostVolumesIdActionsChangeProtectionResponseBody201ActionStatus =
   PostVolumesIdActionsChangeProtectionResponseBody201ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostVolumesIdActionsChangeProtectionResponseBody201ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostVolumesIdActionsChangeProtectionResponseBody201ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | PostVolumesIdActionsChangeProtectionResponseBody201ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | PostVolumesIdActionsChangeProtectionResponseBody201ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostVolumesIdActionsChangeProtectionResponseBody201ActionStatus
    where toJSON (PostVolumesIdActionsChangeProtectionResponseBody201ActionStatusOther val) = val
          toJSON (PostVolumesIdActionsChangeProtectionResponseBody201ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostVolumesIdActionsChangeProtectionResponseBody201ActionStatusEnumSuccess) = "success"
          toJSON (PostVolumesIdActionsChangeProtectionResponseBody201ActionStatusEnumRunning) = "running"
          toJSON (PostVolumesIdActionsChangeProtectionResponseBody201ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsChangeProtectionResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> PostVolumesIdActionsChangeProtectionResponseBody201ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> PostVolumesIdActionsChangeProtectionResponseBody201ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> PostVolumesIdActionsChangeProtectionResponseBody201ActionStatusEnumError
                                            | GHC.Base.otherwise -> PostVolumesIdActionsChangeProtectionResponseBody201ActionStatusOther val)
-- | > POST /volumes/{id}/actions/change_protection
-- 
-- The same as 'postVolumes_Id_ActionsChangeProtection' but accepts an explicit configuration.
postVolumes_Id_ActionsChangeProtectionWithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Volume
  -> GHC.Maybe.Maybe PostVolumesIdActionsChangeProtectionRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostVolumesIdActionsChangeProtectionResponse) -- ^ Monadic computation which returns the result of the operation
postVolumes_Id_ActionsChangeProtectionWithConfiguration config
                                                        id
                                                        body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostVolumesIdActionsChangeProtectionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostVolumesIdActionsChangeProtectionResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  PostVolumesIdActionsChangeProtectionResponseBody201)
                                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_protection"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /volumes/{id}/actions/change_protection
-- 
-- The same as 'postVolumes_Id_ActionsChangeProtection' but returns the raw 'Data.ByteString.Char8.ByteString'.
postVolumes_Id_ActionsChangeProtectionRaw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Volume
  -> GHC.Maybe.Maybe PostVolumesIdActionsChangeProtectionRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postVolumes_Id_ActionsChangeProtectionRaw id
                                          body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_protection"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /volumes/{id}/actions/change_protection
-- 
-- The same as 'postVolumes_Id_ActionsChangeProtection' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postVolumes_Id_ActionsChangeProtectionWithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Volume
  -> GHC.Maybe.Maybe PostVolumesIdActionsChangeProtectionRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postVolumes_Id_ActionsChangeProtectionWithConfigurationRaw config
                                                           id
                                                           body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_protection"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
