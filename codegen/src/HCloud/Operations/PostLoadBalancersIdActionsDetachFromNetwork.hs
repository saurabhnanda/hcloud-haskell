-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postLoadBalancers_Id_ActionsDetachFromNetwork
module HCloud.Operations.PostLoadBalancersIdActionsDetachFromNetwork where

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

-- | > POST /load_balancers/{id}/actions/detach_from_network
-- 
-- Detaches a Load Balancer from a network.
postLoadBalancers_Id_ActionsDetachFromNetwork :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Integer.Type.Integer                                                                                                                                  -- ^ id: ID of the Load Balancer
  -> GHC.Maybe.Maybe PostLoadBalancersIdActionsDetachFromNetworkRequestBody                                                                                    -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostLoadBalancersIdActionsDetachFromNetworkResponse))   -- ^ Monad containing the result of the operation
postLoadBalancers_Id_ActionsDetachFromNetwork config
                                              id
                                              body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostLoadBalancersIdActionsDetachFromNetworkResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostLoadBalancersIdActionsDetachFromNetworkResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     PostLoadBalancersIdActionsDetachFromNetworkResponseBody201)
                                                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/load_balancers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/detach_from_network"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /load_balancers/{id}/actions/detach_from_network
-- 
-- The same as 'postLoadBalancers_Id_ActionsDetachFromNetwork' but returns the raw 'Data.ByteString.Char8.ByteString'
postLoadBalancers_Id_ActionsDetachFromNetworkRaw :: forall m s . (HCloud.Common.MonadHTTP m,
                                                                  HCloud.Common.SecurityScheme s) =>
                                                    HCloud.Common.Configuration s ->
                                                    GHC.Integer.Type.Integer ->
                                                    GHC.Maybe.Maybe PostLoadBalancersIdActionsDetachFromNetworkRequestBody ->
                                                    m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postLoadBalancers_Id_ActionsDetachFromNetworkRaw config
                                                 id
                                                 body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/load_balancers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/detach_from_network"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /load_balancers/{id}/actions/detach_from_network
-- 
-- Monadic version of 'postLoadBalancers_Id_ActionsDetachFromNetwork' (use with 'HCloud.Common.runWithConfiguration')
postLoadBalancers_Id_ActionsDetachFromNetworkM :: forall m s . (HCloud.Common.MonadHTTP m,
                                                                HCloud.Common.SecurityScheme s) =>
                                                  GHC.Integer.Type.Integer ->
                                                  GHC.Maybe.Maybe PostLoadBalancersIdActionsDetachFromNetworkRequestBody ->
                                                  Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                                     m
                                                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                         (Network.HTTP.Client.Types.Response PostLoadBalancersIdActionsDetachFromNetworkResponse))
postLoadBalancers_Id_ActionsDetachFromNetworkM id
                                               body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostLoadBalancersIdActionsDetachFromNetworkResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostLoadBalancersIdActionsDetachFromNetworkResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      PostLoadBalancersIdActionsDetachFromNetworkResponseBody201)
                                                                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/load_balancers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/detach_from_network"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /load_balancers/{id}/actions/detach_from_network
