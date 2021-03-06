-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getFloatingIps_Id_Actions_ActionId_
module HCloud.Operations.GetFloatingIpsIdActionsActionId_ where

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

-- | > GET /floating_ips/{id}/actions/{action_id}
-- 
-- Returns a specific Action object for a Floating IP.
getFloatingIps_Id_Actions_ActionId_ :: forall m . HCloud.Common.MonadHTTP m => GetFloatingIpsIdActionsActionIdParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response GetFloatingIpsIdActionsActionIdResponse) -- ^ Monadic computation which returns the result of the operation
getFloatingIps_Id_Actions_ActionId_ parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetFloatingIpsIdActionsActionIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetFloatingIpsIdActionsActionIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          GetFloatingIpsIdActionsActionIdResponseBody200)
                                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/floating_ips/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFloatingIpsIdActionsActionIdParametersPathId parameters))) GHC.Base.++ ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFloatingIpsIdActionsActionIdParametersPathActionId parameters))) GHC.Base.++ ""))))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/floating_ips\/{id}\/actions\/{action_id}.GET.parameters@ in the specification.
-- 
-- 
data GetFloatingIpsIdActionsActionIdParameters = GetFloatingIpsIdActionsActionIdParameters {
  -- | pathAction_id: Represents the parameter named \'action_id\'
  -- 
  -- ID of the Action
  getFloatingIpsIdActionsActionIdParametersPathActionId :: GHC.Types.Int
  -- | pathId: Represents the parameter named \'id\'
  -- 
  -- ID of the Floating IP
  , getFloatingIpsIdActionsActionIdParametersPathId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetFloatingIpsIdActionsActionIdParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("pathAction_id" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdParametersPathActionId obj : "pathId" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdParametersPathId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathAction_id" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdParametersPathActionId obj) GHC.Base.<> ("pathId" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdParametersPathId obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetFloatingIpsIdActionsActionIdParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFloatingIpsIdActionsActionIdParameters" (\obj -> (GHC.Base.pure GetFloatingIpsIdActionsActionIdParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAction_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId"))
-- | Create a new 'GetFloatingIpsIdActionsActionIdParameters' with all required fields.
mkGetFloatingIpsIdActionsActionIdParameters :: GHC.Types.Int -- ^ 'getFloatingIpsIdActionsActionIdParametersPathActionId'
  -> GHC.Types.Int -- ^ 'getFloatingIpsIdActionsActionIdParametersPathId'
  -> GetFloatingIpsIdActionsActionIdParameters
mkGetFloatingIpsIdActionsActionIdParameters getFloatingIpsIdActionsActionIdParametersPathActionId getFloatingIpsIdActionsActionIdParametersPathId = GetFloatingIpsIdActionsActionIdParameters{getFloatingIpsIdActionsActionIdParametersPathActionId = getFloatingIpsIdActionsActionIdParametersPathActionId,
                                                                                                                                                                                              getFloatingIpsIdActionsActionIdParametersPathId = getFloatingIpsIdActionsActionIdParametersPathId}
-- | Represents a response of the operation 'getFloatingIps_Id_Actions_ActionId_'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetFloatingIpsIdActionsActionIdResponseError' is used.
data GetFloatingIpsIdActionsActionIdResponse =
   GetFloatingIpsIdActionsActionIdResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetFloatingIpsIdActionsActionIdResponse200 GetFloatingIpsIdActionsActionIdResponseBody200 -- ^ The \`action\` key in the reply has this structure
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/floating_ips\/{id}\/actions\/{action_id}.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetFloatingIpsIdActionsActionIdResponseBody200 = GetFloatingIpsIdActionsActionIdResponseBody200 {
  -- | action
  getFloatingIpsIdActionsActionIdResponseBody200Action :: GetFloatingIpsIdActionsActionIdResponseBody200Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetFloatingIpsIdActionsActionIdResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetFloatingIpsIdActionsActionIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFloatingIpsIdActionsActionIdResponseBody200" (\obj -> GHC.Base.pure GetFloatingIpsIdActionsActionIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'GetFloatingIpsIdActionsActionIdResponseBody200' with all required fields.
mkGetFloatingIpsIdActionsActionIdResponseBody200 :: GetFloatingIpsIdActionsActionIdResponseBody200Action -- ^ 'getFloatingIpsIdActionsActionIdResponseBody200Action'
  -> GetFloatingIpsIdActionsActionIdResponseBody200
mkGetFloatingIpsIdActionsActionIdResponseBody200 getFloatingIpsIdActionsActionIdResponseBody200Action = GetFloatingIpsIdActionsActionIdResponseBody200{getFloatingIpsIdActionsActionIdResponseBody200Action = getFloatingIpsIdActionsActionIdResponseBody200Action}
-- | Defines the object schema located at @paths.\/floating_ips\/{id}\/actions\/{action_id}.GET.responses.200.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data GetFloatingIpsIdActionsActionIdResponseBody200Action = GetFloatingIpsIdActionsActionIdResponseBody200Action {
  -- | command: Command executed in the Action
  getFloatingIpsIdActionsActionIdResponseBody200ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , getFloatingIpsIdActionsActionIdResponseBody200ActionError :: (GHC.Maybe.Maybe GetFloatingIpsIdActionsActionIdResponseBody200ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , getFloatingIpsIdActionsActionIdResponseBody200ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , getFloatingIpsIdActionsActionIdResponseBody200ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , getFloatingIpsIdActionsActionIdResponseBody200ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , getFloatingIpsIdActionsActionIdResponseBody200ActionResources :: ([GetFloatingIpsIdActionsActionIdResponseBody200ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , getFloatingIpsIdActionsActionIdResponseBody200ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , getFloatingIpsIdActionsActionIdResponseBody200ActionStatus :: GetFloatingIpsIdActionsActionIdResponseBody200ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetFloatingIpsIdActionsActionIdResponseBody200Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionError obj : "finished" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionId obj : "progress" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionResources obj : "started" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetFloatingIpsIdActionsActionIdResponseBody200Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFloatingIpsIdActionsActionIdResponseBody200Action" (\obj -> (((((((GHC.Base.pure GetFloatingIpsIdActionsActionIdResponseBody200Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'GetFloatingIpsIdActionsActionIdResponseBody200Action' with all required fields.
mkGetFloatingIpsIdActionsActionIdResponseBody200Action :: Data.Text.Internal.Text -- ^ 'getFloatingIpsIdActionsActionIdResponseBody200ActionCommand'
  -> GHC.Maybe.Maybe GetFloatingIpsIdActionsActionIdResponseBody200ActionError -- ^ 'getFloatingIpsIdActionsActionIdResponseBody200ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'getFloatingIpsIdActionsActionIdResponseBody200ActionFinished'
  -> GHC.Types.Int -- ^ 'getFloatingIpsIdActionsActionIdResponseBody200ActionId'
  -> GHC.Types.Double -- ^ 'getFloatingIpsIdActionsActionIdResponseBody200ActionProgress'
  -> [GetFloatingIpsIdActionsActionIdResponseBody200ActionResources] -- ^ 'getFloatingIpsIdActionsActionIdResponseBody200ActionResources'
  -> Data.Text.Internal.Text -- ^ 'getFloatingIpsIdActionsActionIdResponseBody200ActionStarted'
  -> GetFloatingIpsIdActionsActionIdResponseBody200ActionStatus -- ^ 'getFloatingIpsIdActionsActionIdResponseBody200ActionStatus'
  -> GetFloatingIpsIdActionsActionIdResponseBody200Action
mkGetFloatingIpsIdActionsActionIdResponseBody200Action getFloatingIpsIdActionsActionIdResponseBody200ActionCommand getFloatingIpsIdActionsActionIdResponseBody200ActionError getFloatingIpsIdActionsActionIdResponseBody200ActionFinished getFloatingIpsIdActionsActionIdResponseBody200ActionId getFloatingIpsIdActionsActionIdResponseBody200ActionProgress getFloatingIpsIdActionsActionIdResponseBody200ActionResources getFloatingIpsIdActionsActionIdResponseBody200ActionStarted getFloatingIpsIdActionsActionIdResponseBody200ActionStatus = GetFloatingIpsIdActionsActionIdResponseBody200Action{getFloatingIpsIdActionsActionIdResponseBody200ActionCommand = getFloatingIpsIdActionsActionIdResponseBody200ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          getFloatingIpsIdActionsActionIdResponseBody200ActionError = getFloatingIpsIdActionsActionIdResponseBody200ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          getFloatingIpsIdActionsActionIdResponseBody200ActionFinished = getFloatingIpsIdActionsActionIdResponseBody200ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          getFloatingIpsIdActionsActionIdResponseBody200ActionId = getFloatingIpsIdActionsActionIdResponseBody200ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          getFloatingIpsIdActionsActionIdResponseBody200ActionProgress = getFloatingIpsIdActionsActionIdResponseBody200ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          getFloatingIpsIdActionsActionIdResponseBody200ActionResources = getFloatingIpsIdActionsActionIdResponseBody200ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          getFloatingIpsIdActionsActionIdResponseBody200ActionStarted = getFloatingIpsIdActionsActionIdResponseBody200ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          getFloatingIpsIdActionsActionIdResponseBody200ActionStatus = getFloatingIpsIdActionsActionIdResponseBody200ActionStatus}
-- | Defines the object schema located at @paths.\/floating_ips\/{id}\/actions\/{action_id}.GET.responses.200.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data GetFloatingIpsIdActionsActionIdResponseBody200ActionError = GetFloatingIpsIdActionsActionIdResponseBody200ActionError {
  -- | code: Fixed machine readable code
  getFloatingIpsIdActionsActionIdResponseBody200ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , getFloatingIpsIdActionsActionIdResponseBody200ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetFloatingIpsIdActionsActionIdResponseBody200ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetFloatingIpsIdActionsActionIdResponseBody200ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFloatingIpsIdActionsActionIdResponseBody200ActionError" (\obj -> (GHC.Base.pure GetFloatingIpsIdActionsActionIdResponseBody200ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'GetFloatingIpsIdActionsActionIdResponseBody200ActionError' with all required fields.
mkGetFloatingIpsIdActionsActionIdResponseBody200ActionError :: Data.Text.Internal.Text -- ^ 'getFloatingIpsIdActionsActionIdResponseBody200ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'getFloatingIpsIdActionsActionIdResponseBody200ActionErrorMessage'
  -> GetFloatingIpsIdActionsActionIdResponseBody200ActionError
mkGetFloatingIpsIdActionsActionIdResponseBody200ActionError getFloatingIpsIdActionsActionIdResponseBody200ActionErrorCode getFloatingIpsIdActionsActionIdResponseBody200ActionErrorMessage = GetFloatingIpsIdActionsActionIdResponseBody200ActionError{getFloatingIpsIdActionsActionIdResponseBody200ActionErrorCode = getFloatingIpsIdActionsActionIdResponseBody200ActionErrorCode,
                                                                                                                                                                                                                                                       getFloatingIpsIdActionsActionIdResponseBody200ActionErrorMessage = getFloatingIpsIdActionsActionIdResponseBody200ActionErrorMessage}
-- | Defines the object schema located at @paths.\/floating_ips\/{id}\/actions\/{action_id}.GET.responses.200.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data GetFloatingIpsIdActionsActionIdResponseBody200ActionResources = GetFloatingIpsIdActionsActionIdResponseBody200ActionResources {
  -- | id: ID of the Resource
  getFloatingIpsIdActionsActionIdResponseBody200ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , getFloatingIpsIdActionsActionIdResponseBody200ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetFloatingIpsIdActionsActionIdResponseBody200ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= getFloatingIpsIdActionsActionIdResponseBody200ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetFloatingIpsIdActionsActionIdResponseBody200ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFloatingIpsIdActionsActionIdResponseBody200ActionResources" (\obj -> (GHC.Base.pure GetFloatingIpsIdActionsActionIdResponseBody200ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'GetFloatingIpsIdActionsActionIdResponseBody200ActionResources' with all required fields.
mkGetFloatingIpsIdActionsActionIdResponseBody200ActionResources :: GHC.Types.Int -- ^ 'getFloatingIpsIdActionsActionIdResponseBody200ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'getFloatingIpsIdActionsActionIdResponseBody200ActionResourcesType'
  -> GetFloatingIpsIdActionsActionIdResponseBody200ActionResources
mkGetFloatingIpsIdActionsActionIdResponseBody200ActionResources getFloatingIpsIdActionsActionIdResponseBody200ActionResourcesId getFloatingIpsIdActionsActionIdResponseBody200ActionResourcesType = GetFloatingIpsIdActionsActionIdResponseBody200ActionResources{getFloatingIpsIdActionsActionIdResponseBody200ActionResourcesId = getFloatingIpsIdActionsActionIdResponseBody200ActionResourcesId,
                                                                                                                                                                                                                                                                  getFloatingIpsIdActionsActionIdResponseBody200ActionResourcesType = getFloatingIpsIdActionsActionIdResponseBody200ActionResourcesType}
-- | Defines the enum schema located at @paths.\/floating_ips\/{id}\/actions\/{action_id}.GET.responses.200.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data GetFloatingIpsIdActionsActionIdResponseBody200ActionStatus =
   GetFloatingIpsIdActionsActionIdResponseBody200ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GetFloatingIpsIdActionsActionIdResponseBody200ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GetFloatingIpsIdActionsActionIdResponseBody200ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | GetFloatingIpsIdActionsActionIdResponseBody200ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | GetFloatingIpsIdActionsActionIdResponseBody200ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetFloatingIpsIdActionsActionIdResponseBody200ActionStatus
    where toJSON (GetFloatingIpsIdActionsActionIdResponseBody200ActionStatusOther val) = val
          toJSON (GetFloatingIpsIdActionsActionIdResponseBody200ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (GetFloatingIpsIdActionsActionIdResponseBody200ActionStatusEnumSuccess) = "success"
          toJSON (GetFloatingIpsIdActionsActionIdResponseBody200ActionStatusEnumRunning) = "running"
          toJSON (GetFloatingIpsIdActionsActionIdResponseBody200ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON GetFloatingIpsIdActionsActionIdResponseBody200ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> GetFloatingIpsIdActionsActionIdResponseBody200ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> GetFloatingIpsIdActionsActionIdResponseBody200ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> GetFloatingIpsIdActionsActionIdResponseBody200ActionStatusEnumError
                                            | GHC.Base.otherwise -> GetFloatingIpsIdActionsActionIdResponseBody200ActionStatusOther val)
-- | > GET /floating_ips/{id}/actions/{action_id}
-- 
-- The same as 'getFloatingIps_Id_Actions_ActionId_' but accepts an explicit configuration.
getFloatingIps_Id_Actions_ActionId_WithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GetFloatingIpsIdActionsActionIdParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response GetFloatingIpsIdActionsActionIdResponse) -- ^ Monadic computation which returns the result of the operation
getFloatingIps_Id_Actions_ActionId_WithConfiguration config
                                                     parameters = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetFloatingIpsIdActionsActionIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetFloatingIpsIdActionsActionIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           GetFloatingIpsIdActionsActionIdResponseBody200)
                                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/floating_ips/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFloatingIpsIdActionsActionIdParametersPathId parameters))) GHC.Base.++ ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFloatingIpsIdActionsActionIdParametersPathActionId parameters))) GHC.Base.++ ""))))) GHC.Base.mempty)
-- | > GET /floating_ips/{id}/actions/{action_id}
-- 
-- The same as 'getFloatingIps_Id_Actions_ActionId_' but returns the raw 'Data.ByteString.Char8.ByteString'.
getFloatingIps_Id_Actions_ActionId_Raw :: forall m . HCloud.Common.MonadHTTP m => GetFloatingIpsIdActionsActionIdParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getFloatingIps_Id_Actions_ActionId_Raw parameters = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/floating_ips/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFloatingIpsIdActionsActionIdParametersPathId parameters))) GHC.Base.++ ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFloatingIpsIdActionsActionIdParametersPathActionId parameters))) GHC.Base.++ ""))))) GHC.Base.mempty)
-- | > GET /floating_ips/{id}/actions/{action_id}
-- 
-- The same as 'getFloatingIps_Id_Actions_ActionId_' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getFloatingIps_Id_Actions_ActionId_WithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GetFloatingIpsIdActionsActionIdParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getFloatingIps_Id_Actions_ActionId_WithConfigurationRaw config
                                                        parameters = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/floating_ips/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFloatingIpsIdActionsActionIdParametersPathId parameters))) GHC.Base.++ ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFloatingIpsIdActionsActionIdParametersPathActionId parameters))) GHC.Base.++ ""))))) GHC.Base.mempty)
