-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postFloatingIps_Id_ActionsChangeDnsPtr
module HCloud.Operations.PostFloatingIpsIdActionsChangeDnsPtr where

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

-- | > POST /floating_ips/{id}/actions/change_dns_ptr
-- 
-- Changes the hostname that will appear when getting the hostname belonging to this Floating IP.
postFloatingIps_Id_ActionsChangeDnsPtr :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Floating IP
  -> GHC.Maybe.Maybe PostFloatingIpsIdActionsChangeDnsPtrRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response PostFloatingIpsIdActionsChangeDnsPtrResponse) -- ^ Monadic computation which returns the result of the operation
postFloatingIps_Id_ActionsChangeDnsPtr id
                                       body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostFloatingIpsIdActionsChangeDnsPtrResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostFloatingIpsIdActionsChangeDnsPtrResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 PostFloatingIpsIdActionsChangeDnsPtrResponseBody201)
                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/floating_ips/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_dns_ptr"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/floating_ips\/{id}\/actions\/change_dns_ptr.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostFloatingIpsIdActionsChangeDnsPtrRequestBody = PostFloatingIpsIdActionsChangeDnsPtrRequestBody {
  -- | dns_ptr: Hostname to set as a reverse DNS PTR entry, will reset to original default value if \`null\`
  postFloatingIpsIdActionsChangeDnsPtrRequestBodyDnsPtr :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | ip: IP address for which to set the reverse DNS entry
  , postFloatingIpsIdActionsChangeDnsPtrRequestBodyIp :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostFloatingIpsIdActionsChangeDnsPtrRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("dns_ptr" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrRequestBodyDnsPtr obj : "ip" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrRequestBodyIp obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("dns_ptr" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrRequestBodyDnsPtr obj) GHC.Base.<> ("ip" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrRequestBodyIp obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsIdActionsChangeDnsPtrRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsIdActionsChangeDnsPtrRequestBody" (\obj -> (GHC.Base.pure PostFloatingIpsIdActionsChangeDnsPtrRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "dns_ptr")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ip"))
-- | Create a new 'PostFloatingIpsIdActionsChangeDnsPtrRequestBody' with all required fields.
mkPostFloatingIpsIdActionsChangeDnsPtrRequestBody :: GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postFloatingIpsIdActionsChangeDnsPtrRequestBodyDnsPtr'
  -> Data.Text.Internal.Text -- ^ 'postFloatingIpsIdActionsChangeDnsPtrRequestBodyIp'
  -> PostFloatingIpsIdActionsChangeDnsPtrRequestBody
mkPostFloatingIpsIdActionsChangeDnsPtrRequestBody postFloatingIpsIdActionsChangeDnsPtrRequestBodyDnsPtr postFloatingIpsIdActionsChangeDnsPtrRequestBodyIp = PostFloatingIpsIdActionsChangeDnsPtrRequestBody{postFloatingIpsIdActionsChangeDnsPtrRequestBodyDnsPtr = postFloatingIpsIdActionsChangeDnsPtrRequestBodyDnsPtr,
                                                                                                                                                                                                            postFloatingIpsIdActionsChangeDnsPtrRequestBodyIp = postFloatingIpsIdActionsChangeDnsPtrRequestBodyIp}
-- | Represents a response of the operation 'postFloatingIps_Id_ActionsChangeDnsPtr'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostFloatingIpsIdActionsChangeDnsPtrResponseError' is used.
data PostFloatingIpsIdActionsChangeDnsPtrResponse =
   PostFloatingIpsIdActionsChangeDnsPtrResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostFloatingIpsIdActionsChangeDnsPtrResponse201 PostFloatingIpsIdActionsChangeDnsPtrResponseBody201 -- ^ The \`action\` key contains the \`change_dns_ptr\` Action
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/floating_ips\/{id}\/actions\/change_dns_ptr.POST.responses.201.content.application\/json.schema@ in the specification.
-- 
-- 
data PostFloatingIpsIdActionsChangeDnsPtrResponseBody201 = PostFloatingIpsIdActionsChangeDnsPtrResponseBody201 {
  -- | action
  postFloatingIpsIdActionsChangeDnsPtrResponseBody201Action :: PostFloatingIpsIdActionsChangeDnsPtrResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostFloatingIpsIdActionsChangeDnsPtrResponseBody201
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsIdActionsChangeDnsPtrResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsIdActionsChangeDnsPtrResponseBody201" (\obj -> GHC.Base.pure PostFloatingIpsIdActionsChangeDnsPtrResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'PostFloatingIpsIdActionsChangeDnsPtrResponseBody201' with all required fields.
mkPostFloatingIpsIdActionsChangeDnsPtrResponseBody201 :: PostFloatingIpsIdActionsChangeDnsPtrResponseBody201Action -- ^ 'postFloatingIpsIdActionsChangeDnsPtrResponseBody201Action'
  -> PostFloatingIpsIdActionsChangeDnsPtrResponseBody201
mkPostFloatingIpsIdActionsChangeDnsPtrResponseBody201 postFloatingIpsIdActionsChangeDnsPtrResponseBody201Action = PostFloatingIpsIdActionsChangeDnsPtrResponseBody201{postFloatingIpsIdActionsChangeDnsPtrResponseBody201Action = postFloatingIpsIdActionsChangeDnsPtrResponseBody201Action}
-- | Defines the object schema located at @paths.\/floating_ips\/{id}\/actions\/change_dns_ptr.POST.responses.201.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data PostFloatingIpsIdActionsChangeDnsPtrResponseBody201Action = PostFloatingIpsIdActionsChangeDnsPtrResponseBody201Action {
  -- | command: Command executed in the Action
  postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError :: (GHC.Maybe.Maybe PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources :: ([PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatus :: PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostFloatingIpsIdActionsChangeDnsPtrResponseBody201Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError obj : "finished" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionId obj : "progress" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources obj : "started" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsIdActionsChangeDnsPtrResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsIdActionsChangeDnsPtrResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostFloatingIpsIdActionsChangeDnsPtrResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'PostFloatingIpsIdActionsChangeDnsPtrResponseBody201Action' with all required fields.
mkPostFloatingIpsIdActionsChangeDnsPtrResponseBody201Action :: Data.Text.Internal.Text -- ^ 'postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionCommand'
  -> GHC.Maybe.Maybe PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError -- ^ 'postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionFinished'
  -> GHC.Types.Int -- ^ 'postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionId'
  -> GHC.Types.Double -- ^ 'postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionProgress'
  -> [PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources] -- ^ 'postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources'
  -> Data.Text.Internal.Text -- ^ 'postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStarted'
  -> PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatus -- ^ 'postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatus'
  -> PostFloatingIpsIdActionsChangeDnsPtrResponseBody201Action
mkPostFloatingIpsIdActionsChangeDnsPtrResponseBody201Action postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionCommand postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionFinished postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionId postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionProgress postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStarted postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatus = PostFloatingIpsIdActionsChangeDnsPtrResponseBody201Action{postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionCommand = postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError = postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionFinished = postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionId = postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionProgress = postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources = postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStarted = postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatus = postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatus}
-- | Defines the object schema located at @paths.\/floating_ips\/{id}\/actions\/change_dns_ptr.POST.responses.201.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError = PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError" (\obj -> (GHC.Base.pure PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError' with all required fields.
mkPostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError :: Data.Text.Internal.Text -- ^ 'postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionErrorMessage'
  -> PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError
mkPostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionErrorCode postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionErrorMessage = PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionError{postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionErrorCode = postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionErrorCode,
                                                                                                                                                                                                                                                                           postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionErrorMessage = postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionErrorMessage}
-- | Defines the object schema located at @paths.\/floating_ips\/{id}\/actions\/change_dns_ptr.POST.responses.201.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources = PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources {
  -- | id: ID of the Resource
  postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources' with all required fields.
mkPostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources :: GHC.Types.Int -- ^ 'postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResourcesType'
  -> PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources
mkPostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResourcesId postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResourcesType = PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResources{postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResourcesId = postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResourcesId,
                                                                                                                                                                                                                                                                                      postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResourcesType = postFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionResourcesType}
-- | Defines the enum schema located at @paths.\/floating_ips\/{id}\/actions\/change_dns_ptr.POST.responses.201.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatus =
   PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatus
    where toJSON (PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatusOther val) = val
          toJSON (PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatusEnumSuccess) = "success"
          toJSON (PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatusEnumRunning) = "running"
          toJSON (PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatusEnumError
                                            | GHC.Base.otherwise -> PostFloatingIpsIdActionsChangeDnsPtrResponseBody201ActionStatusOther val)
-- | > POST /floating_ips/{id}/actions/change_dns_ptr
-- 
-- The same as 'postFloatingIps_Id_ActionsChangeDnsPtr' but accepts an explicit configuration.
postFloatingIps_Id_ActionsChangeDnsPtrWithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Floating IP
  -> GHC.Maybe.Maybe PostFloatingIpsIdActionsChangeDnsPtrRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostFloatingIpsIdActionsChangeDnsPtrResponse) -- ^ Monadic computation which returns the result of the operation
postFloatingIps_Id_ActionsChangeDnsPtrWithConfiguration config
                                                        id
                                                        body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostFloatingIpsIdActionsChangeDnsPtrResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostFloatingIpsIdActionsChangeDnsPtrResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  PostFloatingIpsIdActionsChangeDnsPtrResponseBody201)
                                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/floating_ips/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_dns_ptr"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /floating_ips/{id}/actions/change_dns_ptr
-- 
-- The same as 'postFloatingIps_Id_ActionsChangeDnsPtr' but returns the raw 'Data.ByteString.Char8.ByteString'.
postFloatingIps_Id_ActionsChangeDnsPtrRaw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Floating IP
  -> GHC.Maybe.Maybe PostFloatingIpsIdActionsChangeDnsPtrRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postFloatingIps_Id_ActionsChangeDnsPtrRaw id
                                          body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/floating_ips/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_dns_ptr"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /floating_ips/{id}/actions/change_dns_ptr
-- 
-- The same as 'postFloatingIps_Id_ActionsChangeDnsPtr' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postFloatingIps_Id_ActionsChangeDnsPtrWithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Floating IP
  -> GHC.Maybe.Maybe PostFloatingIpsIdActionsChangeDnsPtrRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postFloatingIps_Id_ActionsChangeDnsPtrWithConfigurationRaw config
                                                           id
                                                           body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/floating_ips/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_dns_ptr"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
