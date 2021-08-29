-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getSshKeys
module HCloud.Operations.GetSshKeys where

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

-- | > GET /ssh_keys
-- 
-- Returns all SSH key objects.
getSshKeys :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                -- ^ sort: Can be used multiple times.
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                -- ^ name: Can be used to filter resources by their name. The response will only contain the resources matching the specified name
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                -- ^ fingerprint: Can be used to filter SSH keys by their fingerprint. The response will only contain the SSH key matching the specified fingerprint.
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                -- ^ label_selector: Can be used to filter resources by labels. The response will only contain resources matching the label selector.
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetSshKeysResponse)) -- ^ Monad containing the result of the operation
getSshKeys config
           sort
           name
           fingerprint
           labelSelector = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetSshKeysResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetSshKeysResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         GetSshKeysResponseBody200)
                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/ssh_keys") ((Data.Text.pack "sort",
                                                                                                                                                                                                                                                                                                                                                                                                                    HCloud.Common.stringifyModel Data.Functor.<$> sort) : ((Data.Text.pack "name",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                             HCloud.Common.stringifyModel Data.Functor.<$> name) : ((Data.Text.pack "fingerprint",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      HCloud.Common.stringifyModel Data.Functor.<$> fingerprint) : ((Data.Text.pack "label_selector",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      HCloud.Common.stringifyModel Data.Functor.<$> labelSelector) : [])))))
-- | > GET /ssh_keys
-- 
-- The same as 'getSshKeys' but returns the raw 'Data.ByteString.Char8.ByteString'
getSshKeysRaw :: forall m s . (HCloud.Common.MonadHTTP m,
                               HCloud.Common.SecurityScheme s) =>
                 HCloud.Common.Configuration s ->
                 GHC.Maybe.Maybe Data.Text.Internal.Text ->
                 GHC.Maybe.Maybe Data.Text.Internal.Text ->
                 GHC.Maybe.Maybe Data.Text.Internal.Text ->
                 GHC.Maybe.Maybe Data.Text.Internal.Text ->
                 m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                       (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getSshKeysRaw config
              sort
              name
              fingerprint
              labelSelector = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/ssh_keys") ((Data.Text.pack "sort",
                                                                                                                                                                            HCloud.Common.stringifyModel Data.Functor.<$> sort) : ((Data.Text.pack "name",
                                                                                                                                                                                                                                     HCloud.Common.stringifyModel Data.Functor.<$> name) : ((Data.Text.pack "fingerprint",
                                                                                                                                                                                                                                                                                              HCloud.Common.stringifyModel Data.Functor.<$> fingerprint) : ((Data.Text.pack "label_selector",
                                                                                                                                                                                                                                                                                                                                                              HCloud.Common.stringifyModel Data.Functor.<$> labelSelector) : [])))))
-- | > GET /ssh_keys
-- 
-- Monadic version of 'getSshKeys' (use with 'HCloud.Common.runWithConfiguration')
getSshKeysM :: forall m s . (HCloud.Common.MonadHTTP m,
                             HCloud.Common.SecurityScheme s) =>
               GHC.Maybe.Maybe Data.Text.Internal.Text ->
               GHC.Maybe.Maybe Data.Text.Internal.Text ->
               GHC.Maybe.Maybe Data.Text.Internal.Text ->
               GHC.Maybe.Maybe Data.Text.Internal.Text ->
               Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                  m
                                                  (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                      (Network.HTTP.Client.Types.Response GetSshKeysResponse))
getSshKeysM sort
            name
            fingerprint
            labelSelector = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetSshKeysResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetSshKeysResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                          GetSshKeysResponseBody200)
                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/ssh_keys") ((Data.Text.pack "sort",
                                                                                                                                                                                                                                                                                                                                                                                                               HCloud.Common.stringifyModel Data.Functor.<$> sort) : ((Data.Text.pack "name",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        HCloud.Common.stringifyModel Data.Functor.<$> name) : ((Data.Text.pack "fingerprint",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 HCloud.Common.stringifyModel Data.Functor.<$> fingerprint) : ((Data.Text.pack "label_selector",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 HCloud.Common.stringifyModel Data.Functor.<$> labelSelector) : [])))))
