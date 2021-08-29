-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postServers_Id_ActionsDisableRescue
module HCloud.Operations.PostServersIdActionsDisableRescue where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
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
import qualified GHC.Generics
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

-- | > POST /servers/{id}/actions/disable_rescue
-- 
-- Disables the Hetzner Rescue System for a Server. This makes a Server start from its disks on next reboot.
-- 
-- Rescue Mode is automatically disabled when you first boot into it or if you do not use it for 60 minutes.
-- 
-- Disabling rescue mode will not reboot your Server — you will have to do this yourself.
postServers_Id_ActionsDisableRescue :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Integer.Type.Integer                                                                                                                        -- ^ id: ID of the Server
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostServersIdActionsDisableRescueResponse))   -- ^ Monad containing the result of the operation
postServers_Id_ActionsDisableRescue config
                                    id = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsDisableRescueResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsDisableRescueResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     PostServersIdActionsDisableRescueResponseBody201)
                                                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/disable_rescue"))) [])
-- | > POST /servers/{id}/actions/disable_rescue
-- 
-- The same as 'postServers_Id_ActionsDisableRescue' but returns the raw 'Data.ByteString.Char8.ByteString'
postServers_Id_ActionsDisableRescueRaw :: forall m s . (HCloud.Common.MonadHTTP m,
                                                        HCloud.Common.SecurityScheme s) =>
                                          HCloud.Common.Configuration s ->
                                          GHC.Integer.Type.Integer ->
                                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postServers_Id_ActionsDisableRescueRaw config
                                       id = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/disable_rescue"))) [])
-- | > POST /servers/{id}/actions/disable_rescue
-- 
-- Monadic version of 'postServers_Id_ActionsDisableRescue' (use with 'HCloud.Common.runWithConfiguration')
postServers_Id_ActionsDisableRescueM :: forall m s . (HCloud.Common.MonadHTTP m,
                                                      HCloud.Common.SecurityScheme s) =>
                                        GHC.Integer.Type.Integer ->
                                        Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                           m
                                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                               (Network.HTTP.Client.Types.Response PostServersIdActionsDisableRescueResponse))
postServers_Id_ActionsDisableRescueM id = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostServersIdActionsDisableRescueResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostServersIdActionsDisableRescueResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      PostServersIdActionsDisableRescueResponseBody201)
                                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/disable_rescue"))) [])
-- | > POST /servers/{id}/actions/disable_rescue
-- 
-- Monadic version of 'postServers_Id_ActionsDisableRescueRaw' (use with 'HCloud.Common.runWithConfiguration')
postServers_Id_ActionsDisableRescueRawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                                         HCloud.Common.SecurityScheme s) =>
                                           GHC.Integer.Type.Integer ->
                                           Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                              m
                                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postServers_Id_ActionsDisableRescueRawM id = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/servers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/disable_rescue"))) [])
