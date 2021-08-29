-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postFirewalls_Id_ActionsRemoveFromResources
module HCloud.Operations.PostFirewallsIdActionsRemoveFromResources where

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

-- | > POST /firewalls/{id}/actions/remove_from_resources
-- 
-- Removes one Firewall from multiple resources.
-- 
-- Currently only Servers (and their public network interfaces) are supported.
-- 
-- \#\#\#\# Call specific error codes
-- 
-- | Code                       | Description                                    |
-- |----------------------------|------------------------------------------------|
-- | \`firewall_already_removed\` | Firewall was already removed from the resource |
postFirewalls_Id_ActionsRemoveFromResources :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Integer.Type.Integer                                                                                                                                -- ^ id: ID of the Firewall
  -> GHC.Maybe.Maybe PostFirewallsIdActionsRemoveFromResourcesRequestBody                                                                                    -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostFirewallsIdActionsRemoveFromResourcesResponse))   -- ^ Monad containing the result of the operation
postFirewalls_Id_ActionsRemoveFromResources config
                                            id
                                            body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostFirewallsIdActionsRemoveFromResourcesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostFirewallsIdActionsRemoveFromResourcesResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               PostFirewallsIdActionsRemoveFromResourcesResponseBody201)
                                                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/firewalls/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/remove_from_resources"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /firewalls/{id}/actions/remove_from_resources
-- 
-- The same as 'postFirewalls_Id_ActionsRemoveFromResources' but returns the raw 'Data.ByteString.Char8.ByteString'
postFirewalls_Id_ActionsRemoveFromResourcesRaw :: forall m s . (HCloud.Common.MonadHTTP m,
                                                                HCloud.Common.SecurityScheme s) =>
                                                  HCloud.Common.Configuration s ->
                                                  GHC.Integer.Type.Integer ->
                                                  GHC.Maybe.Maybe PostFirewallsIdActionsRemoveFromResourcesRequestBody ->
                                                  m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postFirewalls_Id_ActionsRemoveFromResourcesRaw config
                                               id
                                               body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/firewalls/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/remove_from_resources"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /firewalls/{id}/actions/remove_from_resources
-- 
-- Monadic version of 'postFirewalls_Id_ActionsRemoveFromResources' (use with 'HCloud.Common.runWithConfiguration')
postFirewalls_Id_ActionsRemoveFromResourcesM :: forall m s . (HCloud.Common.MonadHTTP m,
                                                              HCloud.Common.SecurityScheme s) =>
                                                GHC.Integer.Type.Integer ->
                                                GHC.Maybe.Maybe PostFirewallsIdActionsRemoveFromResourcesRequestBody ->
                                                Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                                   m
                                                                                   (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                       (Network.HTTP.Client.Types.Response PostFirewallsIdActionsRemoveFromResourcesResponse))
postFirewalls_Id_ActionsRemoveFromResourcesM id
                                             body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostFirewallsIdActionsRemoveFromResourcesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostFirewallsIdActionsRemoveFromResourcesResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                PostFirewallsIdActionsRemoveFromResourcesResponseBody201)
                                                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/firewalls/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/remove_from_resources"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /firewalls/{id}/actions/remove_from_resources
-- 
-- Monadic version of 'postFirewalls_Id_ActionsRemoveFromResourcesRaw' (use with 'HCloud.Common.runWithConfiguration')
postFirewalls_Id_ActionsRemoveFromResourcesRawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                                                 HCloud.Common.SecurityScheme s) =>
                                                   GHC.Integer.Type.Integer ->
                                                   GHC.Maybe.Maybe PostFirewallsIdActionsRemoveFromResourcesRequestBody ->
                                                   Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                                      m
                                                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                          (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postFirewalls_Id_ActionsRemoveFromResourcesRawM id
                                                body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/firewalls/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/remove_from_resources"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema postFirewalls_Id_ActionsRemoveFromResourcesRequestBody
-- 
-- 
data PostFirewallsIdActionsRemoveFromResourcesRequestBody = PostFirewallsIdActionsRemoveFromResourcesRequestBody {
  -- | remove_from: Resources the Firewall should be removed from
  postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFrom :: ([] PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFrom)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFirewallsIdActionsRemoveFromResourcesRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "remove_from" (postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFrom obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "remove_from" (postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFrom obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFirewallsIdActionsRemoveFromResourcesRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFirewallsIdActionsRemoveFromResourcesRequestBody" (\obj -> GHC.Base.pure PostFirewallsIdActionsRemoveFromResourcesRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "remove_from"))
-- | Defines the data type for the schema postFirewalls_Id_ActionsRemoveFromResourcesRequestBodyRemove_from
-- 
-- 
data PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFrom = PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFrom {
  -- | label_selector: Configuration for type label_selector, required if type is \`label_selector\`
  postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromLabelSelector :: (GHC.Maybe.Maybe PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromLabelSelector)
  -- | server: Configuration for type server, required if type is \`server\`
  , postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromServer :: (GHC.Maybe.Maybe PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromServer)
  -- | type: Type of the resource
  , postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromType :: (GHC.Maybe.Maybe PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromType)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFrom
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "label_selector" (postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromLabelSelector obj) : (Data.Aeson..=) "server" (postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromServer obj) : (Data.Aeson..=) "type" (postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "label_selector" (postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromLabelSelector obj) GHC.Base.<> ((Data.Aeson..=) "server" (postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromServer obj) GHC.Base.<> (Data.Aeson..=) "type" (postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromType obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFrom
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFrom" (\obj -> ((GHC.Base.pure PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFrom GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "label_selector")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "server")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
-- | Defines the data type for the schema postFirewalls_Id_ActionsRemoveFromResourcesRequestBodyRemove_fromLabel_selector
-- 
-- Configuration for type label_selector, required if type is \`label_selector\`
data PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromLabelSelector = PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromLabelSelector {
  -- | selector: Label selector
  postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromLabelSelectorSelector :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromLabelSelector
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "selector" (postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromLabelSelectorSelector obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "selector" (postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromLabelSelectorSelector obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromLabelSelector
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromLabelSelector" (\obj -> GHC.Base.pure PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromLabelSelector GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "selector"))
-- | Defines the data type for the schema postFirewalls_Id_ActionsRemoveFromResourcesRequestBodyRemove_fromServer
-- 
-- Configuration for type server, required if type is \`server\`
data PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromServer = PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromServer {
  -- | id: ID of the Server
  postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromServerId :: GHC.Integer.Type.Integer
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromServer
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromServerId obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (postFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromServerId obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromServer
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromServer" (\obj -> GHC.Base.pure PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromServer GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id"))
-- | Defines the enum schema postFirewalls_Id_ActionsRemoveFromResourcesRequestBodyRemove_fromType
-- 
-- Type of the resource
data PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromType
    = PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromTypeEnumOther Data.Aeson.Types.Internal.Value
    | PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromTypeEnumTyped Data.Text.Internal.Text
    | PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromTypeEnumStringLabelSelector
    | PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromTypeEnumStringServer
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromType
    where toJSON (PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromTypeEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromTypeEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromTypeEnumStringLabelSelector) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "label_selector"
          toJSON (PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromTypeEnumStringServer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "server"
instance Data.Aeson.FromJSON PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromType
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "label_selector")
                                          then PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromTypeEnumStringLabelSelector
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "server")
                                                then PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromTypeEnumStringServer
                                                else PostFirewallsIdActionsRemoveFromResourcesRequestBodyRemoveFromTypeEnumOther val)
-- | Represents a response of the operation 'postFirewalls_Id_ActionsRemoveFromResources'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostFirewallsIdActionsRemoveFromResourcesResponseError' is used.
data PostFirewallsIdActionsRemoveFromResourcesResponse =                                                           
   PostFirewallsIdActionsRemoveFromResourcesResponseError GHC.Base.String                                          -- ^ Means either no matching case available or a parse error
  | PostFirewallsIdActionsRemoveFromResourcesResponse201 PostFirewallsIdActionsRemoveFromResourcesResponseBody201  -- ^ The \`actions\` key contains multiple \`remove_firewall\` Actions
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema PostFirewallsIdActionsRemoveFromResourcesResponseBody201
-- 
-- 
data PostFirewallsIdActionsRemoveFromResourcesResponseBody201 = PostFirewallsIdActionsRemoveFromResourcesResponseBody201 {
  -- | actions
  postFirewallsIdActionsRemoveFromResourcesResponseBody201Actions :: ([] PostFirewallsIdActionsRemoveFromResourcesResponseBody201Actions)
  -- | meta
  , postFirewallsIdActionsRemoveFromResourcesResponseBody201Meta :: (GHC.Maybe.Maybe PostFirewallsIdActionsRemoveFromResourcesResponseBody201Meta)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFirewallsIdActionsRemoveFromResourcesResponseBody201
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "actions" (postFirewallsIdActionsRemoveFromResourcesResponseBody201Actions obj) : (Data.Aeson..=) "meta" (postFirewallsIdActionsRemoveFromResourcesResponseBody201Meta obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "actions" (postFirewallsIdActionsRemoveFromResourcesResponseBody201Actions obj) GHC.Base.<> (Data.Aeson..=) "meta" (postFirewallsIdActionsRemoveFromResourcesResponseBody201Meta obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFirewallsIdActionsRemoveFromResourcesResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFirewallsIdActionsRemoveFromResourcesResponseBody201" (\obj -> (GHC.Base.pure PostFirewallsIdActionsRemoveFromResourcesResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "actions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "meta"))
-- | Defines the data type for the schema PostFirewallsIdActionsRemoveFromResourcesResponseBody201Actions
-- 
-- 
data PostFirewallsIdActionsRemoveFromResourcesResponseBody201Actions = PostFirewallsIdActionsRemoveFromResourcesResponseBody201Actions {
  -- | command: Command executed in the Action
  postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsError :: PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsError
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsFinished :: Data.Text.Internal.Text
  -- | id: ID of the Resource
  , postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsId :: GHC.Integer.Type.Integer
  -- | progress: Progress of Action in percent
  , postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResources :: ([] PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResources)
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatus :: PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFirewallsIdActionsRemoveFromResourcesResponseBody201Actions
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "command" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsCommand obj) : (Data.Aeson..=) "error" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsError obj) : (Data.Aeson..=) "finished" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsFinished obj) : (Data.Aeson..=) "id" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsId obj) : (Data.Aeson..=) "progress" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsProgress obj) : (Data.Aeson..=) "resources" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResources obj) : (Data.Aeson..=) "started" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStarted obj) : (Data.Aeson..=) "status" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "command" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsCommand obj) GHC.Base.<> ((Data.Aeson..=) "error" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsError obj) GHC.Base.<> ((Data.Aeson..=) "finished" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsFinished obj) GHC.Base.<> ((Data.Aeson..=) "id" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsId obj) GHC.Base.<> ((Data.Aeson..=) "progress" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsProgress obj) GHC.Base.<> ((Data.Aeson..=) "resources" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResources obj) GHC.Base.<> ((Data.Aeson..=) "started" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStarted obj) GHC.Base.<> (Data.Aeson..=) "status" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostFirewallsIdActionsRemoveFromResourcesResponseBody201Actions
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFirewallsIdActionsRemoveFromResourcesResponseBody201Actions" (\obj -> (((((((GHC.Base.pure PostFirewallsIdActionsRemoveFromResourcesResponseBody201Actions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Defines the data type for the schema PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsError
-- 
-- Error message for the Action if error occurred, otherwise null
data PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsError = PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsError {
  -- | code: Fixed machine readable code
  postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsError
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "code" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsErrorCode obj) : (Data.Aeson..=) "message" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsErrorMessage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "code" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsErrorCode obj) GHC.Base.<> (Data.Aeson..=) "message" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsError" (\obj -> (GHC.Base.pure PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Defines the data type for the schema PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResources
-- 
-- 
data PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResources = PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResources {
  -- | id: ID of the Resource
  postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResourcesId :: GHC.Integer.Type.Integer
  -- | type: Type of resource referenced
  , postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResources
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResourcesId obj) : (Data.Aeson..=) "type" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResourcesType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResourcesId obj) GHC.Base.<> (Data.Aeson..=) "type" (postFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResources" (\obj -> (GHC.Base.pure PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatus
-- 
-- Status of the Action
data PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatus
    = PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatusEnumOther Data.Aeson.Types.Internal.Value
    | PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatusEnumTyped Data.Text.Internal.Text
    | PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatusEnumStringError
    | PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatusEnumStringRunning
    | PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatusEnumStringSuccess
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatus
    where toJSON (PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatusEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatusEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatusEnumStringError) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error"
          toJSON (PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatusEnumStringRunning) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running"
          toJSON (PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatusEnumStringSuccess) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success"
instance Data.Aeson.FromJSON PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatus
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error")
                                          then PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatusEnumStringError
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running")
                                                then PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatusEnumStringRunning
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success")
                                                      then PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatusEnumStringSuccess
                                                      else PostFirewallsIdActionsRemoveFromResourcesResponseBody201ActionsStatusEnumOther val)
-- | Defines the data type for the schema PostFirewallsIdActionsRemoveFromResourcesResponseBody201Meta
-- 
-- 
data PostFirewallsIdActionsRemoveFromResourcesResponseBody201Meta = PostFirewallsIdActionsRemoveFromResourcesResponseBody201Meta {
  -- | pagination
  postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPagination :: PostFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPagination
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFirewallsIdActionsRemoveFromResourcesResponseBody201Meta
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "pagination" (postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPagination obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "pagination" (postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPagination obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFirewallsIdActionsRemoveFromResourcesResponseBody201Meta
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFirewallsIdActionsRemoveFromResourcesResponseBody201Meta" (\obj -> GHC.Base.pure PostFirewallsIdActionsRemoveFromResourcesResponseBody201Meta GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pagination"))
-- | Defines the data type for the schema PostFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPagination
-- 
-- 
data PostFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPagination = PostFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPagination {
  -- | last_page: ID of the last page available. Can be null if the current page is the last one.
  postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationLastPage :: GHC.Types.Double
  -- | next_page: ID of the next page. Can be null if the current page is the last one.
  , postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationNextPage :: GHC.Types.Double
  -- | page: Current page number
  , postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationPage :: GHC.Types.Double
  -- | per_page: Maximum number of items shown per page in the response
  , postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationPerPage :: GHC.Types.Double
  -- | previous_page: ID of the previous page. Can be null if the current page is the first one.
  , postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationPreviousPage :: GHC.Types.Double
  -- | total_entries: The total number of entries that exist in the database for this query. Nullable if unknown.
  , postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationTotalEntries :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPagination
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "last_page" (postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationLastPage obj) : (Data.Aeson..=) "next_page" (postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationNextPage obj) : (Data.Aeson..=) "page" (postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationPage obj) : (Data.Aeson..=) "per_page" (postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationPerPage obj) : (Data.Aeson..=) "previous_page" (postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationPreviousPage obj) : (Data.Aeson..=) "total_entries" (postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationTotalEntries obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "last_page" (postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationLastPage obj) GHC.Base.<> ((Data.Aeson..=) "next_page" (postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationNextPage obj) GHC.Base.<> ((Data.Aeson..=) "page" (postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationPage obj) GHC.Base.<> ((Data.Aeson..=) "per_page" (postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationPerPage obj) GHC.Base.<> ((Data.Aeson..=) "previous_page" (postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationPreviousPage obj) GHC.Base.<> (Data.Aeson..=) "total_entries" (postFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPaginationTotalEntries obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPagination
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPagination" (\obj -> (((((GHC.Base.pure PostFirewallsIdActionsRemoveFromResourcesResponseBody201MetaPagination GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "next_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "per_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "previous_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total_entries"))