-- | > GET /ssh_keys
-- 
-- Monadic version of 'getSshKeysRaw' (use with 'HCloud.Common.runWithConfiguration')
getSshKeysRawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                HCloud.Common.SecurityScheme s) =>
                  GHC.Maybe.Maybe Data.Text.Internal.Text ->
                  GHC.Maybe.Maybe Data.Text.Internal.Text ->
                  GHC.Maybe.Maybe Data.Text.Internal.Text ->
                  GHC.Maybe.Maybe Data.Text.Internal.Text ->
                  Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                     m
                                                     (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getSshKeysRawM sort
               name
               fingerprint
               labelSelector = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack "/ssh_keys") ((Data.Text.pack "sort",
                                                                                                                                                                       HCloud.Common.stringifyModel Data.Functor.<$> sort) : ((Data.Text.pack "name",
                                                                                                                                                                                                                                HCloud.Common.stringifyModel Data.Functor.<$> name) : ((Data.Text.pack "fingerprint",
                                                                                                                                                                                                                                                                                         HCloud.Common.stringifyModel Data.Functor.<$> fingerprint) : ((Data.Text.pack "label_selector",
                                                                                                                                                                                                                                                                                                                                                         HCloud.Common.stringifyModel Data.Functor.<$> labelSelector) : [])))))
