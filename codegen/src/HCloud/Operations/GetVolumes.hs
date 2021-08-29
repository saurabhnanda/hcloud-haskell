-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getVolumes
module HCloud.Operations.GetVolumes where

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

-- | > GET /volumes
-- 
-- Gets all existing Volumes that you have available.
getVolumes :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                -- ^ status: Can be used multiple times. The response will only contain Volumes matching the status.
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                -- ^ sort: Can be used multiple times.
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                -- ^ name: Can be used to filter resources by their name. The response will only contain the resources matching the specified name
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                -- ^ label_selector: Can be used to filter resources by labels. The response will only contain resources matching the label selector.
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetVolumesResponse)) -- ^ Monad containing the result of the operation
getVolumes config
           status
           sort
           name
           labelSelector = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetVolumesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetVolumesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         GetVolumesResponseBody200)
                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/volumes") ((Data.Text.pack "status",
                                                                                                                                                                                                                                                                                                                                                                                                                   HCloud.Common.stringifyModel Data.Functor.<$> status) : ((Data.Text.pack "sort",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              HCloud.Common.stringifyModel Data.Functor.<$> sort) : ((Data.Text.pack "name",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       HCloud.Common.stringifyModel Data.Functor.<$> name) : ((Data.Text.pack "label_selector",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                HCloud.Common.stringifyModel Data.Functor.<$> labelSelector) : [])))))
-- | > GET /volumes
-- 
-- The same as 'getVolumes' but returns the raw 'Data.ByteString.Char8.ByteString'
getVolumesRaw :: forall m s . (HCloud.Common.MonadHTTP m,
                               HCloud.Common.SecurityScheme s) =>
                 HCloud.Common.Configuration s ->
                 GHC.Maybe.Maybe Data.Text.Internal.Text ->
                 GHC.Maybe.Maybe Data.Text.Internal.Text ->
                 GHC.Maybe.Maybe Data.Text.Internal.Text ->
                 GHC.Maybe.Maybe Data.Text.Internal.Text ->
                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getVolumesRaw config
              status
              sort
              name
              labelSelector = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/volumes") ((Data.Text.pack "status",
                                                                                                                                                                           HCloud.Common.stringifyModel Data.Functor.<$> status) : ((Data.Text.pack "sort",
                                                                                                                                                                                                                                      HCloud.Common.stringifyModel Data.Functor.<$> sort) : ((Data.Text.pack "name",
                                                                                                                                                                                                                                                                                               HCloud.Common.stringifyModel Data.Functor.<$> name) : ((Data.Text.pack "label_selector",
                                                                                                                                                                                                                                                                                                                                                        HCloud.Common.stringifyModel Data.Functor.<$> labelSelector) : [])))))
-- | > GET /volumes
-- 
-- Monadic version of 'getVolumes' (use with 'HCloud.Common.runWithConfiguration')
getVolumesM :: forall m s . (HCloud.Common.MonadHTTP m,
                             HCloud.Common.SecurityScheme s) =>
               GHC.Maybe.Maybe Data.Text.Internal.Text ->
               GHC.Maybe.Maybe Data.Text.Internal.Text ->
               GHC.Maybe.Maybe Data.Text.Internal.Text ->
               GHC.Maybe.Maybe Data.Text.Internal.Text ->
               Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                  m
                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                      (Network.HTTP.Client.Types.Response GetVolumesResponse))
getVolumesM status
            sort
            name
            labelSelector = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetVolumesResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetVolumesResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                          GetVolumesResponseBody200)
                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/volumes") ((Data.Text.pack "status",
                                                                                                                                                                                                                                                                                                                                                                                                              HCloud.Common.stringifyModel Data.Functor.<$> status) : ((Data.Text.pack "sort",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                         HCloud.Common.stringifyModel Data.Functor.<$> sort) : ((Data.Text.pack "name",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  HCloud.Common.stringifyModel Data.Functor.<$> name) : ((Data.Text.pack "label_selector",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           HCloud.Common.stringifyModel Data.Functor.<$> labelSelector) : [])))))
