-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation putNetworks_Id_
module HCloud.Operations.PutNetworksId_ where

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

-- | > PUT /networks/{id}
-- 
-- Updates the network properties.
-- 
-- Note that when updating labels, the network’s current set of labels will be replaced with the labels provided in the request body. So, for example, if you want to add a new label, you have to provide all existing labels plus the new label in the request body.
-- 
-- Note: if the network object changes during the request, the response will be a “conflict” error.
putNetworks_Id_ :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Integer.Type.Integer                                                                                                    -- ^ id: ID of the network
  -> GHC.Maybe.Maybe PutNetworksIdRequestBody                                                                                    -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PutNetworksIdResponse))   -- ^ Monad containing the result of the operation
putNetworks_Id_ config
                id
                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PutNetworksIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PutNetworksIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                           PutNetworksIdResponseBody200)
                                                                                                                                                                              | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > PUT /networks/{id}
-- 
-- The same as 'putNetworks_Id_' but returns the raw 'Data.ByteString.Char8.ByteString'
putNetworks_Id_Raw :: forall m s . (HCloud.Common.MonadHTTP m,
                                    HCloud.Common.SecurityScheme s) =>
                      HCloud.Common.Configuration s ->
                      GHC.Integer.Type.Integer ->
                      GHC.Maybe.Maybe PutNetworksIdRequestBody ->
                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
putNetworks_Id_Raw config
                   id
                   body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > PUT /networks/{id}
-- 
-- Monadic version of 'putNetworks_Id_' (use with 'HCloud.Common.runWithConfiguration')
putNetworks_Id_M :: forall m s . (HCloud.Common.MonadHTTP m,
                                  HCloud.Common.SecurityScheme s) =>
                    GHC.Integer.Type.Integer ->
                    GHC.Maybe.Maybe PutNetworksIdRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response PutNetworksIdResponse))
putNetworks_Id_M id
                 body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PutNetworksIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PutNetworksIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            PutNetworksIdResponseBody200)
                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > PUT /networks/{id}
-- 
-- Monadic version of 'putNetworks_Id_Raw' (use with 'HCloud.Common.runWithConfiguration')
putNetworks_Id_RawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                     HCloud.Common.SecurityScheme s) =>
                       GHC.Integer.Type.Integer ->
                       GHC.Maybe.Maybe PutNetworksIdRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