-- | Represents a response of the operation 'getSshKeys'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetSshKeysResponseError' is used.
data GetSshKeysResponse =                            
   GetSshKeysResponseError GHC.Base.String           -- ^ Means either no matching case available or a parse error
  | GetSshKeysResponse200 GetSshKeysResponseBody200  -- ^ The \`ssh_keys\` key in the reply contains an array of SSH key objects with this structure
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetSshKeysResponseBody200
-- 
-- 
data GetSshKeysResponseBody200 = GetSshKeysResponseBody200 {
  -- | meta
  getSshKeysResponseBody200Meta :: (GHC.Maybe.Maybe GetSshKeysResponseBody200Meta)
  -- | ssh_keys
  , getSshKeysResponseBody200SshKeys :: ([] GetSshKeysResponseBody200SshKeys)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetSshKeysResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "meta" (getSshKeysResponseBody200Meta obj) : (Data.Aeson..=) "ssh_keys" (getSshKeysResponseBody200SshKeys obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "meta" (getSshKeysResponseBody200Meta obj) GHC.Base.<> (Data.Aeson..=) "ssh_keys" (getSshKeysResponseBody200SshKeys obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetSshKeysResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSshKeysResponseBody200" (\obj -> (GHC.Base.pure GetSshKeysResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "meta")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ssh_keys"))
-- | Defines the data type for the schema GetSshKeysResponseBody200Meta
-- 
-- 
data GetSshKeysResponseBody200Meta = GetSshKeysResponseBody200Meta {
  -- | pagination
  getSshKeysResponseBody200MetaPagination :: GetSshKeysResponseBody200MetaPagination
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetSshKeysResponseBody200Meta
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "pagination" (getSshKeysResponseBody200MetaPagination obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "pagination" (getSshKeysResponseBody200MetaPagination obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetSshKeysResponseBody200Meta
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSshKeysResponseBody200Meta" (\obj -> GHC.Base.pure GetSshKeysResponseBody200Meta GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pagination"))
-- | Defines the data type for the schema GetSshKeysResponseBody200MetaPagination
-- 
-- 
data GetSshKeysResponseBody200MetaPagination = GetSshKeysResponseBody200MetaPagination {
  -- | last_page: ID of the last page available. Can be null if the current page is the last one.
  getSshKeysResponseBody200MetaPaginationLastPage :: GHC.Types.Double
  -- | next_page: ID of the next page. Can be null if the current page is the last one.
  , getSshKeysResponseBody200MetaPaginationNextPage :: GHC.Types.Double
  -- | page: Current page number
  , getSshKeysResponseBody200MetaPaginationPage :: GHC.Types.Double
  -- | per_page: Maximum number of items shown per page in the response
  , getSshKeysResponseBody200MetaPaginationPerPage :: GHC.Types.Double
  -- | previous_page: ID of the previous page. Can be null if the current page is the first one.
  , getSshKeysResponseBody200MetaPaginationPreviousPage :: GHC.Types.Double
  -- | total_entries: The total number of entries that exist in the database for this query. Nullable if unknown.
  , getSshKeysResponseBody200MetaPaginationTotalEntries :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetSshKeysResponseBody200MetaPagination
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "last_page" (getSshKeysResponseBody200MetaPaginationLastPage obj) : (Data.Aeson..=) "next_page" (getSshKeysResponseBody200MetaPaginationNextPage obj) : (Data.Aeson..=) "page" (getSshKeysResponseBody200MetaPaginationPage obj) : (Data.Aeson..=) "per_page" (getSshKeysResponseBody200MetaPaginationPerPage obj) : (Data.Aeson..=) "previous_page" (getSshKeysResponseBody200MetaPaginationPreviousPage obj) : (Data.Aeson..=) "total_entries" (getSshKeysResponseBody200MetaPaginationTotalEntries obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "last_page" (getSshKeysResponseBody200MetaPaginationLastPage obj) GHC.Base.<> ((Data.Aeson..=) "next_page" (getSshKeysResponseBody200MetaPaginationNextPage obj) GHC.Base.<> ((Data.Aeson..=) "page" (getSshKeysResponseBody200MetaPaginationPage obj) GHC.Base.<> ((Data.Aeson..=) "per_page" (getSshKeysResponseBody200MetaPaginationPerPage obj) GHC.Base.<> ((Data.Aeson..=) "previous_page" (getSshKeysResponseBody200MetaPaginationPreviousPage obj) GHC.Base.<> (Data.Aeson..=) "total_entries" (getSshKeysResponseBody200MetaPaginationTotalEntries obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetSshKeysResponseBody200MetaPagination
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSshKeysResponseBody200MetaPagination" (\obj -> (((((GHC.Base.pure GetSshKeysResponseBody200MetaPagination GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "next_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "per_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "previous_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total_entries"))
-- | Defines the data type for the schema GetSshKeysResponseBody200Ssh_keys
-- 
-- 
data GetSshKeysResponseBody200SshKeys = GetSshKeysResponseBody200SshKeys {
  -- | created: Point in time when the Resource was created (in ISO-8601 format)
  getSshKeysResponseBody200SshKeysCreated :: Data.Text.Internal.Text
  -- | fingerprint: Fingerprint of public key
  , getSshKeysResponseBody200SshKeysFingerprint :: Data.Text.Internal.Text
  -- | id: ID of the Resource
  , getSshKeysResponseBody200SshKeysId :: GHC.Integer.Type.Integer
  -- | labels: User-defined labels (key-value pairs)
  , getSshKeysResponseBody200SshKeysLabels :: GetSshKeysResponseBody200SshKeysLabels
  -- | name: Name of the Resource. Must be unique per Project.
  , getSshKeysResponseBody200SshKeysName :: Data.Text.Internal.Text
  -- | public_key: Public key
  , getSshKeysResponseBody200SshKeysPublicKey :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetSshKeysResponseBody200SshKeys
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (getSshKeysResponseBody200SshKeysCreated obj) : (Data.Aeson..=) "fingerprint" (getSshKeysResponseBody200SshKeysFingerprint obj) : (Data.Aeson..=) "id" (getSshKeysResponseBody200SshKeysId obj) : (Data.Aeson..=) "labels" (getSshKeysResponseBody200SshKeysLabels obj) : (Data.Aeson..=) "name" (getSshKeysResponseBody200SshKeysName obj) : (Data.Aeson..=) "public_key" (getSshKeysResponseBody200SshKeysPublicKey obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (getSshKeysResponseBody200SshKeysCreated obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (getSshKeysResponseBody200SshKeysFingerprint obj) GHC.Base.<> ((Data.Aeson..=) "id" (getSshKeysResponseBody200SshKeysId obj) GHC.Base.<> ((Data.Aeson..=) "labels" (getSshKeysResponseBody200SshKeysLabels obj) GHC.Base.<> ((Data.Aeson..=) "name" (getSshKeysResponseBody200SshKeysName obj) GHC.Base.<> (Data.Aeson..=) "public_key" (getSshKeysResponseBody200SshKeysPublicKey obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetSshKeysResponseBody200SshKeys
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSshKeysResponseBody200SshKeys" (\obj -> (((((GHC.Base.pure GetSshKeysResponseBody200SshKeys GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "labels")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "public_key"))
-- | Defines the data type for the schema GetSshKeysResponseBody200Ssh_keysLabels
-- 
-- User-defined labels (key-value pairs)
data GetSshKeysResponseBody200SshKeysLabels = GetSshKeysResponseBody200SshKeysLabels {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetSshKeysResponseBody200SshKeysLabels
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetSshKeysResponseBody200SshKeysLabels
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetSshKeysResponseBody200SshKeysLabels" (\obj -> GHC.Base.pure GetSshKeysResponseBody200SshKeysLabels)