-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postVolumes_Id_ActionsResize
module HCloud.Operations.PostVolumesIdActionsResize where

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

-- | > POST /volumes/{id}/actions/resize
-- 
-- Changes the size of a Volume. Note that downsizing a Volume is not possible.
postVolumes_Id_ActionsResize :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Volume
  -> GHC.Maybe.Maybe PostVolumesIdActionsResizeRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response PostVolumesIdActionsResizeResponse) -- ^ Monadic computation which returns the result of the operation
postVolumes_Id_ActionsResize id
                             body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostVolumesIdActionsResizeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostVolumesIdActionsResizeResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                   PostVolumesIdActionsResizeResponseBody201)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/resize"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/volumes\/{id}\/actions\/resize.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostVolumesIdActionsResizeRequestBody = PostVolumesIdActionsResizeRequestBody {
  -- | size: New Volume size in GB (must be greater than current size)
  postVolumesIdActionsResizeRequestBodySize :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostVolumesIdActionsResizeRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("size" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeRequestBodySize obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("size" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeRequestBodySize obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsResizeRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostVolumesIdActionsResizeRequestBody" (\obj -> GHC.Base.pure PostVolumesIdActionsResizeRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "size"))
-- | Create a new 'PostVolumesIdActionsResizeRequestBody' with all required fields.
mkPostVolumesIdActionsResizeRequestBody :: GHC.Types.Double -- ^ 'postVolumesIdActionsResizeRequestBodySize'
  -> PostVolumesIdActionsResizeRequestBody
mkPostVolumesIdActionsResizeRequestBody postVolumesIdActionsResizeRequestBodySize = PostVolumesIdActionsResizeRequestBody{postVolumesIdActionsResizeRequestBodySize = postVolumesIdActionsResizeRequestBodySize}
-- | Represents a response of the operation 'postVolumes_Id_ActionsResize'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostVolumesIdActionsResizeResponseError' is used.
data PostVolumesIdActionsResizeResponse =
   PostVolumesIdActionsResizeResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostVolumesIdActionsResizeResponse201 PostVolumesIdActionsResizeResponseBody201 -- ^ The \`action\` key contains the \`resize_volume\` Action
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/volumes\/{id}\/actions\/resize.POST.responses.201.content.application\/json.schema@ in the specification.
-- 
-- 
data PostVolumesIdActionsResizeResponseBody201 = PostVolumesIdActionsResizeResponseBody201 {
  -- | action
  postVolumesIdActionsResizeResponseBody201Action :: PostVolumesIdActionsResizeResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostVolumesIdActionsResizeResponseBody201
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsResizeResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostVolumesIdActionsResizeResponseBody201" (\obj -> GHC.Base.pure PostVolumesIdActionsResizeResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'PostVolumesIdActionsResizeResponseBody201' with all required fields.
mkPostVolumesIdActionsResizeResponseBody201 :: PostVolumesIdActionsResizeResponseBody201Action -- ^ 'postVolumesIdActionsResizeResponseBody201Action'
  -> PostVolumesIdActionsResizeResponseBody201
mkPostVolumesIdActionsResizeResponseBody201 postVolumesIdActionsResizeResponseBody201Action = PostVolumesIdActionsResizeResponseBody201{postVolumesIdActionsResizeResponseBody201Action = postVolumesIdActionsResizeResponseBody201Action}
-- | Defines the object schema located at @paths.\/volumes\/{id}\/actions\/resize.POST.responses.201.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data PostVolumesIdActionsResizeResponseBody201Action = PostVolumesIdActionsResizeResponseBody201Action {
  -- | command: Command executed in the Action
  postVolumesIdActionsResizeResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postVolumesIdActionsResizeResponseBody201ActionError :: (GHC.Maybe.Maybe PostVolumesIdActionsResizeResponseBody201ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postVolumesIdActionsResizeResponseBody201ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , postVolumesIdActionsResizeResponseBody201ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , postVolumesIdActionsResizeResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postVolumesIdActionsResizeResponseBody201ActionResources :: ([PostVolumesIdActionsResizeResponseBody201ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postVolumesIdActionsResizeResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postVolumesIdActionsResizeResponseBody201ActionStatus :: PostVolumesIdActionsResizeResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostVolumesIdActionsResizeResponseBody201Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionError obj : "finished" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionId obj : "progress" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionResources obj : "started" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsResizeResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostVolumesIdActionsResizeResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostVolumesIdActionsResizeResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'PostVolumesIdActionsResizeResponseBody201Action' with all required fields.
mkPostVolumesIdActionsResizeResponseBody201Action :: Data.Text.Internal.Text -- ^ 'postVolumesIdActionsResizeResponseBody201ActionCommand'
  -> GHC.Maybe.Maybe PostVolumesIdActionsResizeResponseBody201ActionError -- ^ 'postVolumesIdActionsResizeResponseBody201ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postVolumesIdActionsResizeResponseBody201ActionFinished'
  -> GHC.Types.Int -- ^ 'postVolumesIdActionsResizeResponseBody201ActionId'
  -> GHC.Types.Double -- ^ 'postVolumesIdActionsResizeResponseBody201ActionProgress'
  -> [PostVolumesIdActionsResizeResponseBody201ActionResources] -- ^ 'postVolumesIdActionsResizeResponseBody201ActionResources'
  -> Data.Text.Internal.Text -- ^ 'postVolumesIdActionsResizeResponseBody201ActionStarted'
  -> PostVolumesIdActionsResizeResponseBody201ActionStatus -- ^ 'postVolumesIdActionsResizeResponseBody201ActionStatus'
  -> PostVolumesIdActionsResizeResponseBody201Action
mkPostVolumesIdActionsResizeResponseBody201Action postVolumesIdActionsResizeResponseBody201ActionCommand postVolumesIdActionsResizeResponseBody201ActionError postVolumesIdActionsResizeResponseBody201ActionFinished postVolumesIdActionsResizeResponseBody201ActionId postVolumesIdActionsResizeResponseBody201ActionProgress postVolumesIdActionsResizeResponseBody201ActionResources postVolumesIdActionsResizeResponseBody201ActionStarted postVolumesIdActionsResizeResponseBody201ActionStatus = PostVolumesIdActionsResizeResponseBody201Action{postVolumesIdActionsResizeResponseBody201ActionCommand = postVolumesIdActionsResizeResponseBody201ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postVolumesIdActionsResizeResponseBody201ActionError = postVolumesIdActionsResizeResponseBody201ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postVolumesIdActionsResizeResponseBody201ActionFinished = postVolumesIdActionsResizeResponseBody201ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postVolumesIdActionsResizeResponseBody201ActionId = postVolumesIdActionsResizeResponseBody201ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postVolumesIdActionsResizeResponseBody201ActionProgress = postVolumesIdActionsResizeResponseBody201ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postVolumesIdActionsResizeResponseBody201ActionResources = postVolumesIdActionsResizeResponseBody201ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postVolumesIdActionsResizeResponseBody201ActionStarted = postVolumesIdActionsResizeResponseBody201ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postVolumesIdActionsResizeResponseBody201ActionStatus = postVolumesIdActionsResizeResponseBody201ActionStatus}
-- | Defines the object schema located at @paths.\/volumes\/{id}\/actions\/resize.POST.responses.201.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data PostVolumesIdActionsResizeResponseBody201ActionError = PostVolumesIdActionsResizeResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postVolumesIdActionsResizeResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postVolumesIdActionsResizeResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostVolumesIdActionsResizeResponseBody201ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsResizeResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostVolumesIdActionsResizeResponseBody201ActionError" (\obj -> (GHC.Base.pure PostVolumesIdActionsResizeResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'PostVolumesIdActionsResizeResponseBody201ActionError' with all required fields.
mkPostVolumesIdActionsResizeResponseBody201ActionError :: Data.Text.Internal.Text -- ^ 'postVolumesIdActionsResizeResponseBody201ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'postVolumesIdActionsResizeResponseBody201ActionErrorMessage'
  -> PostVolumesIdActionsResizeResponseBody201ActionError
mkPostVolumesIdActionsResizeResponseBody201ActionError postVolumesIdActionsResizeResponseBody201ActionErrorCode postVolumesIdActionsResizeResponseBody201ActionErrorMessage = PostVolumesIdActionsResizeResponseBody201ActionError{postVolumesIdActionsResizeResponseBody201ActionErrorCode = postVolumesIdActionsResizeResponseBody201ActionErrorCode,
                                                                                                                                                                                                                                   postVolumesIdActionsResizeResponseBody201ActionErrorMessage = postVolumesIdActionsResizeResponseBody201ActionErrorMessage}
-- | Defines the object schema located at @paths.\/volumes\/{id}\/actions\/resize.POST.responses.201.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data PostVolumesIdActionsResizeResponseBody201ActionResources = PostVolumesIdActionsResizeResponseBody201ActionResources {
  -- | id: ID of the Resource
  postVolumesIdActionsResizeResponseBody201ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , postVolumesIdActionsResizeResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostVolumesIdActionsResizeResponseBody201ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postVolumesIdActionsResizeResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsResizeResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostVolumesIdActionsResizeResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostVolumesIdActionsResizeResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PostVolumesIdActionsResizeResponseBody201ActionResources' with all required fields.
mkPostVolumesIdActionsResizeResponseBody201ActionResources :: GHC.Types.Int -- ^ 'postVolumesIdActionsResizeResponseBody201ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'postVolumesIdActionsResizeResponseBody201ActionResourcesType'
  -> PostVolumesIdActionsResizeResponseBody201ActionResources
mkPostVolumesIdActionsResizeResponseBody201ActionResources postVolumesIdActionsResizeResponseBody201ActionResourcesId postVolumesIdActionsResizeResponseBody201ActionResourcesType = PostVolumesIdActionsResizeResponseBody201ActionResources{postVolumesIdActionsResizeResponseBody201ActionResourcesId = postVolumesIdActionsResizeResponseBody201ActionResourcesId,
                                                                                                                                                                                                                                              postVolumesIdActionsResizeResponseBody201ActionResourcesType = postVolumesIdActionsResizeResponseBody201ActionResourcesType}
-- | Defines the enum schema located at @paths.\/volumes\/{id}\/actions\/resize.POST.responses.201.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data PostVolumesIdActionsResizeResponseBody201ActionStatus =
   PostVolumesIdActionsResizeResponseBody201ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostVolumesIdActionsResizeResponseBody201ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostVolumesIdActionsResizeResponseBody201ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | PostVolumesIdActionsResizeResponseBody201ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | PostVolumesIdActionsResizeResponseBody201ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostVolumesIdActionsResizeResponseBody201ActionStatus
    where toJSON (PostVolumesIdActionsResizeResponseBody201ActionStatusOther val) = val
          toJSON (PostVolumesIdActionsResizeResponseBody201ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostVolumesIdActionsResizeResponseBody201ActionStatusEnumSuccess) = "success"
          toJSON (PostVolumesIdActionsResizeResponseBody201ActionStatusEnumRunning) = "running"
          toJSON (PostVolumesIdActionsResizeResponseBody201ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsResizeResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> PostVolumesIdActionsResizeResponseBody201ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> PostVolumesIdActionsResizeResponseBody201ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> PostVolumesIdActionsResizeResponseBody201ActionStatusEnumError
                                            | GHC.Base.otherwise -> PostVolumesIdActionsResizeResponseBody201ActionStatusOther val)
-- | > POST /volumes/{id}/actions/resize
-- 
-- The same as 'postVolumes_Id_ActionsResize' but accepts an explicit configuration.
postVolumes_Id_ActionsResizeWithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Volume
  -> GHC.Maybe.Maybe PostVolumesIdActionsResizeRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostVolumesIdActionsResizeResponse) -- ^ Monadic computation which returns the result of the operation
postVolumes_Id_ActionsResizeWithConfiguration config
                                              id
                                              body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostVolumesIdActionsResizeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostVolumesIdActionsResizeResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    PostVolumesIdActionsResizeResponseBody201)
                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/resize"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /volumes/{id}/actions/resize
-- 
-- The same as 'postVolumes_Id_ActionsResize' but returns the raw 'Data.ByteString.Char8.ByteString'.
postVolumes_Id_ActionsResizeRaw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Volume
  -> GHC.Maybe.Maybe PostVolumesIdActionsResizeRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postVolumes_Id_ActionsResizeRaw id
                                body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/resize"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /volumes/{id}/actions/resize
-- 
-- The same as 'postVolumes_Id_ActionsResize' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postVolumes_Id_ActionsResizeWithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Volume
  -> GHC.Maybe.Maybe PostVolumesIdActionsResizeRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postVolumes_Id_ActionsResizeWithConfigurationRaw config
                                                 id
                                                 body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/resize"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