-- 
-- Monadic version of 'postLoadBalancers_Id_ActionsDetachFromNetworkRaw' (use with 'HCloud.Common.runWithConfiguration')
postLoadBalancers_Id_ActionsDetachFromNetworkRawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                                                   HCloud.Common.SecurityScheme s) =>
                                                     GHC.Integer.Type.Integer ->
                                                     GHC.Maybe.Maybe PostLoadBalancersIdActionsDetachFromNetworkRequestBody ->
                                                     Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                                        m
                                                                                        (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postLoadBalancers_Id_ActionsDetachFromNetworkRawM id
                                                  body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/load_balancers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/detach_from_network"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema postLoadBalancers_Id_ActionsDetachFromNetworkRequestBody
-- 
-- 
data PostLoadBalancersIdActionsDetachFromNetworkRequestBody = PostLoadBalancersIdActionsDetachFromNetworkRequestBody {
  -- | network: ID of an existing network to detach the Load Balancer from
  postLoadBalancersIdActionsDetachFromNetworkRequestBodyNetwork :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostLoadBalancersIdActionsDetachFromNetworkRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "network" (postLoadBalancersIdActionsDetachFromNetworkRequestBodyNetwork obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "network" (postLoadBalancersIdActionsDetachFromNetworkRequestBodyNetwork obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsDetachFromNetworkRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLoadBalancersIdActionsDetachFromNetworkRequestBody" (\obj -> GHC.Base.pure PostLoadBalancersIdActionsDetachFromNetworkRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network"))
-- | Represents a response of the operation 'postLoadBalancers_Id_ActionsDetachFromNetwork'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostLoadBalancersIdActionsDetachFromNetworkResponseError' is used.
data PostLoadBalancersIdActionsDetachFromNetworkResponse =                                                             
   PostLoadBalancersIdActionsDetachFromNetworkResponseError GHC.Base.String                                            -- ^ Means either no matching case available or a parse error
  | PostLoadBalancersIdActionsDetachFromNetworkResponse201 PostLoadBalancersIdActionsDetachFromNetworkResponseBody201  -- ^ The \`action\` key contains the \`detach_from_network\` Action
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema PostLoadBalancersIdActionsDetachFromNetworkResponseBody201
-- 
-- 
data PostLoadBalancersIdActionsDetachFromNetworkResponseBody201 = PostLoadBalancersIdActionsDetachFromNetworkResponseBody201 {
  -- | action
  postLoadBalancersIdActionsDetachFromNetworkResponseBody201Action :: PostLoadBalancersIdActionsDetachFromNetworkResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostLoadBalancersIdActionsDetachFromNetworkResponseBody201
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "action" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201Action obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "action" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201Action obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsDetachFromNetworkResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLoadBalancersIdActionsDetachFromNetworkResponseBody201" (\obj -> GHC.Base.pure PostLoadBalancersIdActionsDetachFromNetworkResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Defines the data type for the schema PostLoadBalancersIdActionsDetachFromNetworkResponseBody201Action
-- 
-- 
data PostLoadBalancersIdActionsDetachFromNetworkResponseBody201Action = PostLoadBalancersIdActionsDetachFromNetworkResponseBody201Action {
  -- | command: Command executed in the Action
  postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionError :: PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionError
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionFinished :: Data.Text.Internal.Text
  -- | id: ID of the Resource
  , postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionId :: GHC.Integer.Type.Integer
  -- | progress: Progress of Action in percent
  , postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResources :: ([] PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResources)
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatus :: PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostLoadBalancersIdActionsDetachFromNetworkResponseBody201Action
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "command" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionCommand obj) : (Data.Aeson..=) "error" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionError obj) : (Data.Aeson..=) "finished" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionFinished obj) : (Data.Aeson..=) "id" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionId obj) : (Data.Aeson..=) "progress" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionProgress obj) : (Data.Aeson..=) "resources" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResources obj) : (Data.Aeson..=) "started" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStarted obj) : (Data.Aeson..=) "status" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "command" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionCommand obj) GHC.Base.<> ((Data.Aeson..=) "error" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionError obj) GHC.Base.<> ((Data.Aeson..=) "finished" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionFinished obj) GHC.Base.<> ((Data.Aeson..=) "id" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionId obj) GHC.Base.<> ((Data.Aeson..=) "progress" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionProgress obj) GHC.Base.<> ((Data.Aeson..=) "resources" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResources obj) GHC.Base.<> ((Data.Aeson..=) "started" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStarted obj) GHC.Base.<> (Data.Aeson..=) "status" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsDetachFromNetworkResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLoadBalancersIdActionsDetachFromNetworkResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostLoadBalancersIdActionsDetachFromNetworkResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Defines the data type for the schema PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionError
-- 
-- Error message for the Action if error occurred, otherwise null
data PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionError = PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionError
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "code" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionErrorCode obj) : (Data.Aeson..=) "message" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionErrorMessage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "code" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionErrorCode obj) GHC.Base.<> (Data.Aeson..=) "message" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionError" (\obj -> (GHC.Base.pure PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Defines the data type for the schema PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResources
-- 
-- 
data PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResources = PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResources {
  -- | id: ID of the Resource
  postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResourcesId :: GHC.Integer.Type.Integer
  -- | type: Type of resource referenced
  , postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResources
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResourcesId obj) : (Data.Aeson..=) "type" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResourcesType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResourcesId obj) GHC.Base.<> (Data.Aeson..=) "type" (postLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatus
-- 
-- Status of the Action
data PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatus
    = PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatusEnumOther Data.Aeson.Types.Internal.Value
    | PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatusEnumTyped Data.Text.Internal.Text
    | PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatusEnumStringError
    | PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatusEnumStringRunning
    | PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatusEnumStringSuccess
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatus
    where toJSON (PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatusEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatusEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatusEnumStringError) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error"
          toJSON (PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatusEnumStringRunning) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running"
          toJSON (PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatusEnumStringSuccess) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success"
instance Data.Aeson.FromJSON PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error")
                                          then PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatusEnumStringError
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running")
                                                then PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatusEnumStringRunning
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success")
                                                      then PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatusEnumStringSuccess
                                                      else PostLoadBalancersIdActionsDetachFromNetworkResponseBody201ActionStatusEnumOther val)