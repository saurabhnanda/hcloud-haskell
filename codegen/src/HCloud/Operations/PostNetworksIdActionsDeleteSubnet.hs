-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postNetworks_Id_ActionsDeleteSubnet
module HCloud.Operations.PostNetworksIdActionsDeleteSubnet where

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

-- | > POST /networks/{id}/actions/delete_subnet
-- 
-- Deletes a single subnet entry from a Network. You cannot delete subnets which still have Servers attached. If you have Servers attached you first need to detach all Servers that use IPs from this subnet before you can delete the subnet.
-- 
-- Note: if the Network object changes during the request, the response will be a “conflict” error.
postNetworks_Id_ActionsDeleteSubnet :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Integer.Type.Integer                                                                                                                        -- ^ id: ID of the Network
  -> GHC.Maybe.Maybe PostNetworksIdActionsDeleteSubnetRequestBody                                                                                    -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostNetworksIdActionsDeleteSubnetResponse))   -- ^ Monad containing the result of the operation
postNetworks_Id_ActionsDeleteSubnet config
                                    id
                                    body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostNetworksIdActionsDeleteSubnetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostNetworksIdActionsDeleteSubnetResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       PostNetworksIdActionsDeleteSubnetResponseBody201)
                                                                                                                                                                                                                      | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/delete_subnet"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /networks/{id}/actions/delete_subnet
-- 
-- The same as 'postNetworks_Id_ActionsDeleteSubnet' but returns the raw 'Data.ByteString.Char8.ByteString'
postNetworks_Id_ActionsDeleteSubnetRaw :: forall m s . (HCloud.Common.MonadHTTP m,
                                                        HCloud.Common.SecurityScheme s) =>
                                          HCloud.Common.Configuration s ->
                                          GHC.Integer.Type.Integer ->
                                          GHC.Maybe.Maybe PostNetworksIdActionsDeleteSubnetRequestBody ->
                                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postNetworks_Id_ActionsDeleteSubnetRaw config
                                       id
                                       body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/delete_subnet"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /networks/{id}/actions/delete_subnet
-- 
-- Monadic version of 'postNetworks_Id_ActionsDeleteSubnet' (use with 'HCloud.Common.runWithConfiguration')
postNetworks_Id_ActionsDeleteSubnetM :: forall m s . (HCloud.Common.MonadHTTP m,
                                                      HCloud.Common.SecurityScheme s) =>
                                        GHC.Integer.Type.Integer ->
                                        GHC.Maybe.Maybe PostNetworksIdActionsDeleteSubnetRequestBody ->
                                        Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                           m
                                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                               (Network.HTTP.Client.Types.Response PostNetworksIdActionsDeleteSubnetResponse))
postNetworks_Id_ActionsDeleteSubnetM id
                                     body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostNetworksIdActionsDeleteSubnetResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostNetworksIdActionsDeleteSubnetResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        PostNetworksIdActionsDeleteSubnetResponseBody201)
                                                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/delete_subnet"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /networks/{id}/actions/delete_subnet
-- 
-- Monadic version of 'postNetworks_Id_ActionsDeleteSubnetRaw' (use with 'HCloud.Common.runWithConfiguration')
postNetworks_Id_ActionsDeleteSubnetRawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                                         HCloud.Common.SecurityScheme s) =>
                                           GHC.Integer.Type.Integer ->
                                           GHC.Maybe.Maybe PostNetworksIdActionsDeleteSubnetRequestBody ->
                                           Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                              m
                                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postNetworks_Id_ActionsDeleteSubnetRawM id
                                        body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/delete_subnet"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema postNetworks_Id_ActionsDeleteSubnetRequestBody
