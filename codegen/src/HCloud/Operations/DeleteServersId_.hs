-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation deleteServers_Id_
module HCloud.Operations.DeleteServersId_ where

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

-- | > DELETE /servers/{id}
-- 
-- Deletes a Server. This immediately removes the Server from your account, and it is no longer accessible.
deleteServers_Id_ :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response DeleteServersIdResponse) -- ^ Monadic computation which returns the result of the operation
deleteServers_Id_ id = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either DeleteServersIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteServersIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                DeleteServersIdResponseBody200)
                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | Represents a response of the operation 'deleteServers_Id_'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'DeleteServersIdResponseError' is used.
data DeleteServersIdResponse =
   DeleteServersIdResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | DeleteServersIdResponse200 DeleteServersIdResponseBody200 -- ^ The \`action\` key in the reply contains an Action object with this structure
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/servers\/{id}.DELETE.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data DeleteServersIdResponseBody200 = DeleteServersIdResponseBody200 {
  -- | action
  deleteServersIdResponseBody200Action :: (GHC.Maybe.Maybe DeleteServersIdResponseBody200Action)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeleteServersIdResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON DeleteServersIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteServersIdResponseBody200" (\obj -> GHC.Base.pure DeleteServersIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "action"))
-- | Create a new 'DeleteServersIdResponseBody200' with all required fields.
mkDeleteServersIdResponseBody200 :: DeleteServersIdResponseBody200
mkDeleteServersIdResponseBody200 = DeleteServersIdResponseBody200{deleteServersIdResponseBody200Action = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/servers\/{id}.DELETE.responses.200.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data DeleteServersIdResponseBody200Action = DeleteServersIdResponseBody200Action {
  -- | command: Command executed in the Action
  deleteServersIdResponseBody200ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , deleteServersIdResponseBody200ActionError :: (GHC.Maybe.Maybe DeleteServersIdResponseBody200ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , deleteServersIdResponseBody200ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , deleteServersIdResponseBody200ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , deleteServersIdResponseBody200ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , deleteServersIdResponseBody200ActionResources :: ([DeleteServersIdResponseBody200ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , deleteServersIdResponseBody200ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , deleteServersIdResponseBody200ActionStatus :: DeleteServersIdResponseBody200ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeleteServersIdResponseBody200Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionError obj : "finished" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionId obj : "progress" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionResources obj : "started" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteServersIdResponseBody200Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteServersIdResponseBody200Action" (\obj -> (((((((GHC.Base.pure DeleteServersIdResponseBody200Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'DeleteServersIdResponseBody200Action' with all required fields.
mkDeleteServersIdResponseBody200Action :: Data.Text.Internal.Text -- ^ 'deleteServersIdResponseBody200ActionCommand'
  -> GHC.Maybe.Maybe DeleteServersIdResponseBody200ActionError -- ^ 'deleteServersIdResponseBody200ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'deleteServersIdResponseBody200ActionFinished'
  -> GHC.Types.Int -- ^ 'deleteServersIdResponseBody200ActionId'
  -> GHC.Types.Double -- ^ 'deleteServersIdResponseBody200ActionProgress'
  -> [DeleteServersIdResponseBody200ActionResources] -- ^ 'deleteServersIdResponseBody200ActionResources'
  -> Data.Text.Internal.Text -- ^ 'deleteServersIdResponseBody200ActionStarted'
  -> DeleteServersIdResponseBody200ActionStatus -- ^ 'deleteServersIdResponseBody200ActionStatus'
  -> DeleteServersIdResponseBody200Action
mkDeleteServersIdResponseBody200Action deleteServersIdResponseBody200ActionCommand deleteServersIdResponseBody200ActionError deleteServersIdResponseBody200ActionFinished deleteServersIdResponseBody200ActionId deleteServersIdResponseBody200ActionProgress deleteServersIdResponseBody200ActionResources deleteServersIdResponseBody200ActionStarted deleteServersIdResponseBody200ActionStatus = DeleteServersIdResponseBody200Action{deleteServersIdResponseBody200ActionCommand = deleteServersIdResponseBody200ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                          deleteServersIdResponseBody200ActionError = deleteServersIdResponseBody200ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                          deleteServersIdResponseBody200ActionFinished = deleteServersIdResponseBody200ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                          deleteServersIdResponseBody200ActionId = deleteServersIdResponseBody200ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                          deleteServersIdResponseBody200ActionProgress = deleteServersIdResponseBody200ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                          deleteServersIdResponseBody200ActionResources = deleteServersIdResponseBody200ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                          deleteServersIdResponseBody200ActionStarted = deleteServersIdResponseBody200ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                          deleteServersIdResponseBody200ActionStatus = deleteServersIdResponseBody200ActionStatus}
-- | Defines the object schema located at @paths.\/servers\/{id}.DELETE.responses.200.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data DeleteServersIdResponseBody200ActionError = DeleteServersIdResponseBody200ActionError {
  -- | code: Fixed machine readable code
  deleteServersIdResponseBody200ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , deleteServersIdResponseBody200ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeleteServersIdResponseBody200ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteServersIdResponseBody200ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteServersIdResponseBody200ActionError" (\obj -> (GHC.Base.pure DeleteServersIdResponseBody200ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'DeleteServersIdResponseBody200ActionError' with all required fields.
mkDeleteServersIdResponseBody200ActionError :: Data.Text.Internal.Text -- ^ 'deleteServersIdResponseBody200ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'deleteServersIdResponseBody200ActionErrorMessage'
  -> DeleteServersIdResponseBody200ActionError
mkDeleteServersIdResponseBody200ActionError deleteServersIdResponseBody200ActionErrorCode deleteServersIdResponseBody200ActionErrorMessage = DeleteServersIdResponseBody200ActionError{deleteServersIdResponseBody200ActionErrorCode = deleteServersIdResponseBody200ActionErrorCode,
                                                                                                                                                                                       deleteServersIdResponseBody200ActionErrorMessage = deleteServersIdResponseBody200ActionErrorMessage}
-- | Defines the object schema located at @paths.\/servers\/{id}.DELETE.responses.200.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data DeleteServersIdResponseBody200ActionResources = DeleteServersIdResponseBody200ActionResources {
  -- | id: ID of the Resource
  deleteServersIdResponseBody200ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , deleteServersIdResponseBody200ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeleteServersIdResponseBody200ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= deleteServersIdResponseBody200ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON DeleteServersIdResponseBody200ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeleteServersIdResponseBody200ActionResources" (\obj -> (GHC.Base.pure DeleteServersIdResponseBody200ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'DeleteServersIdResponseBody200ActionResources' with all required fields.
mkDeleteServersIdResponseBody200ActionResources :: GHC.Types.Int -- ^ 'deleteServersIdResponseBody200ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'deleteServersIdResponseBody200ActionResourcesType'
  -> DeleteServersIdResponseBody200ActionResources
mkDeleteServersIdResponseBody200ActionResources deleteServersIdResponseBody200ActionResourcesId deleteServersIdResponseBody200ActionResourcesType = DeleteServersIdResponseBody200ActionResources{deleteServersIdResponseBody200ActionResourcesId = deleteServersIdResponseBody200ActionResourcesId,
                                                                                                                                                                                                  deleteServersIdResponseBody200ActionResourcesType = deleteServersIdResponseBody200ActionResourcesType}
-- | Defines the enum schema located at @paths.\/servers\/{id}.DELETE.responses.200.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data DeleteServersIdResponseBody200ActionStatus =
   DeleteServersIdResponseBody200ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | DeleteServersIdResponseBody200ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | DeleteServersIdResponseBody200ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | DeleteServersIdResponseBody200ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | DeleteServersIdResponseBody200ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON DeleteServersIdResponseBody200ActionStatus
    where toJSON (DeleteServersIdResponseBody200ActionStatusOther val) = val
          toJSON (DeleteServersIdResponseBody200ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (DeleteServersIdResponseBody200ActionStatusEnumSuccess) = "success"
          toJSON (DeleteServersIdResponseBody200ActionStatusEnumRunning) = "running"
          toJSON (DeleteServersIdResponseBody200ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON DeleteServersIdResponseBody200ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> DeleteServersIdResponseBody200ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> DeleteServersIdResponseBody200ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> DeleteServersIdResponseBody200ActionStatusEnumError
                                            | GHC.Base.otherwise -> DeleteServersIdResponseBody200ActionStatusOther val)
-- | > DELETE /servers/{id}
-- 
-- The same as 'deleteServers_Id_' but accepts an explicit configuration.
deleteServers_Id_WithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> m (Network.HTTP.Client.Types.Response DeleteServersIdResponse) -- ^ Monadic computation which returns the result of the operation
deleteServers_Id_WithConfiguration config
                                   id = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either DeleteServersIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> DeleteServersIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 DeleteServersIdResponseBody200)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | > DELETE /servers/{id}
-- 
-- The same as 'deleteServers_Id_' but returns the raw 'Data.ByteString.Char8.ByteString'.
deleteServers_Id_Raw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Server
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
deleteServers_Id_Raw id = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) GHC.Base.mempty)
-- | > DELETE /servers/{id}
-- 
-- The same as 'deleteServers_Id_' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
deleteServers_Id_WithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Server
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
deleteServers_Id_WithConfigurationRaw config
                                      id = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "DELETE") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) GHC.Base.mempty)
