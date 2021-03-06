-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postNetworks_Id_ActionsChangeIpRange
module HCloud.Operations.PostNetworksIdActionsChangeIpRange where

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

-- | > POST /networks/{id}/actions/change_ip_range
-- 
-- Changes the IP range of a Network. IP ranges can only be extended and never shrunk. You can only add IPs at the end of an existing IP range. This means that the IP part of your existing range must stay the same and you can only change its netmask.
-- 
-- For example if you have a range \`10.0.0.0\/16\` you want to extend then your new range must also start with the IP \`10.0.0.0\`. Your CIDR netmask \`\/16\` may change to a number that is smaller than \`16\` thereby increasing the IP range. So valid entries would be \`10.0.0.0\/15\`, \`10.0.0.0\/14\`, \`10.0.0.0\/13\` and so on.
-- 
-- After changing the IP range you will have to adjust the routes on your connected Servers by either rebooting them or manually changing the routes to your private Network interface.
-- 
-- Note: if the Network object changes during the request, the response will be a ???conflict??? error.
postNetworks_Id_ActionsChangeIpRange :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Network
  -> GHC.Maybe.Maybe PostNetworksIdActionsChangeIpRangeRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response PostNetworksIdActionsChangeIpRangeResponse) -- ^ Monadic computation which returns the result of the operation
postNetworks_Id_ActionsChangeIpRange id
                                     body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostNetworksIdActionsChangeIpRangeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostNetworksIdActionsChangeIpRangeResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           PostNetworksIdActionsChangeIpRangeResponseBody201)
                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_ip_range"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/networks\/{id}\/actions\/change_ip_range.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostNetworksIdActionsChangeIpRangeRequestBody = PostNetworksIdActionsChangeIpRangeRequestBody {
  -- | ip_range: The new prefix for the whole Network
  postNetworksIdActionsChangeIpRangeRequestBodyIpRange :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostNetworksIdActionsChangeIpRangeRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("ip_range" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeRequestBodyIpRange obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("ip_range" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeRequestBodyIpRange obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsChangeIpRangeRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostNetworksIdActionsChangeIpRangeRequestBody" (\obj -> GHC.Base.pure PostNetworksIdActionsChangeIpRangeRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ip_range"))
-- | Create a new 'PostNetworksIdActionsChangeIpRangeRequestBody' with all required fields.
mkPostNetworksIdActionsChangeIpRangeRequestBody :: Data.Text.Internal.Text -- ^ 'postNetworksIdActionsChangeIpRangeRequestBodyIpRange'
  -> PostNetworksIdActionsChangeIpRangeRequestBody
mkPostNetworksIdActionsChangeIpRangeRequestBody postNetworksIdActionsChangeIpRangeRequestBodyIpRange = PostNetworksIdActionsChangeIpRangeRequestBody{postNetworksIdActionsChangeIpRangeRequestBodyIpRange = postNetworksIdActionsChangeIpRangeRequestBodyIpRange}
-- | Represents a response of the operation 'postNetworks_Id_ActionsChangeIpRange'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostNetworksIdActionsChangeIpRangeResponseError' is used.
data PostNetworksIdActionsChangeIpRangeResponse =
   PostNetworksIdActionsChangeIpRangeResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostNetworksIdActionsChangeIpRangeResponse201 PostNetworksIdActionsChangeIpRangeResponseBody201 -- ^ The \`action\` key contains the \`change_ip_range\` Action
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/networks\/{id}\/actions\/change_ip_range.POST.responses.201.content.application\/json.schema@ in the specification.
-- 
-- 
data PostNetworksIdActionsChangeIpRangeResponseBody201 = PostNetworksIdActionsChangeIpRangeResponseBody201 {
  -- | action
  postNetworksIdActionsChangeIpRangeResponseBody201Action :: PostNetworksIdActionsChangeIpRangeResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostNetworksIdActionsChangeIpRangeResponseBody201
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsChangeIpRangeResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostNetworksIdActionsChangeIpRangeResponseBody201" (\obj -> GHC.Base.pure PostNetworksIdActionsChangeIpRangeResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'PostNetworksIdActionsChangeIpRangeResponseBody201' with all required fields.
mkPostNetworksIdActionsChangeIpRangeResponseBody201 :: PostNetworksIdActionsChangeIpRangeResponseBody201Action -- ^ 'postNetworksIdActionsChangeIpRangeResponseBody201Action'
  -> PostNetworksIdActionsChangeIpRangeResponseBody201
mkPostNetworksIdActionsChangeIpRangeResponseBody201 postNetworksIdActionsChangeIpRangeResponseBody201Action = PostNetworksIdActionsChangeIpRangeResponseBody201{postNetworksIdActionsChangeIpRangeResponseBody201Action = postNetworksIdActionsChangeIpRangeResponseBody201Action}
-- | Defines the object schema located at @paths.\/networks\/{id}\/actions\/change_ip_range.POST.responses.201.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data PostNetworksIdActionsChangeIpRangeResponseBody201Action = PostNetworksIdActionsChangeIpRangeResponseBody201Action {
  -- | command: Command executed in the Action
  postNetworksIdActionsChangeIpRangeResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postNetworksIdActionsChangeIpRangeResponseBody201ActionError :: (GHC.Maybe.Maybe PostNetworksIdActionsChangeIpRangeResponseBody201ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postNetworksIdActionsChangeIpRangeResponseBody201ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , postNetworksIdActionsChangeIpRangeResponseBody201ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , postNetworksIdActionsChangeIpRangeResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postNetworksIdActionsChangeIpRangeResponseBody201ActionResources :: ([PostNetworksIdActionsChangeIpRangeResponseBody201ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postNetworksIdActionsChangeIpRangeResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postNetworksIdActionsChangeIpRangeResponseBody201ActionStatus :: PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostNetworksIdActionsChangeIpRangeResponseBody201Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionError obj : "finished" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionId obj : "progress" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionResources obj : "started" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsChangeIpRangeResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostNetworksIdActionsChangeIpRangeResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostNetworksIdActionsChangeIpRangeResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'PostNetworksIdActionsChangeIpRangeResponseBody201Action' with all required fields.
mkPostNetworksIdActionsChangeIpRangeResponseBody201Action :: Data.Text.Internal.Text -- ^ 'postNetworksIdActionsChangeIpRangeResponseBody201ActionCommand'
  -> GHC.Maybe.Maybe PostNetworksIdActionsChangeIpRangeResponseBody201ActionError -- ^ 'postNetworksIdActionsChangeIpRangeResponseBody201ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postNetworksIdActionsChangeIpRangeResponseBody201ActionFinished'
  -> GHC.Types.Int -- ^ 'postNetworksIdActionsChangeIpRangeResponseBody201ActionId'
  -> GHC.Types.Double -- ^ 'postNetworksIdActionsChangeIpRangeResponseBody201ActionProgress'
  -> [PostNetworksIdActionsChangeIpRangeResponseBody201ActionResources] -- ^ 'postNetworksIdActionsChangeIpRangeResponseBody201ActionResources'
  -> Data.Text.Internal.Text -- ^ 'postNetworksIdActionsChangeIpRangeResponseBody201ActionStarted'
  -> PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatus -- ^ 'postNetworksIdActionsChangeIpRangeResponseBody201ActionStatus'
  -> PostNetworksIdActionsChangeIpRangeResponseBody201Action
mkPostNetworksIdActionsChangeIpRangeResponseBody201Action postNetworksIdActionsChangeIpRangeResponseBody201ActionCommand postNetworksIdActionsChangeIpRangeResponseBody201ActionError postNetworksIdActionsChangeIpRangeResponseBody201ActionFinished postNetworksIdActionsChangeIpRangeResponseBody201ActionId postNetworksIdActionsChangeIpRangeResponseBody201ActionProgress postNetworksIdActionsChangeIpRangeResponseBody201ActionResources postNetworksIdActionsChangeIpRangeResponseBody201ActionStarted postNetworksIdActionsChangeIpRangeResponseBody201ActionStatus = PostNetworksIdActionsChangeIpRangeResponseBody201Action{postNetworksIdActionsChangeIpRangeResponseBody201ActionCommand = postNetworksIdActionsChangeIpRangeResponseBody201ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postNetworksIdActionsChangeIpRangeResponseBody201ActionError = postNetworksIdActionsChangeIpRangeResponseBody201ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postNetworksIdActionsChangeIpRangeResponseBody201ActionFinished = postNetworksIdActionsChangeIpRangeResponseBody201ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postNetworksIdActionsChangeIpRangeResponseBody201ActionId = postNetworksIdActionsChangeIpRangeResponseBody201ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postNetworksIdActionsChangeIpRangeResponseBody201ActionProgress = postNetworksIdActionsChangeIpRangeResponseBody201ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postNetworksIdActionsChangeIpRangeResponseBody201ActionResources = postNetworksIdActionsChangeIpRangeResponseBody201ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postNetworksIdActionsChangeIpRangeResponseBody201ActionStarted = postNetworksIdActionsChangeIpRangeResponseBody201ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        postNetworksIdActionsChangeIpRangeResponseBody201ActionStatus = postNetworksIdActionsChangeIpRangeResponseBody201ActionStatus}
-- | Defines the object schema located at @paths.\/networks\/{id}\/actions\/change_ip_range.POST.responses.201.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data PostNetworksIdActionsChangeIpRangeResponseBody201ActionError = PostNetworksIdActionsChangeIpRangeResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postNetworksIdActionsChangeIpRangeResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postNetworksIdActionsChangeIpRangeResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostNetworksIdActionsChangeIpRangeResponseBody201ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsChangeIpRangeResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostNetworksIdActionsChangeIpRangeResponseBody201ActionError" (\obj -> (GHC.Base.pure PostNetworksIdActionsChangeIpRangeResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'PostNetworksIdActionsChangeIpRangeResponseBody201ActionError' with all required fields.
mkPostNetworksIdActionsChangeIpRangeResponseBody201ActionError :: Data.Text.Internal.Text -- ^ 'postNetworksIdActionsChangeIpRangeResponseBody201ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'postNetworksIdActionsChangeIpRangeResponseBody201ActionErrorMessage'
  -> PostNetworksIdActionsChangeIpRangeResponseBody201ActionError
mkPostNetworksIdActionsChangeIpRangeResponseBody201ActionError postNetworksIdActionsChangeIpRangeResponseBody201ActionErrorCode postNetworksIdActionsChangeIpRangeResponseBody201ActionErrorMessage = PostNetworksIdActionsChangeIpRangeResponseBody201ActionError{postNetworksIdActionsChangeIpRangeResponseBody201ActionErrorCode = postNetworksIdActionsChangeIpRangeResponseBody201ActionErrorCode,
                                                                                                                                                                                                                                                                   postNetworksIdActionsChangeIpRangeResponseBody201ActionErrorMessage = postNetworksIdActionsChangeIpRangeResponseBody201ActionErrorMessage}
-- | Defines the object schema located at @paths.\/networks\/{id}\/actions\/change_ip_range.POST.responses.201.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data PostNetworksIdActionsChangeIpRangeResponseBody201ActionResources = PostNetworksIdActionsChangeIpRangeResponseBody201ActionResources {
  -- | id: ID of the Resource
  postNetworksIdActionsChangeIpRangeResponseBody201ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , postNetworksIdActionsChangeIpRangeResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostNetworksIdActionsChangeIpRangeResponseBody201ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postNetworksIdActionsChangeIpRangeResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsChangeIpRangeResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostNetworksIdActionsChangeIpRangeResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostNetworksIdActionsChangeIpRangeResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PostNetworksIdActionsChangeIpRangeResponseBody201ActionResources' with all required fields.
mkPostNetworksIdActionsChangeIpRangeResponseBody201ActionResources :: GHC.Types.Int -- ^ 'postNetworksIdActionsChangeIpRangeResponseBody201ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'postNetworksIdActionsChangeIpRangeResponseBody201ActionResourcesType'
  -> PostNetworksIdActionsChangeIpRangeResponseBody201ActionResources
mkPostNetworksIdActionsChangeIpRangeResponseBody201ActionResources postNetworksIdActionsChangeIpRangeResponseBody201ActionResourcesId postNetworksIdActionsChangeIpRangeResponseBody201ActionResourcesType = PostNetworksIdActionsChangeIpRangeResponseBody201ActionResources{postNetworksIdActionsChangeIpRangeResponseBody201ActionResourcesId = postNetworksIdActionsChangeIpRangeResponseBody201ActionResourcesId,
                                                                                                                                                                                                                                                                              postNetworksIdActionsChangeIpRangeResponseBody201ActionResourcesType = postNetworksIdActionsChangeIpRangeResponseBody201ActionResourcesType}
-- | Defines the enum schema located at @paths.\/networks\/{id}\/actions\/change_ip_range.POST.responses.201.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatus =
   PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatus
    where toJSON (PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatusOther val) = val
          toJSON (PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatusEnumSuccess) = "success"
          toJSON (PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatusEnumRunning) = "running"
          toJSON (PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatusEnumError
                                            | GHC.Base.otherwise -> PostNetworksIdActionsChangeIpRangeResponseBody201ActionStatusOther val)
-- | > POST /networks/{id}/actions/change_ip_range
-- 
-- The same as 'postNetworks_Id_ActionsChangeIpRange' but accepts an explicit configuration.
postNetworks_Id_ActionsChangeIpRangeWithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Network
  -> GHC.Maybe.Maybe PostNetworksIdActionsChangeIpRangeRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostNetworksIdActionsChangeIpRangeResponse) -- ^ Monadic computation which returns the result of the operation
postNetworks_Id_ActionsChangeIpRangeWithConfiguration config
                                                      id
                                                      body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostNetworksIdActionsChangeIpRangeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostNetworksIdActionsChangeIpRangeResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            PostNetworksIdActionsChangeIpRangeResponseBody201)
                                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_ip_range"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /networks/{id}/actions/change_ip_range
-- 
-- The same as 'postNetworks_Id_ActionsChangeIpRange' but returns the raw 'Data.ByteString.Char8.ByteString'.
postNetworks_Id_ActionsChangeIpRangeRaw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Network
  -> GHC.Maybe.Maybe PostNetworksIdActionsChangeIpRangeRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postNetworks_Id_ActionsChangeIpRangeRaw id
                                        body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_ip_range"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /networks/{id}/actions/change_ip_range
-- 
-- The same as 'postNetworks_Id_ActionsChangeIpRange' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postNetworks_Id_ActionsChangeIpRangeWithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Network
  -> GHC.Maybe.Maybe PostNetworksIdActionsChangeIpRangeRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postNetworks_Id_ActionsChangeIpRangeWithConfigurationRaw config
                                                         id
                                                         body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_ip_range"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
