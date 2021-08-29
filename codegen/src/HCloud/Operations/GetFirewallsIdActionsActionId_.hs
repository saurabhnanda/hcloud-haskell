-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getFirewalls_Id_Actions_ActionId_
module HCloud.Operations.GetFirewallsIdActionsActionId_ where

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

-- | > GET /firewalls/{id}/actions/{action_id}
-- 
-- Returns a specific Action for a Firewall.
getFirewalls_Id_Actions_ActionId_ :: forall m . HCloud.Common.MonadHTTP m => GetFirewallsIdActionsActionIdParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response GetFirewallsIdActionsActionIdResponse) -- ^ Monadic computation which returns the result of the operation
getFirewalls_Id_Actions_ActionId_ parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetFirewallsIdActionsActionIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetFirewallsIdActionsActionIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    GetFirewallsIdActionsActionIdResponseBody200)
                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/firewalls/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFirewallsIdActionsActionIdParametersPathId parameters))) GHC.Base.++ ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFirewallsIdActionsActionIdParametersPathActionId parameters))) GHC.Base.++ ""))))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/firewalls\/{id}\/actions\/{action_id}.GET.parameters@ in the specification.
-- 
-- 
data GetFirewallsIdActionsActionIdParameters = GetFirewallsIdActionsActionIdParameters {
  -- | pathAction_id: Represents the parameter named \'action_id\'
  -- 
  -- ID of the Action
  getFirewallsIdActionsActionIdParametersPathActionId :: GHC.Types.Int
  -- | pathId: Represents the parameter named \'id\'
  -- 
  -- ID of the Firewall
  , getFirewallsIdActionsActionIdParametersPathId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetFirewallsIdActionsActionIdParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("pathAction_id" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdParametersPathActionId obj : "pathId" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdParametersPathId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathAction_id" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdParametersPathActionId obj) GHC.Base.<> ("pathId" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdParametersPathId obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetFirewallsIdActionsActionIdParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFirewallsIdActionsActionIdParameters" (\obj -> (GHC.Base.pure GetFirewallsIdActionsActionIdParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAction_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId"))
-- | Create a new 'GetFirewallsIdActionsActionIdParameters' with all required fields.
mkGetFirewallsIdActionsActionIdParameters :: GHC.Types.Int -- ^ 'getFirewallsIdActionsActionIdParametersPathActionId'
  -> GHC.Types.Int -- ^ 'getFirewallsIdActionsActionIdParametersPathId'
  -> GetFirewallsIdActionsActionIdParameters
mkGetFirewallsIdActionsActionIdParameters getFirewallsIdActionsActionIdParametersPathActionId getFirewallsIdActionsActionIdParametersPathId = GetFirewallsIdActionsActionIdParameters{getFirewallsIdActionsActionIdParametersPathActionId = getFirewallsIdActionsActionIdParametersPathActionId,
                                                                                                                                                                                      getFirewallsIdActionsActionIdParametersPathId = getFirewallsIdActionsActionIdParametersPathId}
-- | Represents a response of the operation 'getFirewalls_Id_Actions_ActionId_'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetFirewallsIdActionsActionIdResponseError' is used.
data GetFirewallsIdActionsActionIdResponse =
   GetFirewallsIdActionsActionIdResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetFirewallsIdActionsActionIdResponse200 GetFirewallsIdActionsActionIdResponseBody200 -- ^ The \`action\` key contains the Firewall Action
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/firewalls\/{id}\/actions\/{action_id}.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetFirewallsIdActionsActionIdResponseBody200 = GetFirewallsIdActionsActionIdResponseBody200 {
  -- | action
  getFirewallsIdActionsActionIdResponseBody200Action :: GetFirewallsIdActionsActionIdResponseBody200Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetFirewallsIdActionsActionIdResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetFirewallsIdActionsActionIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFirewallsIdActionsActionIdResponseBody200" (\obj -> GHC.Base.pure GetFirewallsIdActionsActionIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'GetFirewallsIdActionsActionIdResponseBody200' with all required fields.
mkGetFirewallsIdActionsActionIdResponseBody200 :: GetFirewallsIdActionsActionIdResponseBody200Action -- ^ 'getFirewallsIdActionsActionIdResponseBody200Action'
  -> GetFirewallsIdActionsActionIdResponseBody200
mkGetFirewallsIdActionsActionIdResponseBody200 getFirewallsIdActionsActionIdResponseBody200Action = GetFirewallsIdActionsActionIdResponseBody200{getFirewallsIdActionsActionIdResponseBody200Action = getFirewallsIdActionsActionIdResponseBody200Action}
-- | Defines the object schema located at @paths.\/firewalls\/{id}\/actions\/{action_id}.GET.responses.200.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data GetFirewallsIdActionsActionIdResponseBody200Action = GetFirewallsIdActionsActionIdResponseBody200Action {
  -- | command: Command executed in the Action
  getFirewallsIdActionsActionIdResponseBody200ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , getFirewallsIdActionsActionIdResponseBody200ActionError :: (GHC.Maybe.Maybe GetFirewallsIdActionsActionIdResponseBody200ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , getFirewallsIdActionsActionIdResponseBody200ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , getFirewallsIdActionsActionIdResponseBody200ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , getFirewallsIdActionsActionIdResponseBody200ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , getFirewallsIdActionsActionIdResponseBody200ActionResources :: ([GetFirewallsIdActionsActionIdResponseBody200ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , getFirewallsIdActionsActionIdResponseBody200ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , getFirewallsIdActionsActionIdResponseBody200ActionStatus :: GetFirewallsIdActionsActionIdResponseBody200ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetFirewallsIdActionsActionIdResponseBody200Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionError obj : "finished" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionId obj : "progress" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionResources obj : "started" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetFirewallsIdActionsActionIdResponseBody200Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFirewallsIdActionsActionIdResponseBody200Action" (\obj -> (((((((GHC.Base.pure GetFirewallsIdActionsActionIdResponseBody200Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'GetFirewallsIdActionsActionIdResponseBody200Action' with all required fields.
mkGetFirewallsIdActionsActionIdResponseBody200Action :: Data.Text.Internal.Text -- ^ 'getFirewallsIdActionsActionIdResponseBody200ActionCommand'
  -> GHC.Maybe.Maybe GetFirewallsIdActionsActionIdResponseBody200ActionError -- ^ 'getFirewallsIdActionsActionIdResponseBody200ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'getFirewallsIdActionsActionIdResponseBody200ActionFinished'
  -> GHC.Types.Int -- ^ 'getFirewallsIdActionsActionIdResponseBody200ActionId'
  -> GHC.Types.Double -- ^ 'getFirewallsIdActionsActionIdResponseBody200ActionProgress'
  -> [GetFirewallsIdActionsActionIdResponseBody200ActionResources] -- ^ 'getFirewallsIdActionsActionIdResponseBody200ActionResources'
  -> Data.Text.Internal.Text -- ^ 'getFirewallsIdActionsActionIdResponseBody200ActionStarted'
  -> GetFirewallsIdActionsActionIdResponseBody200ActionStatus -- ^ 'getFirewallsIdActionsActionIdResponseBody200ActionStatus'
  -> GetFirewallsIdActionsActionIdResponseBody200Action
mkGetFirewallsIdActionsActionIdResponseBody200Action getFirewallsIdActionsActionIdResponseBody200ActionCommand getFirewallsIdActionsActionIdResponseBody200ActionError getFirewallsIdActionsActionIdResponseBody200ActionFinished getFirewallsIdActionsActionIdResponseBody200ActionId getFirewallsIdActionsActionIdResponseBody200ActionProgress getFirewallsIdActionsActionIdResponseBody200ActionResources getFirewallsIdActionsActionIdResponseBody200ActionStarted getFirewallsIdActionsActionIdResponseBody200ActionStatus = GetFirewallsIdActionsActionIdResponseBody200Action{getFirewallsIdActionsActionIdResponseBody200ActionCommand = getFirewallsIdActionsActionIdResponseBody200ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      getFirewallsIdActionsActionIdResponseBody200ActionError = getFirewallsIdActionsActionIdResponseBody200ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      getFirewallsIdActionsActionIdResponseBody200ActionFinished = getFirewallsIdActionsActionIdResponseBody200ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      getFirewallsIdActionsActionIdResponseBody200ActionId = getFirewallsIdActionsActionIdResponseBody200ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      getFirewallsIdActionsActionIdResponseBody200ActionProgress = getFirewallsIdActionsActionIdResponseBody200ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      getFirewallsIdActionsActionIdResponseBody200ActionResources = getFirewallsIdActionsActionIdResponseBody200ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      getFirewallsIdActionsActionIdResponseBody200ActionStarted = getFirewallsIdActionsActionIdResponseBody200ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      getFirewallsIdActionsActionIdResponseBody200ActionStatus = getFirewallsIdActionsActionIdResponseBody200ActionStatus}
-- | Defines the object schema located at @paths.\/firewalls\/{id}\/actions\/{action_id}.GET.responses.200.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data GetFirewallsIdActionsActionIdResponseBody200ActionError = GetFirewallsIdActionsActionIdResponseBody200ActionError {
  -- | code: Fixed machine readable code
  getFirewallsIdActionsActionIdResponseBody200ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , getFirewallsIdActionsActionIdResponseBody200ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetFirewallsIdActionsActionIdResponseBody200ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetFirewallsIdActionsActionIdResponseBody200ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFirewallsIdActionsActionIdResponseBody200ActionError" (\obj -> (GHC.Base.pure GetFirewallsIdActionsActionIdResponseBody200ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'GetFirewallsIdActionsActionIdResponseBody200ActionError' with all required fields.
mkGetFirewallsIdActionsActionIdResponseBody200ActionError :: Data.Text.Internal.Text -- ^ 'getFirewallsIdActionsActionIdResponseBody200ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'getFirewallsIdActionsActionIdResponseBody200ActionErrorMessage'
  -> GetFirewallsIdActionsActionIdResponseBody200ActionError
mkGetFirewallsIdActionsActionIdResponseBody200ActionError getFirewallsIdActionsActionIdResponseBody200ActionErrorCode getFirewallsIdActionsActionIdResponseBody200ActionErrorMessage = GetFirewallsIdActionsActionIdResponseBody200ActionError{getFirewallsIdActionsActionIdResponseBody200ActionErrorCode = getFirewallsIdActionsActionIdResponseBody200ActionErrorCode,
                                                                                                                                                                                                                                               getFirewallsIdActionsActionIdResponseBody200ActionErrorMessage = getFirewallsIdActionsActionIdResponseBody200ActionErrorMessage}
-- | Defines the object schema located at @paths.\/firewalls\/{id}\/actions\/{action_id}.GET.responses.200.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data GetFirewallsIdActionsActionIdResponseBody200ActionResources = GetFirewallsIdActionsActionIdResponseBody200ActionResources {
  -- | id: ID of the Resource
  getFirewallsIdActionsActionIdResponseBody200ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , getFirewallsIdActionsActionIdResponseBody200ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetFirewallsIdActionsActionIdResponseBody200ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= getFirewallsIdActionsActionIdResponseBody200ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetFirewallsIdActionsActionIdResponseBody200ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFirewallsIdActionsActionIdResponseBody200ActionResources" (\obj -> (GHC.Base.pure GetFirewallsIdActionsActionIdResponseBody200ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'GetFirewallsIdActionsActionIdResponseBody200ActionResources' with all required fields.
mkGetFirewallsIdActionsActionIdResponseBody200ActionResources :: GHC.Types.Int -- ^ 'getFirewallsIdActionsActionIdResponseBody200ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'getFirewallsIdActionsActionIdResponseBody200ActionResourcesType'
  -> GetFirewallsIdActionsActionIdResponseBody200ActionResources
mkGetFirewallsIdActionsActionIdResponseBody200ActionResources getFirewallsIdActionsActionIdResponseBody200ActionResourcesId getFirewallsIdActionsActionIdResponseBody200ActionResourcesType = GetFirewallsIdActionsActionIdResponseBody200ActionResources{getFirewallsIdActionsActionIdResponseBody200ActionResourcesId = getFirewallsIdActionsActionIdResponseBody200ActionResourcesId,
                                                                                                                                                                                                                                                          getFirewallsIdActionsActionIdResponseBody200ActionResourcesType = getFirewallsIdActionsActionIdResponseBody200ActionResourcesType}
-- | Defines the enum schema located at @paths.\/firewalls\/{id}\/actions\/{action_id}.GET.responses.200.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data GetFirewallsIdActionsActionIdResponseBody200ActionStatus =
   GetFirewallsIdActionsActionIdResponseBody200ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GetFirewallsIdActionsActionIdResponseBody200ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GetFirewallsIdActionsActionIdResponseBody200ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | GetFirewallsIdActionsActionIdResponseBody200ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | GetFirewallsIdActionsActionIdResponseBody200ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetFirewallsIdActionsActionIdResponseBody200ActionStatus
    where toJSON (GetFirewallsIdActionsActionIdResponseBody200ActionStatusOther val) = val
          toJSON (GetFirewallsIdActionsActionIdResponseBody200ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (GetFirewallsIdActionsActionIdResponseBody200ActionStatusEnumSuccess) = "success"
          toJSON (GetFirewallsIdActionsActionIdResponseBody200ActionStatusEnumRunning) = "running"
          toJSON (GetFirewallsIdActionsActionIdResponseBody200ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON GetFirewallsIdActionsActionIdResponseBody200ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> GetFirewallsIdActionsActionIdResponseBody200ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> GetFirewallsIdActionsActionIdResponseBody200ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> GetFirewallsIdActionsActionIdResponseBody200ActionStatusEnumError
                                            | GHC.Base.otherwise -> GetFirewallsIdActionsActionIdResponseBody200ActionStatusOther val)
-- | > GET /firewalls/{id}/actions/{action_id}
-- 
-- The same as 'getFirewalls_Id_Actions_ActionId_' but accepts an explicit configuration.
getFirewalls_Id_Actions_ActionId_WithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GetFirewallsIdActionsActionIdParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response GetFirewallsIdActionsActionIdResponse) -- ^ Monadic computation which returns the result of the operation
getFirewalls_Id_Actions_ActionId_WithConfiguration config
                                                   parameters = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetFirewallsIdActionsActionIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetFirewallsIdActionsActionIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     GetFirewallsIdActionsActionIdResponseBody200)
                                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/firewalls/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFirewallsIdActionsActionIdParametersPathId parameters))) GHC.Base.++ ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFirewallsIdActionsActionIdParametersPathActionId parameters))) GHC.Base.++ ""))))) GHC.Base.mempty)
-- | > GET /firewalls/{id}/actions/{action_id}
-- 
-- The same as 'getFirewalls_Id_Actions_ActionId_' but returns the raw 'Data.ByteString.Char8.ByteString'.
getFirewalls_Id_Actions_ActionId_Raw :: forall m . HCloud.Common.MonadHTTP m => GetFirewallsIdActionsActionIdParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getFirewalls_Id_Actions_ActionId_Raw parameters = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/firewalls/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFirewallsIdActionsActionIdParametersPathId parameters))) GHC.Base.++ ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFirewallsIdActionsActionIdParametersPathActionId parameters))) GHC.Base.++ ""))))) GHC.Base.mempty)
-- | > GET /firewalls/{id}/actions/{action_id}
-- 
-- The same as 'getFirewalls_Id_Actions_ActionId_' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getFirewalls_Id_Actions_ActionId_WithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GetFirewallsIdActionsActionIdParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getFirewalls_Id_Actions_ActionId_WithConfigurationRaw config
                                                      parameters = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/firewalls/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFirewallsIdActionsActionIdParametersPathId parameters))) GHC.Base.++ ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getFirewallsIdActionsActionIdParametersPathActionId parameters))) GHC.Base.++ ""))))) GHC.Base.mempty)
