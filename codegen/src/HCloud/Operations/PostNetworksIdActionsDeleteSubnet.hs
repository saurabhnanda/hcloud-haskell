-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postNetworks_Id_ActionsDeleteSubnet
module HCloud.Operations.PostNetworksIdActionsDeleteSubnet where

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

-- | > POST /networks/{id}/actions/delete_subnet
-- 
-- Deletes a single subnet entry from a Network. You cannot delete subnets which still have Servers attached. If you have Servers attached you first need to detach all Servers that use IPs from this subnet before you can delete the subnet.
-- 
-- Note: if the Network object changes during the request, the response will be a ???conflict??? error.
postNetworks_Id_ActionsDeleteSubnet :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Network
  -> GHC.Maybe.Maybe PostNetworksIdActionsDeleteSubnetRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response PostNetworksIdActionsDeleteSubnetResponse) -- ^ Monadic computation which returns the result of the operation
postNetworks_Id_ActionsDeleteSubnet id
                                    body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostNetworksIdActionsDeleteSubnetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostNetworksIdActionsDeleteSubnetResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        PostNetworksIdActionsDeleteSubnetResponseBody201)
                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/delete_subnet"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/networks\/{id}\/actions\/delete_subnet.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostNetworksIdActionsDeleteSubnetRequestBody = PostNetworksIdActionsDeleteSubnetRequestBody {
  -- | ip_range: IP range of subnet to delete
  postNetworksIdActionsDeleteSubnetRequestBodyIpRange :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostNetworksIdActionsDeleteSubnetRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("ip_range" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetRequestBodyIpRange obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("ip_range" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetRequestBodyIpRange obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsDeleteSubnetRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostNetworksIdActionsDeleteSubnetRequestBody" (\obj -> GHC.Base.pure PostNetworksIdActionsDeleteSubnetRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ip_range"))
-- | Create a new 'PostNetworksIdActionsDeleteSubnetRequestBody' with all required fields.
mkPostNetworksIdActionsDeleteSubnetRequestBody :: Data.Text.Internal.Text -- ^ 'postNetworksIdActionsDeleteSubnetRequestBodyIpRange'
  -> PostNetworksIdActionsDeleteSubnetRequestBody
