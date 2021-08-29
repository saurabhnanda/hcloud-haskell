-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postServers_Id_ActionsAttachToNetwork
module HCloud.Operations.PostServersIdActionsAttachToNetwork where

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

-- | > POST /servers/{id}/actions/attach_to_network
-- 
-- Attaches a Server to a network. This will complement the fixed public Server interface by adding an additional ethernet interface to the Server which is connected to the specified network.
-- 
-- The Server will get an IP auto assigned from a subnet of type \`server\` in the same \`network_zone\`.
-- 
-- Using the \`alias_ips\` attribute you can also define one or more additional IPs to the Servers. Please note that you will have to configure these IPs by hand on your Server since only the primary IP will be given out by DHCP.
-- 
-- **Call specific error codes**
-- 
-- | Code                             | Description                                                           |
-- |----------------------------------|-----------------------------------------------------------------------|
-- | \`server_already_attached\`        | The server is already attached to the network                         |
-- | \`ip_not_available\`               | The provided Network IP is not available                              |
-- | \`no_subnet_available\`            | No Subnet or IP is available for the Server within the network        |
-- | \`networks_overlap\`               | The network IP range overlaps with one of the server networks         |
postServers_Id_ActionsAttachToNetwork :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsAttachToNetworkRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response PostServersIdActionsAttachToNetworkResponse) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsAttachToNetwork id
                                      body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsAttachToNetworkResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsAttachToNetworkResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              PostServersIdActionsAttachToNetworkResponseBody201)
                                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/attach_to_network"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/attach_to_network.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostServersIdActionsAttachToNetworkRequestBody = PostServersIdActionsAttachToNetworkRequestBody {
  -- | alias_ips: Additional IPs to be assigned to this Server
  postServersIdActionsAttachToNetworkRequestBodyAliasIps :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | ip: IP to request to be assigned to this Server; if you do not provide this then you will be auto assigned an IP address
  , postServersIdActionsAttachToNetworkRequestBodyIp :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | network: ID of an existing network to attach the Server to
  , postServersIdActionsAttachToNetworkRequestBodyNetwork :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsAttachToNetworkRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("alias_ips" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkRequestBodyAliasIps obj : "ip" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkRequestBodyIp obj : "network" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkRequestBodyNetwork obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("alias_ips" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkRequestBodyAliasIps obj) GHC.Base.<> (("ip" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkRequestBodyIp obj) GHC.Base.<> ("network" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkRequestBodyNetwork obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsAttachToNetworkRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsAttachToNetworkRequestBody" (\obj -> ((GHC.Base.pure PostServersIdActionsAttachToNetworkRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "alias_ips")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network"))
-- | Create a new 'PostServersIdActionsAttachToNetworkRequestBody' with all required fields.
mkPostServersIdActionsAttachToNetworkRequestBody :: GHC.Types.Int -- ^ 'postServersIdActionsAttachToNetworkRequestBodyNetwork'
  -> PostServersIdActionsAttachToNetworkRequestBody
mkPostServersIdActionsAttachToNetworkRequestBody postServersIdActionsAttachToNetworkRequestBodyNetwork = PostServersIdActionsAttachToNetworkRequestBody{postServersIdActionsAttachToNetworkRequestBodyAliasIps = GHC.Maybe.Nothing,
                                                                                                                                                        postServersIdActionsAttachToNetworkRequestBodyIp = GHC.Maybe.Nothing,
                                                                                                                                                        postServersIdActionsAttachToNetworkRequestBodyNetwork = postServersIdActionsAttachToNetworkRequestBodyNetwork}
-- | Represents a response of the operation 'postServers_Id_ActionsAttachToNetwork'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostServersIdActionsAttachToNetworkResponseError' is used.
data PostServersIdActionsAttachToNetworkResponse =
   PostServersIdActionsAttachToNetworkResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostServersIdActionsAttachToNetworkResponse201 PostServersIdActionsAttachToNetworkResponseBody201 -- ^ The \`action\` key in the reply contains an Action object with this structure
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/attach_to_network.POST.responses.201.content.application\/json.schema@ in the specification.
-- 
-- 
data PostServersIdActionsAttachToNetworkResponseBody201 = PostServersIdActionsAttachToNetworkResponseBody201 {
  -- | action
  postServersIdActionsAttachToNetworkResponseBody201Action :: PostServersIdActionsAttachToNetworkResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsAttachToNetworkResponseBody201
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsAttachToNetworkResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsAttachToNetworkResponseBody201" (\obj -> GHC.Base.pure PostServersIdActionsAttachToNetworkResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'PostServersIdActionsAttachToNetworkResponseBody201' with all required fields.
mkPostServersIdActionsAttachToNetworkResponseBody201 :: PostServersIdActionsAttachToNetworkResponseBody201Action -- ^ 'postServersIdActionsAttachToNetworkResponseBody201Action'
  -> PostServersIdActionsAttachToNetworkResponseBody201
mkPostServersIdActionsAttachToNetworkResponseBody201 postServersIdActionsAttachToNetworkResponseBody201Action = PostServersIdActionsAttachToNetworkResponseBody201{postServersIdActionsAttachToNetworkResponseBody201Action = postServersIdActionsAttachToNetworkResponseBody201Action}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/attach_to_network.POST.responses.201.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data PostServersIdActionsAttachToNetworkResponseBody201Action = PostServersIdActionsAttachToNetworkResponseBody201Action {
  -- | command: Command executed in the Action
  postServersIdActionsAttachToNetworkResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postServersIdActionsAttachToNetworkResponseBody201ActionError :: (GHC.Maybe.Maybe PostServersIdActionsAttachToNetworkResponseBody201ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postServersIdActionsAttachToNetworkResponseBody201ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , postServersIdActionsAttachToNetworkResponseBody201ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , postServersIdActionsAttachToNetworkResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postServersIdActionsAttachToNetworkResponseBody201ActionResources :: ([PostServersIdActionsAttachToNetworkResponseBody201ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postServersIdActionsAttachToNetworkResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postServersIdActionsAttachToNetworkResponseBody201ActionStatus :: PostServersIdActionsAttachToNetworkResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsAttachToNetworkResponseBody201Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionError obj : "finished" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionId obj : "progress" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionResources obj : "started" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsAttachToNetworkResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsAttachToNetworkResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostServersIdActionsAttachToNetworkResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'PostServersIdActionsAttachToNetworkResponseBody201Action' with all required fields.
mkPostServersIdActionsAttachToNetworkResponseBody201Action :: Data.Text.Internal.Text -- ^ 'postServersIdActionsAttachToNetworkResponseBody201ActionCommand'
  -> GHC.Maybe.Maybe PostServersIdActionsAttachToNetworkResponseBody201ActionError -- ^ 'postServersIdActionsAttachToNetworkResponseBody201ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postServersIdActionsAttachToNetworkResponseBody201ActionFinished'
  -> GHC.Types.Int -- ^ 'postServersIdActionsAttachToNetworkResponseBody201ActionId'
  -> GHC.Types.Double -- ^ 'postServersIdActionsAttachToNetworkResponseBody201ActionProgress'
  -> [PostServersIdActionsAttachToNetworkResponseBody201ActionResources] -- ^ 'postServersIdActionsAttachToNetworkResponseBody201ActionResources'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsAttachToNetworkResponseBody201ActionStarted'
  -> PostServersIdActionsAttachToNetworkResponseBody201ActionStatus -- ^ 'postServersIdActionsAttachToNetworkResponseBody201ActionStatus'
  -> PostServersIdActionsAttachToNetworkResponseBody201Action
mkPostServersIdActionsAttachToNetworkResponseBody201Action postServersIdActionsAttachToNetworkResponseBody201ActionCommand postServersIdActionsAttachToNetworkResponseBody201ActionError postServersIdActionsAttachToNetworkResponseBody201ActionFinished postServersIdActionsAttachToNetworkResponseBody201ActionId postServersIdActionsAttachToNetworkResponseBody201ActionProgress postServersIdActionsAttachToNetworkResponseBody201ActionResources postServersIdActionsAttachToNetworkResponseBody201ActionStarted postServersIdActionsAttachToNetworkResponseBody201ActionStatus = PostServersIdActionsAttachToNetworkResponseBody201Action{postServersIdActionsAttachToNetworkResponseBody201ActionCommand = postServersIdActionsAttachToNetworkResponseBody201ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  postServersIdActionsAttachToNetworkResponseBody201ActionError = postServersIdActionsAttachToNetworkResponseBody201ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  postServersIdActionsAttachToNetworkResponseBody201ActionFinished = postServersIdActionsAttachToNetworkResponseBody201ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  postServersIdActionsAttachToNetworkResponseBody201ActionId = postServersIdActionsAttachToNetworkResponseBody201ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  postServersIdActionsAttachToNetworkResponseBody201ActionProgress = postServersIdActionsAttachToNetworkResponseBody201ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  postServersIdActionsAttachToNetworkResponseBody201ActionResources = postServersIdActionsAttachToNetworkResponseBody201ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  postServersIdActionsAttachToNetworkResponseBody201ActionStarted = postServersIdActionsAttachToNetworkResponseBody201ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  postServersIdActionsAttachToNetworkResponseBody201ActionStatus = postServersIdActionsAttachToNetworkResponseBody201ActionStatus}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/attach_to_network.POST.responses.201.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data PostServersIdActionsAttachToNetworkResponseBody201ActionError = PostServersIdActionsAttachToNetworkResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postServersIdActionsAttachToNetworkResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postServersIdActionsAttachToNetworkResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsAttachToNetworkResponseBody201ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsAttachToNetworkResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsAttachToNetworkResponseBody201ActionError" (\obj -> (GHC.Base.pure PostServersIdActionsAttachToNetworkResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'PostServersIdActionsAttachToNetworkResponseBody201ActionError' with all required fields.
mkPostServersIdActionsAttachToNetworkResponseBody201ActionError :: Data.Text.Internal.Text -- ^ 'postServersIdActionsAttachToNetworkResponseBody201ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsAttachToNetworkResponseBody201ActionErrorMessage'
  -> PostServersIdActionsAttachToNetworkResponseBody201ActionError
mkPostServersIdActionsAttachToNetworkResponseBody201ActionError postServersIdActionsAttachToNetworkResponseBody201ActionErrorCode postServersIdActionsAttachToNetworkResponseBody201ActionErrorMessage = PostServersIdActionsAttachToNetworkResponseBody201ActionError{postServersIdActionsAttachToNetworkResponseBody201ActionErrorCode = postServersIdActionsAttachToNetworkResponseBody201ActionErrorCode,
                                                                                                                                                                                                                                                                       postServersIdActionsAttachToNetworkResponseBody201ActionErrorMessage = postServersIdActionsAttachToNetworkResponseBody201ActionErrorMessage}
-- | Defines the object schema located at @paths.\/servers\/{id}\/actions\/attach_to_network.POST.responses.201.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data PostServersIdActionsAttachToNetworkResponseBody201ActionResources = PostServersIdActionsAttachToNetworkResponseBody201ActionResources {
  -- | id: ID of the Resource
  postServersIdActionsAttachToNetworkResponseBody201ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , postServersIdActionsAttachToNetworkResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsAttachToNetworkResponseBody201ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postServersIdActionsAttachToNetworkResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsAttachToNetworkResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsAttachToNetworkResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostServersIdActionsAttachToNetworkResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PostServersIdActionsAttachToNetworkResponseBody201ActionResources' with all required fields.
mkPostServersIdActionsAttachToNetworkResponseBody201ActionResources :: GHC.Types.Int -- ^ 'postServersIdActionsAttachToNetworkResponseBody201ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'postServersIdActionsAttachToNetworkResponseBody201ActionResourcesType'
  -> PostServersIdActionsAttachToNetworkResponseBody201ActionResources
mkPostServersIdActionsAttachToNetworkResponseBody201ActionResources postServersIdActionsAttachToNetworkResponseBody201ActionResourcesId postServersIdActionsAttachToNetworkResponseBody201ActionResourcesType = PostServersIdActionsAttachToNetworkResponseBody201ActionResources{postServersIdActionsAttachToNetworkResponseBody201ActionResourcesId = postServersIdActionsAttachToNetworkResponseBody201ActionResourcesId,
                                                                                                                                                                                                                                                                                  postServersIdActionsAttachToNetworkResponseBody201ActionResourcesType = postServersIdActionsAttachToNetworkResponseBody201ActionResourcesType}
-- | Defines the enum schema located at @paths.\/servers\/{id}\/actions\/attach_to_network.POST.responses.201.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data PostServersIdActionsAttachToNetworkResponseBody201ActionStatus =
   PostServersIdActionsAttachToNetworkResponseBody201ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostServersIdActionsAttachToNetworkResponseBody201ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostServersIdActionsAttachToNetworkResponseBody201ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | PostServersIdActionsAttachToNetworkResponseBody201ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | PostServersIdActionsAttachToNetworkResponseBody201ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostServersIdActionsAttachToNetworkResponseBody201ActionStatus
    where toJSON (PostServersIdActionsAttachToNetworkResponseBody201ActionStatusOther val) = val
          toJSON (PostServersIdActionsAttachToNetworkResponseBody201ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostServersIdActionsAttachToNetworkResponseBody201ActionStatusEnumSuccess) = "success"
          toJSON (PostServersIdActionsAttachToNetworkResponseBody201ActionStatusEnumRunning) = "running"
          toJSON (PostServersIdActionsAttachToNetworkResponseBody201ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsAttachToNetworkResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> PostServersIdActionsAttachToNetworkResponseBody201ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> PostServersIdActionsAttachToNetworkResponseBody201ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> PostServersIdActionsAttachToNetworkResponseBody201ActionStatusEnumError
                                            | GHC.Base.otherwise -> PostServersIdActionsAttachToNetworkResponseBody201ActionStatusOther val)
-- | > POST /servers/{id}/actions/attach_to_network
-- 
-- The same as 'postServers_Id_ActionsAttachToNetwork' but accepts an explicit configuration.
postServers_Id_ActionsAttachToNetworkWithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsAttachToNetworkRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostServersIdActionsAttachToNetworkResponse) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsAttachToNetworkWithConfiguration config
                                                       id
                                                       body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsAttachToNetworkResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsAttachToNetworkResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               PostServersIdActionsAttachToNetworkResponseBody201)
                                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/attach_to_network"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /servers/{id}/actions/attach_to_network
-- 
-- The same as 'postServers_Id_ActionsAttachToNetwork' but returns the raw 'Data.ByteString.Char8.ByteString'.
postServers_Id_ActionsAttachToNetworkRaw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsAttachToNetworkRequestBody -- ^ The request body to send
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsAttachToNetworkRaw id
                                         body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/attach_to_network"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /servers/{id}/actions/attach_to_network
-- 
-- The same as 'postServers_Id_ActionsAttachToNetwork' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postServers_Id_ActionsAttachToNetworkWithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> GHC.Maybe.Maybe PostServersIdActionsAttachToNetworkRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postServers_Id_ActionsAttachToNetworkWithConfigurationRaw config
                                                          id
                                                          body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/attach_to_network"))) GHC.Base.mempty body HCloud.Common.RequestBodyEncodingJSON)
