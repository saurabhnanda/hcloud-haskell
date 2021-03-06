-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postLoadBalancers_Id_ActionsDeleteService
module HCloud.Operations.PostLoadBalancersIdActionsDeleteService where

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

-- | > POST /load_balancers/{id}/actions/delete_service
-- 
-- Delete a service of a Load Balancer.
postLoadBalancers_Id_ActionsDeleteService :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Load Balancer
  -> GHC.Maybe.Maybe PostLoadBalancersIdActionsDeleteServiceRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response PostLoadBalancersIdActionsDeleteServiceResponse) -- ^ Monadic computation which returns the result of the operation
postLoadBalancers_Id_ActionsDeleteService id
                                          body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostLoadBalancersIdActionsDeleteServiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostLoadBalancersIdActionsDeleteServiceResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          PostLoadBalancersIdActionsDeleteServiceResponseBody201)
                                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/load_balancers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/delete_service"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/load_balancers\/{id}\/actions\/delete_service.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostLoadBalancersIdActionsDeleteServiceRequestBody = PostLoadBalancersIdActionsDeleteServiceRequestBody {
  -- | listen_port: The listen port of the service you want to delete
  postLoadBalancersIdActionsDeleteServiceRequestBodyListenPort :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostLoadBalancersIdActionsDeleteServiceRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("listen_port" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceRequestBodyListenPort obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("listen_port" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceRequestBodyListenPort obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsDeleteServiceRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLoadBalancersIdActionsDeleteServiceRequestBody" (\obj -> GHC.Base.pure PostLoadBalancersIdActionsDeleteServiceRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "listen_port"))
-- | Create a new 'PostLoadBalancersIdActionsDeleteServiceRequestBody' with all required fields.
mkPostLoadBalancersIdActionsDeleteServiceRequestBody :: GHC.Types.Double -- ^ 'postLoadBalancersIdActionsDeleteServiceRequestBodyListenPort'
  -> PostLoadBalancersIdActionsDeleteServiceRequestBody
mkPostLoadBalancersIdActionsDeleteServiceRequestBody postLoadBalancersIdActionsDeleteServiceRequestBodyListenPort = PostLoadBalancersIdActionsDeleteServiceRequestBody{postLoadBalancersIdActionsDeleteServiceRequestBodyListenPort = postLoadBalancersIdActionsDeleteServiceRequestBodyListenPort}
-- | Represents a response of the operation 'postLoadBalancers_Id_ActionsDeleteService'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostLoadBalancersIdActionsDeleteServiceResponseError' is used.
data PostLoadBalancersIdActionsDeleteServiceResponse =
   PostLoadBalancersIdActionsDeleteServiceResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostLoadBalancersIdActionsDeleteServiceResponse201 PostLoadBalancersIdActionsDeleteServiceResponseBody201 -- ^ The \`action\` key contains the \`delete_service\` Action
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/load_balancers\/{id}\/actions\/delete_service.POST.responses.201.content.application\/json.schema@ in the specification.
-- 
-- 
data PostLoadBalancersIdActionsDeleteServiceResponseBody201 = PostLoadBalancersIdActionsDeleteServiceResponseBody201 {
  -- | action
  postLoadBalancersIdActionsDeleteServiceResponseBody201Action :: PostLoadBalancersIdActionsDeleteServiceResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostLoadBalancersIdActionsDeleteServiceResponseBody201
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsDeleteServiceResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLoadBalancersIdActionsDeleteServiceResponseBody201" (\obj -> GHC.Base.pure PostLoadBalancersIdActionsDeleteServiceResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'PostLoadBalancersIdActionsDeleteServiceResponseBody201' with all required fields.
mkPostLoadBalancersIdActionsDeleteServiceResponseBody201 :: PostLoadBalancersIdActionsDeleteServiceResponseBody201Action -- ^ 'postLoadBalancersIdActionsDeleteServiceResponseBody201Action'
  -> PostLoadBalancersIdActionsDeleteServiceResponseBody201
mkPostLoadBalancersIdActionsDeleteServiceResponseBody201 postLoadBalancersIdActionsDeleteServiceResponseBody201Action = PostLoadBalancersIdActionsDeleteServiceResponseBody201{postLoadBalancersIdActionsDeleteServiceResponseBody201Action = postLoadBalancersIdActionsDeleteServiceResponseBody201Action}
-- | Defines the object schema located at @paths.\/load_balancers\/{id}\/actions\/delete_service.POST.responses.201.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data PostLoadBalancersIdActionsDeleteServiceResponseBody201Action = PostLoadBalancersIdActionsDeleteServiceResponseBody201Action {
  -- | command: Command executed in the Action
  postLoadBalancersIdActionsDeleteServiceResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postLoadBalancersIdActionsDeleteServiceResponseBody201ActionError :: (GHC.Maybe.Maybe PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postLoadBalancersIdActionsDeleteServiceResponseBody201ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , postLoadBalancersIdActionsDeleteServiceResponseBody201ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , postLoadBalancersIdActionsDeleteServiceResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources :: ([PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postLoadBalancersIdActionsDeleteServiceResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatus :: PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostLoadBalancersIdActionsDeleteServiceResponseBody201Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionError obj : "finished" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionId obj : "progress" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources obj : "started" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsDeleteServiceResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLoadBalancersIdActionsDeleteServiceResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostLoadBalancersIdActionsDeleteServiceResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'PostLoadBalancersIdActionsDeleteServiceResponseBody201Action' with all required fields.
mkPostLoadBalancersIdActionsDeleteServiceResponseBody201Action :: Data.Text.Internal.Text -- ^ 'postLoadBalancersIdActionsDeleteServiceResponseBody201ActionCommand'
  -> GHC.Maybe.Maybe PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionError -- ^ 'postLoadBalancersIdActionsDeleteServiceResponseBody201ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postLoadBalancersIdActionsDeleteServiceResponseBody201ActionFinished'
  -> GHC.Types.Int -- ^ 'postLoadBalancersIdActionsDeleteServiceResponseBody201ActionId'
  -> GHC.Types.Double -- ^ 'postLoadBalancersIdActionsDeleteServiceResponseBody201ActionProgress'
  -> [PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources] -- ^ 'postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources'
  -> Data.Text.Internal.Text -- ^ 'postLoadBalancersIdActionsDeleteServiceResponseBody201ActionStarted'
  -> PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatus -- ^ 'postLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatus'
  -> PostLoadBalancersIdActionsDeleteServiceResponseBody201Action
mkPostLoadBalancersIdActionsDeleteServiceResponseBody201Action postLoadBalancersIdActionsDeleteServiceResponseBody201ActionCommand postLoadBalancersIdActionsDeleteServiceResponseBody201ActionError postLoadBalancersIdActionsDeleteServiceResponseBody201ActionFinished postLoadBalancersIdActionsDeleteServiceResponseBody201ActionId postLoadBalancersIdActionsDeleteServiceResponseBody201ActionProgress postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources postLoadBalancersIdActionsDeleteServiceResponseBody201ActionStarted postLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatus = PostLoadBalancersIdActionsDeleteServiceResponseBody201Action{postLoadBalancersIdActionsDeleteServiceResponseBody201ActionCommand = postLoadBalancersIdActionsDeleteServiceResponseBody201ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          postLoadBalancersIdActionsDeleteServiceResponseBody201ActionError = postLoadBalancersIdActionsDeleteServiceResponseBody201ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          postLoadBalancersIdActionsDeleteServiceResponseBody201ActionFinished = postLoadBalancersIdActionsDeleteServiceResponseBody201ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          postLoadBalancersIdActionsDeleteServiceResponseBody201ActionId = postLoadBalancersIdActionsDeleteServiceResponseBody201ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          postLoadBalancersIdActionsDeleteServiceResponseBody201ActionProgress = postLoadBalancersIdActionsDeleteServiceResponseBody201ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources = postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          postLoadBalancersIdActionsDeleteServiceResponseBody201ActionStarted = postLoadBalancersIdActionsDeleteServiceResponseBody201ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          postLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatus = postLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatus}
-- | Defines the object schema located at @paths.\/load_balancers\/{id}\/actions\/delete_service.POST.responses.201.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionError = PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postLoadBalancersIdActionsDeleteServiceResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postLoadBalancersIdActionsDeleteServiceResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionError" (\obj -> (GHC.Base.pure PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionError' with all required fields.
mkPostLoadBalancersIdActionsDeleteServiceResponseBody201ActionError :: Data.Text.Internal.Text -- ^ 'postLoadBalancersIdActionsDeleteServiceResponseBody201ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'postLoadBalancersIdActionsDeleteServiceResponseBody201ActionErrorMessage'
  -> PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionError
mkPostLoadBalancersIdActionsDeleteServiceResponseBody201ActionError postLoadBalancersIdActionsDeleteServiceResponseBody201ActionErrorCode postLoadBalancersIdActionsDeleteServiceResponseBody201ActionErrorMessage = PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionError{postLoadBalancersIdActionsDeleteServiceResponseBody201ActionErrorCode = postLoadBalancersIdActionsDeleteServiceResponseBody201ActionErrorCode,
                                                                                                                                                                                                                                                                                       postLoadBalancersIdActionsDeleteServiceResponseBody201ActionErrorMessage = postLoadBalancersIdActionsDeleteServiceResponseBody201ActionErrorMessage}
-- | Defines the object schema located at @paths.\/load_balancers\/{id}\/actions\/delete_service.POST.responses.201.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources = PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources {
  -- | id: ID of the Resource
  postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources' with all required fields.
mkPostLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources :: GHC.Types.Int -- ^ 'postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResourcesType'
  -> PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources
mkPostLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResourcesId postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResourcesType = PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionResources{postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResourcesId = postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResourcesId,
                                                                                                                                                                                                                                                                                                  postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResourcesType = postLoadBalancersIdActionsDeleteServiceResponseBody201ActionResourcesType}
-- | Defines the enum schema located at @paths.\/load_balancers\/{id}\/actions\/delete_service.POST.responses.201.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatus =
   PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatus
    where toJSON (PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatusOther val) = val
          toJSON (PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatusEnumSuccess) = "success"
          toJSON (PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatusEnumRunning) = "running"
          toJSON (PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatusEnumError
                                            | GHC.Base.otherwise -> PostLoadBalancersIdActionsDeleteServiceResponseBody201ActionStatusOther val)
-- | > POST /load_balancers/{id}/actions/delete_service
-- 
-- The same as 'postLoadBalancers_Id_ActionsDeleteService' but accepts an explicit configuration.
postLoadBalancers_Id_ActionsDeleteServiceWithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Load Balancer
  -> GHC.Maybe.Maybe PostLoadBalancersIdActionsDeleteServiceRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostLoadBalancersIdActionsDeleteServiceResponse) -- ^ Monadic computation which returns the result of the operation
postLoadBalancers_Id_ActionsDeleteServiceWithConfiguration config
                                                           id
                                                           body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostLoadBalancersIdActionsDeleteServiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostLoadBalancersIdActionsDeleteServiceResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           PostLoadBalancersIdActionsDeleteServiceResponseBody201)
                                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/load_balancers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/delete_service"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /load_balancers/{id}/actions/delete_service
-- 
-- The same as 'postLoadBalancers_Id_ActionsDeleteService' but returns the raw 'Data.ByteString.Char8.ByteString'.
postLoadBalancers_Id_ActionsDeleteServiceRaw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Load Balancer
  -> GHC.Maybe.Maybe PostLoadBalancersIdActionsDeleteServiceRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postLoadBalancers_Id_ActionsDeleteServiceRaw id
                                             body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/load_balancers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/delete_service"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /load_balancers/{id}/actions/delete_service
-- 
-- The same as 'postLoadBalancers_Id_ActionsDeleteService' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postLoadBalancers_Id_ActionsDeleteServiceWithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Load Balancer
  -> GHC.Maybe.Maybe PostLoadBalancersIdActionsDeleteServiceRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postLoadBalancers_Id_ActionsDeleteServiceWithConfigurationRaw config
                                                              id
                                                              body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/load_balancers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/delete_service"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