putNetworks_Id_RawM id
                    body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "PUT") (Data.Text.pack ("/networks/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema putNetworks_Id_RequestBody
-- 
-- 
data PutNetworksIdRequestBody = PutNetworksIdRequestBody {
  -- | labels: User-defined labels (key-value pairs)
  putNetworksIdRequestBodyLabels :: (GHC.Maybe.Maybe PutNetworksIdRequestBodyLabels)
  -- | name: New network name
  , putNetworksIdRequestBodyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PutNetworksIdRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "labels" (putNetworksIdRequestBodyLabels obj) : (Data.Aeson..=) "name" (putNetworksIdRequestBodyName obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "labels" (putNetworksIdRequestBodyLabels obj) GHC.Base.<> (Data.Aeson..=) "name" (putNetworksIdRequestBodyName obj))
instance Data.Aeson.Types.FromJSON.FromJSON PutNetworksIdRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PutNetworksIdRequestBody" (\obj -> (GHC.Base.pure PutNetworksIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "labels")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name"))
-- | Defines the data type for the schema putNetworks_Id_RequestBodyLabels
-- 
-- User-defined labels (key-value pairs)
data PutNetworksIdRequestBodyLabels = PutNetworksIdRequestBodyLabels {
  -- | labelkey
  putNetworksIdRequestBodyLabelsLabelkey :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PutNetworksIdRequestBodyLabels
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "labelkey" (putNetworksIdRequestBodyLabelsLabelkey obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "labelkey" (putNetworksIdRequestBodyLabelsLabelkey obj))
instance Data.Aeson.Types.FromJSON.FromJSON PutNetworksIdRequestBodyLabels
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PutNetworksIdRequestBodyLabels" (\obj -> GHC.Base.pure PutNetworksIdRequestBodyLabels GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "labelkey"))
-- | Represents a response of the operation 'putNetworks_Id_'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PutNetworksIdResponseError' is used.
data PutNetworksIdResponse =                               
   PutNetworksIdResponseError GHC.Base.String              -- ^ Means either no matching case available or a parse error
  | PutNetworksIdResponse200 PutNetworksIdResponseBody200  -- ^ The \`network\` key contains the updated network
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema PutNetworksIdResponseBody200
-- 
-- 
data PutNetworksIdResponseBody200 = PutNetworksIdResponseBody200 {
  -- | network
  putNetworksIdResponseBody200Network :: (GHC.Maybe.Maybe PutNetworksIdResponseBody200Network)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PutNetworksIdResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "network" (putNetworksIdResponseBody200Network obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "network" (putNetworksIdResponseBody200Network obj))
instance Data.Aeson.Types.FromJSON.FromJSON PutNetworksIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PutNetworksIdResponseBody200" (\obj -> GHC.Base.pure PutNetworksIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "network"))
-- | Defines the data type for the schema PutNetworksIdResponseBody200Network
-- 
-- 
data PutNetworksIdResponseBody200Network = PutNetworksIdResponseBody200Network {
  -- | created: Point in time when the Network was created (in ISO-8601 format)
  putNetworksIdResponseBody200NetworkCreated :: Data.Text.Internal.Text
  -- | id: ID of the Network
  , putNetworksIdResponseBody200NetworkId :: GHC.Integer.Type.Integer
  -- | ip_range: IPv4 prefix of the whole Network
  , putNetworksIdResponseBody200NetworkIpRange :: Data.Text.Internal.Text
  -- | labels: User-defined labels (key-value pairs)
  , putNetworksIdResponseBody200NetworkLabels :: PutNetworksIdResponseBody200NetworkLabels
  -- | load_balancers: Array of IDs of Load Balancers attached to this Network
  , putNetworksIdResponseBody200NetworkLoadBalancers :: (GHC.Maybe.Maybe ([] GHC.Integer.Type.Integer))
  -- | name: Name of the Network
  , putNetworksIdResponseBody200NetworkName :: Data.Text.Internal.Text
  -- | protection: Protection configuration for the Network
  , putNetworksIdResponseBody200NetworkProtection :: PutNetworksIdResponseBody200NetworkProtection
  -- | routes: Array of routes set in this Network
  , putNetworksIdResponseBody200NetworkRoutes :: ([] PutNetworksIdResponseBody200NetworkRoutes)
  -- | servers: Array of IDs of Servers attached to this Network
  , putNetworksIdResponseBody200NetworkServers :: ([] GHC.Integer.Type.Integer)
  -- | subnets: Array subnets allocated in this Network
  , putNetworksIdResponseBody200NetworkSubnets :: ([] PutNetworksIdResponseBody200NetworkSubnets)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PutNetworksIdResponseBody200Network
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (putNetworksIdResponseBody200NetworkCreated obj) : (Data.Aeson..=) "id" (putNetworksIdResponseBody200NetworkId obj) : (Data.Aeson..=) "ip_range" (putNetworksIdResponseBody200NetworkIpRange obj) : (Data.Aeson..=) "labels" (putNetworksIdResponseBody200NetworkLabels obj) : (Data.Aeson..=) "load_balancers" (putNetworksIdResponseBody200NetworkLoadBalancers obj) : (Data.Aeson..=) "name" (putNetworksIdResponseBody200NetworkName obj) : (Data.Aeson..=) "protection" (putNetworksIdResponseBody200NetworkProtection obj) : (Data.Aeson..=) "routes" (putNetworksIdResponseBody200NetworkRoutes obj) : (Data.Aeson..=) "servers" (putNetworksIdResponseBody200NetworkServers obj) : (Data.Aeson..=) "subnets" (putNetworksIdResponseBody200NetworkSubnets obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (putNetworksIdResponseBody200NetworkCreated obj) GHC.Base.<> ((Data.Aeson..=) "id" (putNetworksIdResponseBody200NetworkId obj) GHC.Base.<> ((Data.Aeson..=) "ip_range" (putNetworksIdResponseBody200NetworkIpRange obj) GHC.Base.<> ((Data.Aeson..=) "labels" (putNetworksIdResponseBody200NetworkLabels obj) GHC.Base.<> ((Data.Aeson..=) "load_balancers" (putNetworksIdResponseBody200NetworkLoadBalancers obj) GHC.Base.<> ((Data.Aeson..=) "name" (putNetworksIdResponseBody200NetworkName obj) GHC.Base.<> ((Data.Aeson..=) "protection" (putNetworksIdResponseBody200NetworkProtection obj) GHC.Base.<> ((Data.Aeson..=) "routes" (putNetworksIdResponseBody200NetworkRoutes obj) GHC.Base.<> ((Data.Aeson..=) "servers" (putNetworksIdResponseBody200NetworkServers obj) GHC.Base.<> (Data.Aeson..=) "subnets" (putNetworksIdResponseBody200NetworkSubnets obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PutNetworksIdResponseBody200Network
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PutNetworksIdResponseBody200Network" (\obj -> (((((((((GHC.Base.pure PutNetworksIdResponseBody200Network GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ip_range")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "labels")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "load_balancers")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "protection")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "routes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "servers")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "subnets"))
-- | Defines the data type for the schema PutNetworksIdResponseBody200NetworkLabels
-- 
-- User-defined labels (key-value pairs)
data PutNetworksIdResponseBody200NetworkLabels = PutNetworksIdResponseBody200NetworkLabels {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PutNetworksIdResponseBody200NetworkLabels
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PutNetworksIdResponseBody200NetworkLabels
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PutNetworksIdResponseBody200NetworkLabels" (\obj -> GHC.Base.pure PutNetworksIdResponseBody200NetworkLabels)
-- | Defines the data type for the schema PutNetworksIdResponseBody200NetworkProtection
-- 
-- Protection configuration for the Network
data PutNetworksIdResponseBody200NetworkProtection = PutNetworksIdResponseBody200NetworkProtection {
  -- | delete: If true, prevents the Network from being deleted
  putNetworksIdResponseBody200NetworkProtectionDelete :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PutNetworksIdResponseBody200NetworkProtection
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "delete" (putNetworksIdResponseBody200NetworkProtectionDelete obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "delete" (putNetworksIdResponseBody200NetworkProtectionDelete obj))
instance Data.Aeson.Types.FromJSON.FromJSON PutNetworksIdResponseBody200NetworkProtection
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PutNetworksIdResponseBody200NetworkProtection" (\obj -> GHC.Base.pure PutNetworksIdResponseBody200NetworkProtection GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "delete"))
-- | Defines the data type for the schema PutNetworksIdResponseBody200NetworkRoutes
-- 
-- 
data PutNetworksIdResponseBody200NetworkRoutes = PutNetworksIdResponseBody200NetworkRoutes {
  -- | destination: Destination network or host of this route. Must not overlap with an existing ip_range in any subnets or with any destinations in other routes or with the first IP of the networks ip_range or with 172.31.1.1. Must be one of the private IPv4 ranges of RFC1918.
  putNetworksIdResponseBody200NetworkRoutesDestination :: Data.Text.Internal.Text
  -- | gateway: Gateway for the route. Cannot be the first IP of the networks ip_range and also cannot be 172.31.1.1 as this IP is being used as a gateway for the public network interface of Servers.
  , putNetworksIdResponseBody200NetworkRoutesGateway :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PutNetworksIdResponseBody200NetworkRoutes
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "destination" (putNetworksIdResponseBody200NetworkRoutesDestination obj) : (Data.Aeson..=) "gateway" (putNetworksIdResponseBody200NetworkRoutesGateway obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "destination" (putNetworksIdResponseBody200NetworkRoutesDestination obj) GHC.Base.<> (Data.Aeson..=) "gateway" (putNetworksIdResponseBody200NetworkRoutesGateway obj))
instance Data.Aeson.Types.FromJSON.FromJSON PutNetworksIdResponseBody200NetworkRoutes
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PutNetworksIdResponseBody200NetworkRoutes" (\obj -> (GHC.Base.pure PutNetworksIdResponseBody200NetworkRoutes GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "destination")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "gateway"))
-- | Defines the data type for the schema PutNetworksIdResponseBody200NetworkSubnets
-- 
-- 
data PutNetworksIdResponseBody200NetworkSubnets = PutNetworksIdResponseBody200NetworkSubnets {
  -- | gateway: Gateway for Servers attached to this subnet. For subnets of type Server this is always the first IP of the network IP range.
  putNetworksIdResponseBody200NetworkSubnetsGateway :: Data.Text.Internal.Text
  -- | ip_range: Range to allocate IPs from. Must be a Subnet of the ip_range of the parent network object and must not overlap with any other subnets or with any destinations in routes. Minimum Network size is \/30. We suggest that you pick a bigger Network with a \/24 netmask.
  , putNetworksIdResponseBody200NetworkSubnetsIpRange :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | network_zone: Name of Network zone. Currently eu-central is the only available zone.
  , putNetworksIdResponseBody200NetworkSubnetsNetworkZone :: Data.Text.Internal.Text
  -- | type: Type of Subnetwork
  , putNetworksIdResponseBody200NetworkSubnetsType :: PutNetworksIdResponseBody200NetworkSubnetsType
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PutNetworksIdResponseBody200NetworkSubnets
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "gateway" (putNetworksIdResponseBody200NetworkSubnetsGateway obj) : (Data.Aeson..=) "ip_range" (putNetworksIdResponseBody200NetworkSubnetsIpRange obj) : (Data.Aeson..=) "network_zone" (putNetworksIdResponseBody200NetworkSubnetsNetworkZone obj) : (Data.Aeson..=) "type" (putNetworksIdResponseBody200NetworkSubnetsType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "gateway" (putNetworksIdResponseBody200NetworkSubnetsGateway obj) GHC.Base.<> ((Data.Aeson..=) "ip_range" (putNetworksIdResponseBody200NetworkSubnetsIpRange obj) GHC.Base.<> ((Data.Aeson..=) "network_zone" (putNetworksIdResponseBody200NetworkSubnetsNetworkZone obj) GHC.Base.<> (Data.Aeson..=) "type" (putNetworksIdResponseBody200NetworkSubnetsType obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PutNetworksIdResponseBody200NetworkSubnets
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PutNetworksIdResponseBody200NetworkSubnets" (\obj -> (((GHC.Base.pure PutNetworksIdResponseBody200NetworkSubnets GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "gateway")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ip_range")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network_zone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema PutNetworksIdResponseBody200NetworkSubnetsType
-- 
-- Type of Subnetwork
data PutNetworksIdResponseBody200NetworkSubnetsType
    = PutNetworksIdResponseBody200NetworkSubnetsTypeEnumOther Data.Aeson.Types.Internal.Value
    | PutNetworksIdResponseBody200NetworkSubnetsTypeEnumTyped Data.Text.Internal.Text
    | PutNetworksIdResponseBody200NetworkSubnetsTypeEnumStringCloud
    | PutNetworksIdResponseBody200NetworkSubnetsTypeEnumStringServer
    | PutNetworksIdResponseBody200NetworkSubnetsTypeEnumStringVswitch
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PutNetworksIdResponseBody200NetworkSubnetsType
    where toJSON (PutNetworksIdResponseBody200NetworkSubnetsTypeEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PutNetworksIdResponseBody200NetworkSubnetsTypeEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PutNetworksIdResponseBody200NetworkSubnetsTypeEnumStringCloud) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cloud"
          toJSON (PutNetworksIdResponseBody200NetworkSubnetsTypeEnumStringServer) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "server"
          toJSON (PutNetworksIdResponseBody200NetworkSubnetsTypeEnumStringVswitch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "vswitch"
instance Data.Aeson.FromJSON PutNetworksIdResponseBody200NetworkSubnetsType
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "cloud")
                                          then PutNetworksIdResponseBody200NetworkSubnetsTypeEnumStringCloud
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "server")
                                                then PutNetworksIdResponseBody200NetworkSubnetsTypeEnumStringServer
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "vswitch")
                                                      then PutNetworksIdResponseBody200NetworkSubnetsTypeEnumStringVswitch
                                                      else PutNetworksIdResponseBody200NetworkSubnetsTypeEnumOther val)
