-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getCertificates_Id_Actions_ActionId_
module HCloud.Operations.GetCertificatesIdActionsActionId_ where

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

-- | > GET /certificates/{id}/actions/{action_id}
-- 
-- Returns a specific Action for a Certificate. Only type \`managed\` Certificates have Actions.
getCertificates_Id_Actions_ActionId_ :: forall m . HCloud.Common.MonadHTTP m => GetCertificatesIdActionsActionIdParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response GetCertificatesIdActionsActionIdResponse) -- ^ Monadic computation which returns the result of the operation
getCertificates_Id_Actions_ActionId_ parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetCertificatesIdActionsActionIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetCertificatesIdActionsActionIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                             GetCertificatesIdActionsActionIdResponseBody200)
                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/certificates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getCertificatesIdActionsActionIdParametersPathId parameters))) GHC.Base.++ ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getCertificatesIdActionsActionIdParametersPathActionId parameters))) GHC.Base.++ ""))))) GHC.Base.mempty)
-- | Defines the object schema located at @paths.\/certificates\/{id}\/actions\/{action_id}.GET.parameters@ in the specification.
-- 
-- 
data GetCertificatesIdActionsActionIdParameters = GetCertificatesIdActionsActionIdParameters {
  -- | pathAction_id: Represents the parameter named \'action_id\'
  -- 
  -- ID of the Action
  getCertificatesIdActionsActionIdParametersPathActionId :: GHC.Types.Int
  -- | pathId: Represents the parameter named \'id\'
  -- 
  -- ID of the Certificate
  , getCertificatesIdActionsActionIdParametersPathId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetCertificatesIdActionsActionIdParameters
    where toJSON obj = Data.Aeson.Types.Internal.object ("pathAction_id" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdParametersPathActionId obj : "pathId" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdParametersPathId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathAction_id" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdParametersPathActionId obj) GHC.Base.<> ("pathId" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdParametersPathId obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetCertificatesIdActionsActionIdParameters
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCertificatesIdActionsActionIdParameters" (\obj -> (GHC.Base.pure GetCertificatesIdActionsActionIdParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathAction_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId"))
-- | Create a new 'GetCertificatesIdActionsActionIdParameters' with all required fields.
mkGetCertificatesIdActionsActionIdParameters :: GHC.Types.Int -- ^ 'getCertificatesIdActionsActionIdParametersPathActionId'
  -> GHC.Types.Int -- ^ 'getCertificatesIdActionsActionIdParametersPathId'
  -> GetCertificatesIdActionsActionIdParameters
mkGetCertificatesIdActionsActionIdParameters getCertificatesIdActionsActionIdParametersPathActionId getCertificatesIdActionsActionIdParametersPathId = GetCertificatesIdActionsActionIdParameters{getCertificatesIdActionsActionIdParametersPathActionId = getCertificatesIdActionsActionIdParametersPathActionId,
                                                                                                                                                                                                  getCertificatesIdActionsActionIdParametersPathId = getCertificatesIdActionsActionIdParametersPathId}
-- | Represents a response of the operation 'getCertificates_Id_Actions_ActionId_'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCertificatesIdActionsActionIdResponseError' is used.
data GetCertificatesIdActionsActionIdResponse =
   GetCertificatesIdActionsActionIdResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetCertificatesIdActionsActionIdResponse200 GetCertificatesIdActionsActionIdResponseBody200 -- ^ The \`action\` key contains the Certificate Action
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/certificates\/{id}\/actions\/{action_id}.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetCertificatesIdActionsActionIdResponseBody200 = GetCertificatesIdActionsActionIdResponseBody200 {
  -- | action
  getCertificatesIdActionsActionIdResponseBody200Action :: GetCertificatesIdActionsActionIdResponseBody200Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetCertificatesIdActionsActionIdResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON GetCertificatesIdActionsActionIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCertificatesIdActionsActionIdResponseBody200" (\obj -> GHC.Base.pure GetCertificatesIdActionsActionIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'GetCertificatesIdActionsActionIdResponseBody200' with all required fields.
mkGetCertificatesIdActionsActionIdResponseBody200 :: GetCertificatesIdActionsActionIdResponseBody200Action -- ^ 'getCertificatesIdActionsActionIdResponseBody200Action'
  -> GetCertificatesIdActionsActionIdResponseBody200
mkGetCertificatesIdActionsActionIdResponseBody200 getCertificatesIdActionsActionIdResponseBody200Action = GetCertificatesIdActionsActionIdResponseBody200{getCertificatesIdActionsActionIdResponseBody200Action = getCertificatesIdActionsActionIdResponseBody200Action}
-- | Defines the object schema located at @paths.\/certificates\/{id}\/actions\/{action_id}.GET.responses.200.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data GetCertificatesIdActionsActionIdResponseBody200Action = GetCertificatesIdActionsActionIdResponseBody200Action {
  -- | command: Command executed in the Action
  getCertificatesIdActionsActionIdResponseBody200ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , getCertificatesIdActionsActionIdResponseBody200ActionError :: (GHC.Maybe.Maybe GetCertificatesIdActionsActionIdResponseBody200ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , getCertificatesIdActionsActionIdResponseBody200ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , getCertificatesIdActionsActionIdResponseBody200ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , getCertificatesIdActionsActionIdResponseBody200ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , getCertificatesIdActionsActionIdResponseBody200ActionResources :: ([GetCertificatesIdActionsActionIdResponseBody200ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , getCertificatesIdActionsActionIdResponseBody200ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , getCertificatesIdActionsActionIdResponseBody200ActionStatus :: GetCertificatesIdActionsActionIdResponseBody200ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetCertificatesIdActionsActionIdResponseBody200Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionError obj : "finished" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionId obj : "progress" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionResources obj : "started" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCertificatesIdActionsActionIdResponseBody200Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCertificatesIdActionsActionIdResponseBody200Action" (\obj -> (((((((GHC.Base.pure GetCertificatesIdActionsActionIdResponseBody200Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'GetCertificatesIdActionsActionIdResponseBody200Action' with all required fields.
mkGetCertificatesIdActionsActionIdResponseBody200Action :: Data.Text.Internal.Text -- ^ 'getCertificatesIdActionsActionIdResponseBody200ActionCommand'
  -> GHC.Maybe.Maybe GetCertificatesIdActionsActionIdResponseBody200ActionError -- ^ 'getCertificatesIdActionsActionIdResponseBody200ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'getCertificatesIdActionsActionIdResponseBody200ActionFinished'
  -> GHC.Types.Int -- ^ 'getCertificatesIdActionsActionIdResponseBody200ActionId'
  -> GHC.Types.Double -- ^ 'getCertificatesIdActionsActionIdResponseBody200ActionProgress'
  -> [GetCertificatesIdActionsActionIdResponseBody200ActionResources] -- ^ 'getCertificatesIdActionsActionIdResponseBody200ActionResources'
  -> Data.Text.Internal.Text -- ^ 'getCertificatesIdActionsActionIdResponseBody200ActionStarted'
  -> GetCertificatesIdActionsActionIdResponseBody200ActionStatus -- ^ 'getCertificatesIdActionsActionIdResponseBody200ActionStatus'
  -> GetCertificatesIdActionsActionIdResponseBody200Action
mkGetCertificatesIdActionsActionIdResponseBody200Action getCertificatesIdActionsActionIdResponseBody200ActionCommand getCertificatesIdActionsActionIdResponseBody200ActionError getCertificatesIdActionsActionIdResponseBody200ActionFinished getCertificatesIdActionsActionIdResponseBody200ActionId getCertificatesIdActionsActionIdResponseBody200ActionProgress getCertificatesIdActionsActionIdResponseBody200ActionResources getCertificatesIdActionsActionIdResponseBody200ActionStarted getCertificatesIdActionsActionIdResponseBody200ActionStatus = GetCertificatesIdActionsActionIdResponseBody200Action{getCertificatesIdActionsActionIdResponseBody200ActionCommand = getCertificatesIdActionsActionIdResponseBody200ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    getCertificatesIdActionsActionIdResponseBody200ActionError = getCertificatesIdActionsActionIdResponseBody200ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    getCertificatesIdActionsActionIdResponseBody200ActionFinished = getCertificatesIdActionsActionIdResponseBody200ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    getCertificatesIdActionsActionIdResponseBody200ActionId = getCertificatesIdActionsActionIdResponseBody200ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    getCertificatesIdActionsActionIdResponseBody200ActionProgress = getCertificatesIdActionsActionIdResponseBody200ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    getCertificatesIdActionsActionIdResponseBody200ActionResources = getCertificatesIdActionsActionIdResponseBody200ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    getCertificatesIdActionsActionIdResponseBody200ActionStarted = getCertificatesIdActionsActionIdResponseBody200ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    getCertificatesIdActionsActionIdResponseBody200ActionStatus = getCertificatesIdActionsActionIdResponseBody200ActionStatus}
-- | Defines the object schema located at @paths.\/certificates\/{id}\/actions\/{action_id}.GET.responses.200.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data GetCertificatesIdActionsActionIdResponseBody200ActionError = GetCertificatesIdActionsActionIdResponseBody200ActionError {
  -- | code: Fixed machine readable code
  getCertificatesIdActionsActionIdResponseBody200ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , getCertificatesIdActionsActionIdResponseBody200ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetCertificatesIdActionsActionIdResponseBody200ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetCertificatesIdActionsActionIdResponseBody200ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCertificatesIdActionsActionIdResponseBody200ActionError" (\obj -> (GHC.Base.pure GetCertificatesIdActionsActionIdResponseBody200ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'GetCertificatesIdActionsActionIdResponseBody200ActionError' with all required fields.
mkGetCertificatesIdActionsActionIdResponseBody200ActionError :: Data.Text.Internal.Text -- ^ 'getCertificatesIdActionsActionIdResponseBody200ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'getCertificatesIdActionsActionIdResponseBody200ActionErrorMessage'
  -> GetCertificatesIdActionsActionIdResponseBody200ActionError
mkGetCertificatesIdActionsActionIdResponseBody200ActionError getCertificatesIdActionsActionIdResponseBody200ActionErrorCode getCertificatesIdActionsActionIdResponseBody200ActionErrorMessage = GetCertificatesIdActionsActionIdResponseBody200ActionError{getCertificatesIdActionsActionIdResponseBody200ActionErrorCode = getCertificatesIdActionsActionIdResponseBody200ActionErrorCode,
                                                                                                                                                                                                                                                           getCertificatesIdActionsActionIdResponseBody200ActionErrorMessage = getCertificatesIdActionsActionIdResponseBody200ActionErrorMessage}
-- | Defines the object schema located at @paths.\/certificates\/{id}\/actions\/{action_id}.GET.responses.200.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data GetCertificatesIdActionsActionIdResponseBody200ActionResources = GetCertificatesIdActionsActionIdResponseBody200ActionResources {
  -- | id: ID of the Resource
  getCertificatesIdActionsActionIdResponseBody200ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , getCertificatesIdActionsActionIdResponseBody200ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetCertificatesIdActionsActionIdResponseBody200ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= getCertificatesIdActionsActionIdResponseBody200ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetCertificatesIdActionsActionIdResponseBody200ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCertificatesIdActionsActionIdResponseBody200ActionResources" (\obj -> (GHC.Base.pure GetCertificatesIdActionsActionIdResponseBody200ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'GetCertificatesIdActionsActionIdResponseBody200ActionResources' with all required fields.
mkGetCertificatesIdActionsActionIdResponseBody200ActionResources :: GHC.Types.Int -- ^ 'getCertificatesIdActionsActionIdResponseBody200ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'getCertificatesIdActionsActionIdResponseBody200ActionResourcesType'
  -> GetCertificatesIdActionsActionIdResponseBody200ActionResources
mkGetCertificatesIdActionsActionIdResponseBody200ActionResources getCertificatesIdActionsActionIdResponseBody200ActionResourcesId getCertificatesIdActionsActionIdResponseBody200ActionResourcesType = GetCertificatesIdActionsActionIdResponseBody200ActionResources{getCertificatesIdActionsActionIdResponseBody200ActionResourcesId = getCertificatesIdActionsActionIdResponseBody200ActionResourcesId,
                                                                                                                                                                                                                                                                      getCertificatesIdActionsActionIdResponseBody200ActionResourcesType = getCertificatesIdActionsActionIdResponseBody200ActionResourcesType}
-- | Defines the enum schema located at @paths.\/certificates\/{id}\/actions\/{action_id}.GET.responses.200.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data GetCertificatesIdActionsActionIdResponseBody200ActionStatus =
   GetCertificatesIdActionsActionIdResponseBody200ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GetCertificatesIdActionsActionIdResponseBody200ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GetCertificatesIdActionsActionIdResponseBody200ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | GetCertificatesIdActionsActionIdResponseBody200ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | GetCertificatesIdActionsActionIdResponseBody200ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetCertificatesIdActionsActionIdResponseBody200ActionStatus
    where toJSON (GetCertificatesIdActionsActionIdResponseBody200ActionStatusOther val) = val
          toJSON (GetCertificatesIdActionsActionIdResponseBody200ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (GetCertificatesIdActionsActionIdResponseBody200ActionStatusEnumSuccess) = "success"
          toJSON (GetCertificatesIdActionsActionIdResponseBody200ActionStatusEnumRunning) = "running"
          toJSON (GetCertificatesIdActionsActionIdResponseBody200ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON GetCertificatesIdActionsActionIdResponseBody200ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> GetCertificatesIdActionsActionIdResponseBody200ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> GetCertificatesIdActionsActionIdResponseBody200ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> GetCertificatesIdActionsActionIdResponseBody200ActionStatusEnumError
                                            | GHC.Base.otherwise -> GetCertificatesIdActionsActionIdResponseBody200ActionStatusOther val)
-- | > GET /certificates/{id}/actions/{action_id}
-- 
-- The same as 'getCertificates_Id_Actions_ActionId_' but accepts an explicit configuration.
getCertificates_Id_Actions_ActionId_WithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GetCertificatesIdActionsActionIdParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response GetCertificatesIdActionsActionIdResponse) -- ^ Monadic computation which returns the result of the operation
getCertificates_Id_Actions_ActionId_WithConfiguration config
                                                      parameters = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetCertificatesIdActionsActionIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetCertificatesIdActionsActionIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              GetCertificatesIdActionsActionIdResponseBody200)
                                                                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/certificates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getCertificatesIdActionsActionIdParametersPathId parameters))) GHC.Base.++ ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getCertificatesIdActionsActionIdParametersPathActionId parameters))) GHC.Base.++ ""))))) GHC.Base.mempty)
-- | > GET /certificates/{id}/actions/{action_id}
-- 
-- The same as 'getCertificates_Id_Actions_ActionId_' but returns the raw 'Data.ByteString.Char8.ByteString'.
getCertificates_Id_Actions_ActionId_Raw :: forall m . HCloud.Common.MonadHTTP m => GetCertificatesIdActionsActionIdParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getCertificates_Id_Actions_ActionId_Raw parameters = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/certificates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getCertificatesIdActionsActionIdParametersPathId parameters))) GHC.Base.++ ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getCertificatesIdActionsActionIdParametersPathActionId parameters))) GHC.Base.++ ""))))) GHC.Base.mempty)
-- | > GET /certificates/{id}/actions/{action_id}
-- 
-- The same as 'getCertificates_Id_Actions_ActionId_' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
getCertificates_Id_Actions_ActionId_WithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GetCertificatesIdActionsActionIdParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
getCertificates_Id_Actions_ActionId_WithConfigurationRaw config
                                                         parameters = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/certificates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getCertificatesIdActionsActionIdParametersPathId parameters))) GHC.Base.++ ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel (getCertificatesIdActionsActionIdParametersPathActionId parameters))) GHC.Base.++ ""))))) GHC.Base.mempty)