-- 
-- 
data PostNetworksIdActionsDeleteSubnetRequestBody = PostNetworksIdActionsDeleteSubnetRequestBody {
  -- | ip_range: IP range of subnet to delete
  postNetworksIdActionsDeleteSubnetRequestBodyIpRange :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostNetworksIdActionsDeleteSubnetRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "ip_range" (postNetworksIdActionsDeleteSubnetRequestBodyIpRange obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "ip_range" (postNetworksIdActionsDeleteSubnetRequestBodyIpRange obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsDeleteSubnetRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostNetworksIdActionsDeleteSubnetRequestBody" (\obj -> GHC.Base.pure PostNetworksIdActionsDeleteSubnetRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ip_range"))
-- | Represents a response of the operation 'postNetworks_Id_ActionsDeleteSubnet'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostNetworksIdActionsDeleteSubnetResponseError' is used.
data PostNetworksIdActionsDeleteSubnetResponse =                                                   
   PostNetworksIdActionsDeleteSubnetResponseError GHC.Base.String                                  -- ^ Means either no matching case available or a parse error
  | PostNetworksIdActionsDeleteSubnetResponse201 PostNetworksIdActionsDeleteSubnetResponseBody201  -- ^ The \`action\` key contains the \`delete_subnet\` Action
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema PostNetworksIdActionsDeleteSubnetResponseBody201
-- 
-- 
data PostNetworksIdActionsDeleteSubnetResponseBody201 = PostNetworksIdActionsDeleteSubnetResponseBody201 {
  -- | action
  postNetworksIdActionsDeleteSubnetResponseBody201Action :: PostNetworksIdActionsDeleteSubnetResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostNetworksIdActionsDeleteSubnetResponseBody201
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "action" (postNetworksIdActionsDeleteSubnetResponseBody201Action obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "action" (postNetworksIdActionsDeleteSubnetResponseBody201Action obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsDeleteSubnetResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostNetworksIdActionsDeleteSubnetResponseBody201" (\obj -> GHC.Base.pure PostNetworksIdActionsDeleteSubnetResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Defines the data type for the schema PostNetworksIdActionsDeleteSubnetResponseBody201Action
-- 
-- 
data PostNetworksIdActionsDeleteSubnetResponseBody201Action = PostNetworksIdActionsDeleteSubnetResponseBody201Action {
  -- | command: Command executed in the Action
  postNetworksIdActionsDeleteSubnetResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionError :: PostNetworksIdActionsDeleteSubnetResponseBody201ActionError
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionFinished :: Data.Text.Internal.Text
  -- | id: ID of the Resource
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionId :: GHC.Integer.Type.Integer
  -- | progress: Progress of Action in percent
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionResources :: ([] PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources)
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionStatus :: PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostNetworksIdActionsDeleteSubnetResponseBody201Action
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "command" (postNetworksIdActionsDeleteSubnetResponseBody201ActionCommand obj) : (Data.Aeson..=) "error" (postNetworksIdActionsDeleteSubnetResponseBody201ActionError obj) : (Data.Aeson..=) "finished" (postNetworksIdActionsDeleteSubnetResponseBody201ActionFinished obj) : (Data.Aeson..=) "id" (postNetworksIdActionsDeleteSubnetResponseBody201ActionId obj) : (Data.Aeson..=) "progress" (postNetworksIdActionsDeleteSubnetResponseBody201ActionProgress obj) : (Data.Aeson..=) "resources" (postNetworksIdActionsDeleteSubnetResponseBody201ActionResources obj) : (Data.Aeson..=) "started" (postNetworksIdActionsDeleteSubnetResponseBody201ActionStarted obj) : (Data.Aeson..=) "status" (postNetworksIdActionsDeleteSubnetResponseBody201ActionStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "command" (postNetworksIdActionsDeleteSubnetResponseBody201ActionCommand obj) GHC.Base.<> ((Data.Aeson..=) "error" (postNetworksIdActionsDeleteSubnetResponseBody201ActionError obj) GHC.Base.<> ((Data.Aeson..=) "finished" (postNetworksIdActionsDeleteSubnetResponseBody201ActionFinished obj) GHC.Base.<> ((Data.Aeson..=) "id" (postNetworksIdActionsDeleteSubnetResponseBody201ActionId obj) GHC.Base.<> ((Data.Aeson..=) "progress" (postNetworksIdActionsDeleteSubnetResponseBody201ActionProgress obj) GHC.Base.<> ((Data.Aeson..=) "resources" (postNetworksIdActionsDeleteSubnetResponseBody201ActionResources obj) GHC.Base.<> ((Data.Aeson..=) "started" (postNetworksIdActionsDeleteSubnetResponseBody201ActionStarted obj) GHC.Base.<> (Data.Aeson..=) "status" (postNetworksIdActionsDeleteSubnetResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsDeleteSubnetResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostNetworksIdActionsDeleteSubnetResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostNetworksIdActionsDeleteSubnetResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Defines the data type for the schema PostNetworksIdActionsDeleteSubnetResponseBody201ActionError
-- 
-- Error message for the Action if error occurred, otherwise null
data PostNetworksIdActionsDeleteSubnetResponseBody201ActionError = PostNetworksIdActionsDeleteSubnetResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostNetworksIdActionsDeleteSubnetResponseBody201ActionError
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "code" (postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorCode obj) : (Data.Aeson..=) "message" (postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorMessage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "code" (postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorCode obj) GHC.Base.<> (Data.Aeson..=) "message" (postNetworksIdActionsDeleteSubnetResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsDeleteSubnetResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostNetworksIdActionsDeleteSubnetResponseBody201ActionError" (\obj -> (GHC.Base.pure PostNetworksIdActionsDeleteSubnetResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Defines the data type for the schema PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources
-- 
-- 
data PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources = PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources {
  -- | id: ID of the Resource
  postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesId :: GHC.Integer.Type.Integer
  -- | type: Type of resource referenced
  , postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesId obj) : (Data.Aeson..=) "type" (postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesId obj) GHC.Base.<> (Data.Aeson..=) "type" (postNetworksIdActionsDeleteSubnetResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostNetworksIdActionsDeleteSubnetResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatus
-- 
-- Status of the Action
data PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatus
    = PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumOther Data.Aeson.Types.Internal.Value
    | PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumTyped Data.Text.Internal.Text
    | PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumStringError
    | PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumStringRunning
    | PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumStringSuccess
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatus
    where toJSON (PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumStringError) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error"
          toJSON (PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumStringRunning) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running"
          toJSON (PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumStringSuccess) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success"
instance Data.Aeson.FromJSON PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error")
                                          then PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumStringError
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running")
                                                then PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumStringRunning
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success")
                                                      then PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumStringSuccess
                                                      else PostNetworksIdActionsDeleteSubnetResponseBody201ActionStatusEnumOther val)