-- | > GET /volumes
-- 
-- Monadic version of 'getVolumesRaw' (use with 'HCloud.Common.runWithConfiguration')
getVolumesRawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                HCloud.Common.SecurityScheme s) =>
                  GHC.Maybe.Maybe Data.Text.Internal.Text ->
                  GHC.Maybe.Maybe Data.Text.Internal.Text ->
                  GHC.Maybe.Maybe Data.Text.Internal.Text ->
                  GHC.Maybe.Maybe Data.Text.Internal.Text ->
                  Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getVolumesRawM status
               sort
               name
               labelSelector = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/volumes") ((Data.Text.pack "status",
                                                                                                                                                                      HCloud.Common.stringifyModel Data.Functor.<$> status) : ((Data.Text.pack "sort",
                                                                                                                                                                                                                                 HCloud.Common.stringifyModel Data.Functor.<$> sort) : ((Data.Text.pack "name",
                                                                                                                                                                                                                                                                                          HCloud.Common.stringifyModel Data.Functor.<$> name) : ((Data.Text.pack "label_selector",
                                                                                                                                                                                                                                                                                                                                                   HCloud.Common.stringifyModel Data.Functor.<$> labelSelector) : [])))))
-- | Represents a response of the operation 'getVolumes'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetVolumesResponseError' is used.
data GetVolumesResponse =                            
   GetVolumesResponseError GHC.Base.String           -- ^ Means either no matching case available or a parse error
  | GetVolumesResponse200 GetVolumesResponseBody200  -- ^ The \`volumes\` key contains a list of volumes
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetVolumesResponseBody200
-- 
-- 
data GetVolumesResponseBody200 = GetVolumesResponseBody200 {
  -- | meta
  getVolumesResponseBody200Meta :: (GHC.Maybe.Maybe GetVolumesResponseBody200Meta)
  -- | volumes
  , getVolumesResponseBody200Volumes :: ([] GetVolumesResponseBody200Volumes)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "meta" (getVolumesResponseBody200Meta obj) : (Data.Aeson..=) "volumes" (getVolumesResponseBody200Volumes obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "meta" (getVolumesResponseBody200Meta obj) GHC.Base.<> (Data.Aeson..=) "volumes" (getVolumesResponseBody200Volumes obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetVolumesResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVolumesResponseBody200" (\obj -> (GHC.Base.pure GetVolumesResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "meta")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "volumes"))
-- | Defines the data type for the schema GetVolumesResponseBody200Meta
-- 
-- 
data GetVolumesResponseBody200Meta = GetVolumesResponseBody200Meta {
  -- | pagination
  getVolumesResponseBody200MetaPagination :: GetVolumesResponseBody200MetaPagination
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesResponseBody200Meta
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "pagination" (getVolumesResponseBody200MetaPagination obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "pagination" (getVolumesResponseBody200MetaPagination obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetVolumesResponseBody200Meta
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVolumesResponseBody200Meta" (\obj -> GHC.Base.pure GetVolumesResponseBody200Meta GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pagination"))
-- | Defines the data type for the schema GetVolumesResponseBody200MetaPagination
-- 
-- 
data GetVolumesResponseBody200MetaPagination = GetVolumesResponseBody200MetaPagination {
  -- | last_page: ID of the last page available. Can be null if the current page is the last one.
  getVolumesResponseBody200MetaPaginationLastPage :: GHC.Types.Double
  -- | next_page: ID of the next page. Can be null if the current page is the last one.
  , getVolumesResponseBody200MetaPaginationNextPage :: GHC.Types.Double
  -- | page: Current page number
  , getVolumesResponseBody200MetaPaginationPage :: GHC.Types.Double
  -- | per_page: Maximum number of items shown per page in the response
  , getVolumesResponseBody200MetaPaginationPerPage :: GHC.Types.Double
  -- | previous_page: ID of the previous page. Can be null if the current page is the first one.
  , getVolumesResponseBody200MetaPaginationPreviousPage :: GHC.Types.Double
  -- | total_entries: The total number of entries that exist in the database for this query. Nullable if unknown.
  , getVolumesResponseBody200MetaPaginationTotalEntries :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesResponseBody200MetaPagination
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "last_page" (getVolumesResponseBody200MetaPaginationLastPage obj) : (Data.Aeson..=) "next_page" (getVolumesResponseBody200MetaPaginationNextPage obj) : (Data.Aeson..=) "page" (getVolumesResponseBody200MetaPaginationPage obj) : (Data.Aeson..=) "per_page" (getVolumesResponseBody200MetaPaginationPerPage obj) : (Data.Aeson..=) "previous_page" (getVolumesResponseBody200MetaPaginationPreviousPage obj) : (Data.Aeson..=) "total_entries" (getVolumesResponseBody200MetaPaginationTotalEntries obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "last_page" (getVolumesResponseBody200MetaPaginationLastPage obj) GHC.Base.<> ((Data.Aeson..=) "next_page" (getVolumesResponseBody200MetaPaginationNextPage obj) GHC.Base.<> ((Data.Aeson..=) "page" (getVolumesResponseBody200MetaPaginationPage obj) GHC.Base.<> ((Data.Aeson..=) "per_page" (getVolumesResponseBody200MetaPaginationPerPage obj) GHC.Base.<> ((Data.Aeson..=) "previous_page" (getVolumesResponseBody200MetaPaginationPreviousPage obj) GHC.Base.<> (Data.Aeson..=) "total_entries" (getVolumesResponseBody200MetaPaginationTotalEntries obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetVolumesResponseBody200MetaPagination
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVolumesResponseBody200MetaPagination" (\obj -> (((((GHC.Base.pure GetVolumesResponseBody200MetaPagination GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "next_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "per_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "previous_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total_entries"))
-- | Defines the data type for the schema GetVolumesResponseBody200Volumes
-- 
-- 
data GetVolumesResponseBody200Volumes = GetVolumesResponseBody200Volumes {
  -- | created: Point in time when the Resource was created (in ISO-8601 format)
  getVolumesResponseBody200VolumesCreated :: Data.Text.Internal.Text
  -- | format: Filesystem of the Volume if formatted on creation, null if not formatted on creation
  , getVolumesResponseBody200VolumesFormat :: Data.Text.Internal.Text
  -- | id: ID of the Resource
  , getVolumesResponseBody200VolumesId :: GHC.Integer.Type.Integer
  -- | labels: User-defined labels (key-value pairs)
  , getVolumesResponseBody200VolumesLabels :: GetVolumesResponseBody200VolumesLabels
  -- | linux_device: Device path on the file system for the Volume
  , getVolumesResponseBody200VolumesLinuxDevice :: Data.Text.Internal.Text
  -- | location: Location of the Volume. Volume can only be attached to Servers in the same Location.
  , getVolumesResponseBody200VolumesLocation :: GetVolumesResponseBody200VolumesLocation
  -- | name: Name of the Resource. Must be unique per Project.
  , getVolumesResponseBody200VolumesName :: Data.Text.Internal.Text
  -- | protection: Protection configuration for the Resource
  , getVolumesResponseBody200VolumesProtection :: GetVolumesResponseBody200VolumesProtection
  -- | server: ID of the Server the Volume is attached to, null if it is not attached at all
  , getVolumesResponseBody200VolumesServer :: GHC.Integer.Type.Integer
  -- | size: Size in GB of the Volume
  , getVolumesResponseBody200VolumesSize :: GHC.Types.Double
  -- | status: Current status of the Volume
  , getVolumesResponseBody200VolumesStatus :: GetVolumesResponseBody200VolumesStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesResponseBody200Volumes
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (getVolumesResponseBody200VolumesCreated obj) : (Data.Aeson..=) "format" (getVolumesResponseBody200VolumesFormat obj) : (Data.Aeson..=) "id" (getVolumesResponseBody200VolumesId obj) : (Data.Aeson..=) "labels" (getVolumesResponseBody200VolumesLabels obj) : (Data.Aeson..=) "linux_device" (getVolumesResponseBody200VolumesLinuxDevice obj) : (Data.Aeson..=) "location" (getVolumesResponseBody200VolumesLocation obj) : (Data.Aeson..=) "name" (getVolumesResponseBody200VolumesName obj) : (Data.Aeson..=) "protection" (getVolumesResponseBody200VolumesProtection obj) : (Data.Aeson..=) "server" (getVolumesResponseBody200VolumesServer obj) : (Data.Aeson..=) "size" (getVolumesResponseBody200VolumesSize obj) : (Data.Aeson..=) "status" (getVolumesResponseBody200VolumesStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (getVolumesResponseBody200VolumesCreated obj) GHC.Base.<> ((Data.Aeson..=) "format" (getVolumesResponseBody200VolumesFormat obj) GHC.Base.<> ((Data.Aeson..=) "id" (getVolumesResponseBody200VolumesId obj) GHC.Base.<> ((Data.Aeson..=) "labels" (getVolumesResponseBody200VolumesLabels obj) GHC.Base.<> ((Data.Aeson..=) "linux_device" (getVolumesResponseBody200VolumesLinuxDevice obj) GHC.Base.<> ((Data.Aeson..=) "location" (getVolumesResponseBody200VolumesLocation obj) GHC.Base.<> ((Data.Aeson..=) "name" (getVolumesResponseBody200VolumesName obj) GHC.Base.<> ((Data.Aeson..=) "protection" (getVolumesResponseBody200VolumesProtection obj) GHC.Base.<> ((Data.Aeson..=) "server" (getVolumesResponseBody200VolumesServer obj) GHC.Base.<> ((Data.Aeson..=) "size" (getVolumesResponseBody200VolumesSize obj) GHC.Base.<> (Data.Aeson..=) "status" (getVolumesResponseBody200VolumesStatus obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetVolumesResponseBody200Volumes
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVolumesResponseBody200Volumes" (\obj -> ((((((((((GHC.Base.pure GetVolumesResponseBody200Volumes GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "format")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "labels")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "linux_device")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "location")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "protection")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "server")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "size")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Defines the data type for the schema GetVolumesResponseBody200VolumesLabels
-- 
-- User-defined labels (key-value pairs)
data GetVolumesResponseBody200VolumesLabels = GetVolumesResponseBody200VolumesLabels {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesResponseBody200VolumesLabels
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetVolumesResponseBody200VolumesLabels
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVolumesResponseBody200VolumesLabels" (\obj -> GHC.Base.pure GetVolumesResponseBody200VolumesLabels)
-- | Defines the data type for the schema GetVolumesResponseBody200VolumesLocation
-- 
-- Location of the Volume. Volume can only be attached to Servers in the same Location.
data GetVolumesResponseBody200VolumesLocation = GetVolumesResponseBody200VolumesLocation {
  -- | city: City the Location is closest to
  getVolumesResponseBody200VolumesLocationCity :: Data.Text.Internal.Text
  -- | country: ISO 3166-1 alpha-2 code of the country the Location resides in
  , getVolumesResponseBody200VolumesLocationCountry :: Data.Text.Internal.Text
  -- | description: Description of the Location
  , getVolumesResponseBody200VolumesLocationDescription :: Data.Text.Internal.Text
  -- | id: ID of the Location
  , getVolumesResponseBody200VolumesLocationId :: GHC.Types.Double
  -- | latitude: Latitude of the city closest to the Location
  , getVolumesResponseBody200VolumesLocationLatitude :: GHC.Types.Double
  -- | longitude: Longitude of the city closest to the Location
  , getVolumesResponseBody200VolumesLocationLongitude :: GHC.Types.Double
  -- | name: Unique identifier of the Location
  , getVolumesResponseBody200VolumesLocationName :: Data.Text.Internal.Text
  -- | network_zone: Name of network zone this Location resides in
  , getVolumesResponseBody200VolumesLocationNetworkZone :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesResponseBody200VolumesLocation
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (getVolumesResponseBody200VolumesLocationCity obj) : (Data.Aeson..=) "country" (getVolumesResponseBody200VolumesLocationCountry obj) : (Data.Aeson..=) "description" (getVolumesResponseBody200VolumesLocationDescription obj) : (Data.Aeson..=) "id" (getVolumesResponseBody200VolumesLocationId obj) : (Data.Aeson..=) "latitude" (getVolumesResponseBody200VolumesLocationLatitude obj) : (Data.Aeson..=) "longitude" (getVolumesResponseBody200VolumesLocationLongitude obj) : (Data.Aeson..=) "name" (getVolumesResponseBody200VolumesLocationName obj) : (Data.Aeson..=) "network_zone" (getVolumesResponseBody200VolumesLocationNetworkZone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (getVolumesResponseBody200VolumesLocationCity obj) GHC.Base.<> ((Data.Aeson..=) "country" (getVolumesResponseBody200VolumesLocationCountry obj) GHC.Base.<> ((Data.Aeson..=) "description" (getVolumesResponseBody200VolumesLocationDescription obj) GHC.Base.<> ((Data.Aeson..=) "id" (getVolumesResponseBody200VolumesLocationId obj) GHC.Base.<> ((Data.Aeson..=) "latitude" (getVolumesResponseBody200VolumesLocationLatitude obj) GHC.Base.<> ((Data.Aeson..=) "longitude" (getVolumesResponseBody200VolumesLocationLongitude obj) GHC.Base.<> ((Data.Aeson..=) "name" (getVolumesResponseBody200VolumesLocationName obj) GHC.Base.<> (Data.Aeson..=) "network_zone" (getVolumesResponseBody200VolumesLocationNetworkZone obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetVolumesResponseBody200VolumesLocation
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVolumesResponseBody200VolumesLocation" (\obj -> (((((((GHC.Base.pure GetVolumesResponseBody200VolumesLocation GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "latitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "longitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network_zone"))
-- | Defines the data type for the schema GetVolumesResponseBody200VolumesProtection
-- 
-- Protection configuration for the Resource
data GetVolumesResponseBody200VolumesProtection = GetVolumesResponseBody200VolumesProtection {
  -- | delete: If true, prevents the Resource from being deleted
  getVolumesResponseBody200VolumesProtectionDelete :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesResponseBody200VolumesProtection
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "delete" (getVolumesResponseBody200VolumesProtectionDelete obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "delete" (getVolumesResponseBody200VolumesProtectionDelete obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetVolumesResponseBody200VolumesProtection
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVolumesResponseBody200VolumesProtection" (\obj -> GHC.Base.pure GetVolumesResponseBody200VolumesProtection GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "delete"))
-- | Defines the enum schema GetVolumesResponseBody200VolumesStatus
-- 
-- Current status of the Volume
data GetVolumesResponseBody200VolumesStatus
    = GetVolumesResponseBody200VolumesStatusEnumOther Data.Aeson.Types.Internal.Value
    | GetVolumesResponseBody200VolumesStatusEnumTyped Data.Text.Internal.Text
    | GetVolumesResponseBody200VolumesStatusEnumStringAvailable
    | GetVolumesResponseBody200VolumesStatusEnumStringCreating
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesResponseBody200VolumesStatus
    where toJSON (GetVolumesResponseBody200VolumesStatusEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetVolumesResponseBody200VolumesStatusEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetVolumesResponseBody200VolumesStatusEnumStringAvailable) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "available"
          toJSON (GetVolumesResponseBody200VolumesStatusEnumStringCreating) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "creating"
instance Data.Aeson.FromJSON GetVolumesResponseBody200VolumesStatus
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "available")
                                          then GetVolumesResponseBody200VolumesStatusEnumStringAvailable
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "creating")
                                                then GetVolumesResponseBody200VolumesStatusEnumStringCreating
                                                else GetVolumesResponseBody200VolumesStatusEnumOther val)