-- | Represents a response of the operation 'postServers_Id_ActionsDisableRescue'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostServersIdActionsDisableRescueResponseError' is used.
data PostServersIdActionsDisableRescueResponse =                                                   
   PostServersIdActionsDisableRescueResponseError GHC.Base.String                                  -- ^ Means either no matching case available or a parse error
  | PostServersIdActionsDisableRescueResponse201 PostServersIdActionsDisableRescueResponseBody201  -- ^ The \`action\` key in the reply contains an Action object with this structure
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema PostServersIdActionsDisableRescueResponseBody201
-- 
-- 
data PostServersIdActionsDisableRescueResponseBody201 = PostServersIdActionsDisableRescueResponseBody201 {
  -- | action
  postServersIdActionsDisableRescueResponseBody201Action :: PostServersIdActionsDisableRescueResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostServersIdActionsDisableRescueResponseBody201
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "action" (postServersIdActionsDisableRescueResponseBody201Action obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "action" (postServersIdActionsDisableRescueResponseBody201Action obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsDisableRescueResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsDisableRescueResponseBody201" (\obj -> GHC.Base.pure PostServersIdActionsDisableRescueResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Defines the data type for the schema PostServersIdActionsDisableRescueResponseBody201Action
-- 
-- 
data PostServersIdActionsDisableRescueResponseBody201Action = PostServersIdActionsDisableRescueResponseBody201Action {
  -- | command: Command executed in the Action
  postServersIdActionsDisableRescueResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postServersIdActionsDisableRescueResponseBody201ActionError :: PostServersIdActionsDisableRescueResponseBody201ActionError
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postServersIdActionsDisableRescueResponseBody201ActionFinished :: Data.Text.Internal.Text
  -- | id: ID of the Resource
  , postServersIdActionsDisableRescueResponseBody201ActionId :: GHC.Integer.Type.Integer
  -- | progress: Progress of Action in percent
  , postServersIdActionsDisableRescueResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postServersIdActionsDisableRescueResponseBody201ActionResources :: ([] PostServersIdActionsDisableRescueResponseBody201ActionResources)
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postServersIdActionsDisableRescueResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postServersIdActionsDisableRescueResponseBody201ActionStatus :: PostServersIdActionsDisableRescueResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostServersIdActionsDisableRescueResponseBody201Action
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "command" (postServersIdActionsDisableRescueResponseBody201ActionCommand obj) : (Data.Aeson..=) "error" (postServersIdActionsDisableRescueResponseBody201ActionError obj) : (Data.Aeson..=) "finished" (postServersIdActionsDisableRescueResponseBody201ActionFinished obj) : (Data.Aeson..=) "id" (postServersIdActionsDisableRescueResponseBody201ActionId obj) : (Data.Aeson..=) "progress" (postServersIdActionsDisableRescueResponseBody201ActionProgress obj) : (Data.Aeson..=) "resources" (postServersIdActionsDisableRescueResponseBody201ActionResources obj) : (Data.Aeson..=) "started" (postServersIdActionsDisableRescueResponseBody201ActionStarted obj) : (Data.Aeson..=) "status" (postServersIdActionsDisableRescueResponseBody201ActionStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "command" (postServersIdActionsDisableRescueResponseBody201ActionCommand obj) GHC.Base.<> ((Data.Aeson..=) "error" (postServersIdActionsDisableRescueResponseBody201ActionError obj) GHC.Base.<> ((Data.Aeson..=) "finished" (postServersIdActionsDisableRescueResponseBody201ActionFinished obj) GHC.Base.<> ((Data.Aeson..=) "id" (postServersIdActionsDisableRescueResponseBody201ActionId obj) GHC.Base.<> ((Data.Aeson..=) "progress" (postServersIdActionsDisableRescueResponseBody201ActionProgress obj) GHC.Base.<> ((Data.Aeson..=) "resources" (postServersIdActionsDisableRescueResponseBody201ActionResources obj) GHC.Base.<> ((Data.Aeson..=) "started" (postServersIdActionsDisableRescueResponseBody201ActionStarted obj) GHC.Base.<> (Data.Aeson..=) "status" (postServersIdActionsDisableRescueResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsDisableRescueResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsDisableRescueResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostServersIdActionsDisableRescueResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Defines the data type for the schema PostServersIdActionsDisableRescueResponseBody201ActionError
-- 
-- Error message for the Action if error occurred, otherwise null
data PostServersIdActionsDisableRescueResponseBody201ActionError = PostServersIdActionsDisableRescueResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postServersIdActionsDisableRescueResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postServersIdActionsDisableRescueResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostServersIdActionsDisableRescueResponseBody201ActionError
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "code" (postServersIdActionsDisableRescueResponseBody201ActionErrorCode obj) : (Data.Aeson..=) "message" (postServersIdActionsDisableRescueResponseBody201ActionErrorMessage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "code" (postServersIdActionsDisableRescueResponseBody201ActionErrorCode obj) GHC.Base.<> (Data.Aeson..=) "message" (postServersIdActionsDisableRescueResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsDisableRescueResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsDisableRescueResponseBody201ActionError" (\obj -> (GHC.Base.pure PostServersIdActionsDisableRescueResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Defines the data type for the schema PostServersIdActionsDisableRescueResponseBody201ActionResources
-- 
-- 
data PostServersIdActionsDisableRescueResponseBody201ActionResources = PostServersIdActionsDisableRescueResponseBody201ActionResources {
  -- | id: ID of the Resource
  postServersIdActionsDisableRescueResponseBody201ActionResourcesId :: GHC.Integer.Type.Integer
  -- | type: Type of resource referenced
  , postServersIdActionsDisableRescueResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostServersIdActionsDisableRescueResponseBody201ActionResources
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (postServersIdActionsDisableRescueResponseBody201ActionResourcesId obj) : (Data.Aeson..=) "type" (postServersIdActionsDisableRescueResponseBody201ActionResourcesType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (postServersIdActionsDisableRescueResponseBody201ActionResourcesId obj) GHC.Base.<> (Data.Aeson..=) "type" (postServersIdActionsDisableRescueResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostServersIdActionsDisableRescueResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostServersIdActionsDisableRescueResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostServersIdActionsDisableRescueResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema PostServersIdActionsDisableRescueResponseBody201ActionStatus
-- 
-- Status of the Action
data PostServersIdActionsDisableRescueResponseBody201ActionStatus
    = PostServersIdActionsDisableRescueResponseBody201ActionStatusEnumOther Data.Aeson.Types.Internal.Value
    | PostServersIdActionsDisableRescueResponseBody201ActionStatusEnumTyped Data.Text.Internal.Text
    | PostServersIdActionsDisableRescueResponseBody201ActionStatusEnumStringError
    | PostServersIdActionsDisableRescueResponseBody201ActionStatusEnumStringRunning
    | PostServersIdActionsDisableRescueResponseBody201ActionStatusEnumStringSuccess
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostServersIdActionsDisableRescueResponseBody201ActionStatus
    where toJSON (PostServersIdActionsDisableRescueResponseBody201ActionStatusEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostServersIdActionsDisableRescueResponseBody201ActionStatusEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostServersIdActionsDisableRescueResponseBody201ActionStatusEnumStringError) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error"
          toJSON (PostServersIdActionsDisableRescueResponseBody201ActionStatusEnumStringRunning) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running"
          toJSON (PostServersIdActionsDisableRescueResponseBody201ActionStatusEnumStringSuccess) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success"
instance Data.Aeson.FromJSON PostServersIdActionsDisableRescueResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error")
                                          then PostServersIdActionsDisableRescueResponseBody201ActionStatusEnumStringError
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running")
                                                then PostServersIdActionsDisableRescueResponseBody201ActionStatusEnumStringRunning
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success")
                                                      then PostServersIdActionsDisableRescueResponseBody201ActionStatusEnumStringSuccess
                                                      else PostServersIdActionsDisableRescueResponseBody201ActionStatusEnumOther val)