mkPostNetworksIdActionsDeleteSubnetRequestBody postNetworksIdActionsDeleteSubnetRequestBodyIpRange = PostNetworksIdActionsDeleteSubnetRequestBody{postNetworksIdActionsDeleteSubnetRequestBodyIpRange = postNetworksIdActionsDeleteSubnetRequestBodyIpRange}
-- | Represents a response of the operation 'postNetworks_Id_ActionsDeleteSubnet'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostNetworksIdActionsDeleteSubnetResponseError' is used.
data PostNetworksIdActionsDeleteSubnetResponse =
   PostNetworksIdActionsDeleteSubnetResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostNetworksIdActionsDeleteSubnetResponse201 PostNetworksIdActionsDeleteSubnetResponseBody201 -- ^ The \`action\` key contains the \`delete_subnet\` Action
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/networks\/{id}\/actions\/delete_subnet.POST.responses.201.content.application\/json.schema@ in the specification.
-- 
-- 
data PostNetworksIdActionsDeleteSubnetResponseBody201 = PostNetworksIdActionsDeleteSubnetResponseBody201 {
  -- | action
  postNetworksIdActionsDeleteSubnetResponseBody201Action :: PostNetworksIdActionsDeleteSubnetResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostNetworksIdActionsDeleteSubnetResponseBody201
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsDeleteSubnetResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostNetworksIdActionsDeleteSubnetResponseBody201" (\obj -> GHC.Base.pure PostNetworksIdActionsDeleteSubnetResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'PostNetworksIdActionsDeleteSubnetResponseBody201' with all required fields.
mkPostNetworksIdActionsDeleteSubnetResponseBody201 :: PostNetworksIdActionsDeleteSubnetResponseBody201Action -- ^ 'postNetworksIdActionsDeleteSubnetResponseBody201Action'
  -> PostNetworksIdActionsDeleteSubnetResponseBody201
mkPostNetworksIdActionsDeleteSubnetResponseBody201 postNetworksIdActionsDeleteSubnetResponseBody201Action = PostNetworksIdActionsDeleteSubnetResponseBody201{postNetworksIdActionsDeleteSubnetResponseBody201Action = postNetworksIdActionsDeleteSubnetResponseBody201Action}
-- | Defines the object schema located at @paths.\/networks\/{id}\/actions\/delete_subnet.POST.responses.201.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data PostNetworksIdActionsDeleteSubnetResponseBody201Action = PostNetworksIdActionsDeleteSubnetResponseBody201Action {
  -- | command: Command executed in the Action
  postNetworksIdActionsDeleteSubnetResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionError :: (GHC.Maybe.Maybe PostNetworksIdActionsDeleteSubnetResponseBody201ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionResources :: ([PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionStatus :: PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostNetworksIdActionsDeleteSubnetResponseBody201Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionError obj : "finished" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionId obj : "progress" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionResources obj : "started" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsDeleteSubnetResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostNetworksIdActionsDeleteSubnetResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostNetworksIdActionsDeleteSubnetResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'PostNetworksIdActionsDeleteSubnetResponseBody201Action' with all required fields.
mkPostNetworksIdActionsDeleteSubnetResponseBody201Action :: Data.Text.Internal.Text -- ^ 'postNetworksIdActionsDeleteSubnetResponseBody201ActionCommand'
  -> GHC.Maybe.Maybe PostNetworksIdActionsDeleteSubnetResponseBody201ActionError -- ^ 'postNetworksIdActionsDeleteSubnetResponseBody201ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postNetworksIdActionsDeleteSubnetResponseBody201ActionFinished'
  -> GHC.Types.Int -- ^ 'postNetworksIdActionsDeleteSubnetResponseBody201ActionId'
  -> GHC.Types.Double -- ^ 'postNetworksIdActionsDeleteSubnetResponseBody201ActionProgress'
  -> [PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources] -- ^ 'postNetworksIdActionsDeleteSubnetResponseBody201ActionResources'
  -> Data.Text.Internal.Text -- ^ 'postNetworksIdActionsDeleteSubnetResponseBody201ActionStarted'
  -> PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatus -- ^ 'postNetworksIdActionsDeleteSubnetResponseBody201ActionStatus'
  -> PostNetworksIdActionsDeleteSubnetResponseBody201Action
mkPostNetworksIdActionsDeleteSubnetResponseBody201Action postNetworksIdActionsDeleteSubnetResponseBody201ActionCommand postNetworksIdActionsDeleteSubnetResponseBody201ActionError postNetworksIdActionsDeleteSubnetResponseBody201ActionFinished postNetworksIdActionsDeleteSubnetResponseBody201ActionId postNetworksIdActionsDeleteSubnetResponseBody201ActionProgress postNetworksIdActionsDeleteSubnetResponseBody201ActionResources postNetworksIdActionsDeleteSubnetResponseBody201ActionStarted postNetworksIdActionsDeleteSubnetResponseBody201ActionStatus = PostNetworksIdActionsDeleteSubnetResponseBody201Action{postNetworksIdActionsDeleteSubnetResponseBody201ActionCommand = postNetworksIdActionsDeleteSubnetResponseBody201ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              postNetworksIdActionsDeleteSubnetResponseBody201ActionError = postNetworksIdActionsDeleteSubnetResponseBody201ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              postNetworksIdActionsDeleteSubnetResponseBody201ActionFinished = postNetworksIdActionsDeleteSubnetResponseBody201ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              postNetworksIdActionsDeleteSubnetResponseBody201ActionId = postNetworksIdActionsDeleteSubnetResponseBody201ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              postNetworksIdActionsDeleteSubnetResponseBody201ActionProgress = postNetworksIdActionsDeleteSubnetResponseBody201ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              postNetworksIdActionsDeleteSubnetResponseBody201ActionResources = postNetworksIdActionsDeleteSubnetResponseBody201ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              postNetworksIdActionsDeleteSubnetResponseBody201ActionStarted = postNetworksIdActionsDeleteSubnetResponseBody201ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              postNetworksIdActionsDeleteSubnetResponseBody201ActionStatus = postNetworksIdActionsDeleteSubnetResponseBody201ActionStatus}
-- | Defines the object schema located at @paths.\/networks\/{id}\/actions\/delete_subnet.POST.responses.201.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data PostNetworksIdActionsDeleteSubnetResponseBody201ActionError = PostNetworksIdActionsDeleteSubnetResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostNetworksIdActionsDeleteSubnetResponseBody201ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsDeleteSubnetResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostNetworksIdActionsDeleteSubnetResponseBody201ActionError" (\obj -> (GHC.Base.pure PostNetworksIdActionsDeleteSubnetResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'PostNetworksIdActionsDeleteSubnetResponseBody201ActionError' with all required fields.
mkPostNetworksIdActionsDeleteSubnetResponseBody201ActionError :: Data.Text.Internal.Text -- ^ 'postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorMessage'
  -> PostNetworksIdActionsDeleteSubnetResponseBody201ActionError
mkPostNetworksIdActionsDeleteSubnetResponseBody201ActionError postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorCode postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorMessage = PostNetworksIdActionsDeleteSubnetResponseBody201ActionError{postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorCode = postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorCode,
                                                                                                                                                                                                                                                               postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorMessage = postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorMessage}
-- | Defines the object schema located at @paths.\/networks\/{id}\/actions\/delete_subnet.POST.responses.201.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources = PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources {
  -- | id: ID of the Resource
  postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources' with all required fields.
mkPostNetworksIdActionsDeleteSubnetResponseBody201ActionResources :: GHC.Types.Int -- ^ 'postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesType'
  -> PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources
mkPostNetworksIdActionsDeleteSubnetResponseBody201ActionResources postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesId postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesType = PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources{postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesId = postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesId,
                                                                                                                                                                                                                                                                          postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesType = postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesType}
-- | Defines the enum schema located at @paths.\/networks\/{id}\/actions\/delete_subnet.POST.responses.201.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatus =
   PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatus
    where toJSON (PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusOther val) = val
          toJSON (PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumSuccess) = "success"
          toJSON (PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumRunning) = "running"
          toJSON (PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumError
                                            | GHC.Base.otherwise -> PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusOther val)
-- | > POST /networks/{id}/actions/delete_subnet
-- 
-- The same as 'postNetworks_Id_ActionsDeleteSubnet' but accepts an explicit configuration.
postNetworks_Id_ActionsDeleteSubnetWithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Network
  -> GHC.Maybe.Maybe PostNetworksIdActionsDeleteSubnetRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostNetworksIdActionsDeleteSubnetResponse) -- ^ Monadic computation which returns the result of the operation
postNetworks_Id_ActionsDeleteSubnetWithConfiguration config
                                                     id
                                                     body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostNetworksIdActionsDeleteSubnetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostNetworksIdActionsDeleteSubnetResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         PostNetworksIdActionsDeleteSubnetResponseBody201)
                                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/delete_subnet"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /networks/{id}/actions/delete_subnet
-- 
-- The same as 'postNetworks_Id_ActionsDeleteSubnet' but returns the raw 'Data.ByteString.Char8.ByteString'.
postNetworks_Id_ActionsDeleteSubnetRaw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Network
  -> GHC.Maybe.Maybe PostNetworksIdActionsDeleteSubnetRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postNetworks_Id_ActionsDeleteSubnetRaw id
                                       body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/delete_subnet"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /networks/{id}/actions/delete_subnet
-- 
-- The same as 'postNetworks_Id_ActionsDeleteSubnet' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postNetworks_Id_ActionsDeleteSubnetWithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Network
  -> GHC.Maybe.Maybe PostNetworksIdActionsDeleteSubnetRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postNetworks_Id_ActionsDeleteSubnetWithConfigurationRaw config
                                                        id
                                                        body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/delete_subnet"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
