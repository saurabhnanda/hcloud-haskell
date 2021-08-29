-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postLoadBalancers_Id_ActionsChangeType
module HCloud.Operations.PostLoadBalancersIdActionsChangeType where

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

-- | > POST /load_balancers/{id}/actions/change_type
-- 
-- Changes the type (Max Services, Max Targets and Max Connections) of a Load Balancer.
-- 
-- **Call specific error codes**
-- 
-- | Code                         | Description                                                     |
-- |------------------------------|-----------------------------------------------------------------|
-- | \`invalid_load_balancer_type\` | The Load Balancer type does not fit for the given Load Balancer |
postLoadBalancers_Id_ActionsChangeType :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Integer.Type.Integer                                                                                                                           -- ^ id: ID of the Load Balancer
  -> GHC.Maybe.Maybe PostLoadBalancersIdActionsChangeTypeRequestBody                                                                                    -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostLoadBalancersIdActionsChangeTypeResponse))   -- ^ Monad containing the result of the operation
postLoadBalancers_Id_ActionsChangeType config
                                       id
                                       body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostLoadBalancersIdActionsChangeTypeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostLoadBalancersIdActionsChangeTypeResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                PostLoadBalancersIdActionsChangeTypeResponseBody201)
                                                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/load_balancers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_type"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /load_balancers/{id}/actions/change_type
-- 
-- The same as 'postLoadBalancers_Id_ActionsChangeType' but returns the raw 'Data.ByteString.Char8.ByteString'
postLoadBalancers_Id_ActionsChangeTypeRaw :: forall m s . (HCloud.Common.MonadHTTP m,
                                                           HCloud.Common.SecurityScheme s) =>
                                             HCloud.Common.Configuration s ->
                                             GHC.Integer.Type.Integer ->
                                             GHC.Maybe.Maybe PostLoadBalancersIdActionsChangeTypeRequestBody ->
                                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postLoadBalancers_Id_ActionsChangeTypeRaw config
                                          id
                                          body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/load_balancers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_type"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /load_balancers/{id}/actions/change_type
-- 
-- Monadic version of 'postLoadBalancers_Id_ActionsChangeType' (use with 'HCloud.Common.runWithConfiguration')
postLoadBalancers_Id_ActionsChangeTypeM :: forall m s . (HCloud.Common.MonadHTTP m,
                                                         HCloud.Common.SecurityScheme s) =>
                                           GHC.Integer.Type.Integer ->
                                           GHC.Maybe.Maybe PostLoadBalancersIdActionsChangeTypeRequestBody ->
                                           Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                              m
                                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                  (Network.HTTP.Client.Types.Response PostLoadBalancersIdActionsChangeTypeResponse))
postLoadBalancers_Id_ActionsChangeTypeM id
                                        body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostLoadBalancersIdActionsChangeTypeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostLoadBalancersIdActionsChangeTypeResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 PostLoadBalancersIdActionsChangeTypeResponseBody201)
                                                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/load_balancers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_type"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /load_balancers/{id}/actions/change_type
-- 
-- Monadic version of 'postLoadBalancers_Id_ActionsChangeTypeRaw' (use with 'HCloud.Common.runWithConfiguration')
postLoadBalancers_Id_ActionsChangeTypeRawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                                            HCloud.Common.SecurityScheme s) =>
                                              GHC.Integer.Type.Integer ->
                                              GHC.Maybe.Maybe PostLoadBalancersIdActionsChangeTypeRequestBody ->
                                              Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                                 m
                                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postLoadBalancers_Id_ActionsChangeTypeRawM id
                                           body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/load_balancers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_type"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema postLoadBalancers_Id_ActionsChangeTypeRequestBody
-- 
-- 
data PostLoadBalancersIdActionsChangeTypeRequestBody = PostLoadBalancersIdActionsChangeTypeRequestBody {
  -- | load_balancer_type: ID or name of Load Balancer type the Load Balancer should migrate to
  postLoadBalancersIdActionsChangeTypeRequestBodyLoadBalancerType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostLoadBalancersIdActionsChangeTypeRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "load_balancer_type" (postLoadBalancersIdActionsChangeTypeRequestBodyLoadBalancerType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "load_balancer_type" (postLoadBalancersIdActionsChangeTypeRequestBodyLoadBalancerType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsChangeTypeRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLoadBalancersIdActionsChangeTypeRequestBody" (\obj -> GHC.Base.pure PostLoadBalancersIdActionsChangeTypeRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "load_balancer_type"))
-- | Represents a response of the operation 'postLoadBalancers_Id_ActionsChangeType'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostLoadBalancersIdActionsChangeTypeResponseError' is used.
data PostLoadBalancersIdActionsChangeTypeResponse =                                                      
   PostLoadBalancersIdActionsChangeTypeResponseError GHC.Base.String                                     -- ^ Means either no matching case available or a parse error
  | PostLoadBalancersIdActionsChangeTypeResponse201 PostLoadBalancersIdActionsChangeTypeResponseBody201  -- ^ The \`action\` key contains the \`change_load_balancer_type\` Action
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema PostLoadBalancersIdActionsChangeTypeResponseBody201
-- 
-- 
data PostLoadBalancersIdActionsChangeTypeResponseBody201 = PostLoadBalancersIdActionsChangeTypeResponseBody201 {
  -- | action
  postLoadBalancersIdActionsChangeTypeResponseBody201Action :: PostLoadBalancersIdActionsChangeTypeResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostLoadBalancersIdActionsChangeTypeResponseBody201
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "action" (postLoadBalancersIdActionsChangeTypeResponseBody201Action obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "action" (postLoadBalancersIdActionsChangeTypeResponseBody201Action obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsChangeTypeResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLoadBalancersIdActionsChangeTypeResponseBody201" (\obj -> GHC.Base.pure PostLoadBalancersIdActionsChangeTypeResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Defines the data type for the schema PostLoadBalancersIdActionsChangeTypeResponseBody201Action
-- 
-- 
data PostLoadBalancersIdActionsChangeTypeResponseBody201Action = PostLoadBalancersIdActionsChangeTypeResponseBody201Action {
  -- | command: Command executed in the Action
  postLoadBalancersIdActionsChangeTypeResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postLoadBalancersIdActionsChangeTypeResponseBody201ActionError :: PostLoadBalancersIdActionsChangeTypeResponseBody201ActionError
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postLoadBalancersIdActionsChangeTypeResponseBody201ActionFinished :: Data.Text.Internal.Text
  -- | id: ID of the Resource
  , postLoadBalancersIdActionsChangeTypeResponseBody201ActionId :: GHC.Integer.Type.Integer
  -- | progress: Progress of Action in percent
  , postLoadBalancersIdActionsChangeTypeResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postLoadBalancersIdActionsChangeTypeResponseBody201ActionResources :: ([] PostLoadBalancersIdActionsChangeTypeResponseBody201ActionResources)
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postLoadBalancersIdActionsChangeTypeResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postLoadBalancersIdActionsChangeTypeResponseBody201ActionStatus :: PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostLoadBalancersIdActionsChangeTypeResponseBody201Action
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "command" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionCommand obj) : (Data.Aeson..=) "error" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionError obj) : (Data.Aeson..=) "finished" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionFinished obj) : (Data.Aeson..=) "id" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionId obj) : (Data.Aeson..=) "progress" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionProgress obj) : (Data.Aeson..=) "resources" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionResources obj) : (Data.Aeson..=) "started" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionStarted obj) : (Data.Aeson..=) "status" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "command" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionCommand obj) GHC.Base.<> ((Data.Aeson..=) "error" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionError obj) GHC.Base.<> ((Data.Aeson..=) "finished" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionFinished obj) GHC.Base.<> ((Data.Aeson..=) "id" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionId obj) GHC.Base.<> ((Data.Aeson..=) "progress" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionProgress obj) GHC.Base.<> ((Data.Aeson..=) "resources" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionResources obj) GHC.Base.<> ((Data.Aeson..=) "started" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionStarted obj) GHC.Base.<> (Data.Aeson..=) "status" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsChangeTypeResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLoadBalancersIdActionsChangeTypeResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostLoadBalancersIdActionsChangeTypeResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Defines the data type for the schema PostLoadBalancersIdActionsChangeTypeResponseBody201ActionError
-- 
-- Error message for the Action if error occurred, otherwise null
data PostLoadBalancersIdActionsChangeTypeResponseBody201ActionError = PostLoadBalancersIdActionsChangeTypeResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postLoadBalancersIdActionsChangeTypeResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postLoadBalancersIdActionsChangeTypeResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostLoadBalancersIdActionsChangeTypeResponseBody201ActionError
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "code" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionErrorCode obj) : (Data.Aeson..=) "message" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionErrorMessage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "code" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionErrorCode obj) GHC.Base.<> (Data.Aeson..=) "message" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsChangeTypeResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLoadBalancersIdActionsChangeTypeResponseBody201ActionError" (\obj -> (GHC.Base.pure PostLoadBalancersIdActionsChangeTypeResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Defines the data type for the schema PostLoadBalancersIdActionsChangeTypeResponseBody201ActionResources
-- 
-- 
data PostLoadBalancersIdActionsChangeTypeResponseBody201ActionResources = PostLoadBalancersIdActionsChangeTypeResponseBody201ActionResources {
  -- | id: ID of the Resource
  postLoadBalancersIdActionsChangeTypeResponseBody201ActionResourcesId :: GHC.Integer.Type.Integer
  -- | type: Type of resource referenced
  , postLoadBalancersIdActionsChangeTypeResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostLoadBalancersIdActionsChangeTypeResponseBody201ActionResources
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionResourcesId obj) : (Data.Aeson..=) "type" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionResourcesType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionResourcesId obj) GHC.Base.<> (Data.Aeson..=) "type" (postLoadBalancersIdActionsChangeTypeResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsChangeTypeResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLoadBalancersIdActionsChangeTypeResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostLoadBalancersIdActionsChangeTypeResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatus
-- 
-- Status of the Action
data PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatus
    = PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatusEnumOther Data.Aeson.Types.Internal.Value
    | PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatusEnumTyped Data.Text.Internal.Text
    | PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatusEnumStringError
    | PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatusEnumStringRunning
    | PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatusEnumStringSuccess
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatus
    where toJSON (PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatusEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatusEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatusEnumStringError) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error"
          toJSON (PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatusEnumStringRunning) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running"
          toJSON (PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatusEnumStringSuccess) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success"
instance Data.Aeson.FromJSON PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error")
                                          then PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatusEnumStringError
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running")
                                                then PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatusEnumStringRunning
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success")
                                                      then PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatusEnumStringSuccess
                                                      else PostLoadBalancersIdActionsChangeTypeResponseBody201ActionStatusEnumOther val)