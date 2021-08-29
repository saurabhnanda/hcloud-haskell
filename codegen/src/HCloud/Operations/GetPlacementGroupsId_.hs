-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getPlacementGroups_Id_
module HCloud.Operations.GetPlacementGroupsId_ where

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

-- | > GET /placement_groups/{id}
-- 
-- Gets a specific PlacementGroup object.
getPlacementGroups_Id_ :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Integer.Type.Integer                                                                                                           -- ^ id: ID of the resource
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetPlacementGroupsIdResponse))   -- ^ Monad containing the result of the operation
getPlacementGroups_Id_ config
                       id = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetPlacementGroupsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetPlacementGroupsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                              GetPlacementGroupsIdResponseBody200)
                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/placement_groups/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [])
-- | > GET /placement_groups/{id}
-- 
-- The same as 'getPlacementGroups_Id_' but returns the raw 'Data.ByteString.Char8.ByteString'
getPlacementGroups_Id_Raw :: forall m s . (HCloud.Common.MonadHTTP m,
                                           HCloud.Common.SecurityScheme s) =>
                             HCloud.Common.Configuration s ->
                             GHC.Integer.Type.Integer ->
                             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                   (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getPlacementGroups_Id_Raw config
                          id = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/placement_groups/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [])
-- | > GET /placement_groups/{id}
-- 
-- Monadic version of 'getPlacementGroups_Id_' (use with 'HCloud.Common.runWithConfiguration')
getPlacementGroups_Id_M :: forall m s . (HCloud.Common.MonadHTTP m,
                                         HCloud.Common.SecurityScheme s) =>
                           GHC.Integer.Type.Integer ->
                           Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response GetPlacementGroupsIdResponse))
getPlacementGroups_Id_M id = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetPlacementGroupsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetPlacementGroupsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                               GetPlacementGroupsIdResponseBody200)
                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/placement_groups/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [])
-- | > GET /placement_groups/{id}
-- 
-- Monadic version of 'getPlacementGroups_Id_Raw' (use with 'HCloud.Common.runWithConfiguration')
getPlacementGroups_Id_RawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                            HCloud.Common.SecurityScheme s) =>
                              GHC.Integer.Type.Integer ->
                              Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                 m
                                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                     (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getPlacementGroups_Id_RawM id = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/placement_groups/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [])
-- | Represents a response of the operation 'getPlacementGroups_Id_'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetPlacementGroupsIdResponseError' is used.
data GetPlacementGroupsIdResponse =                                      
   GetPlacementGroupsIdResponseError GHC.Base.String                     -- ^ Means either no matching case available or a parse error
  | GetPlacementGroupsIdResponse200 GetPlacementGroupsIdResponseBody200  -- ^ The \`placement_group\` key contains a PlacementGroup object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetPlacementGroupsIdResponseBody200
-- 
-- 
data GetPlacementGroupsIdResponseBody200 = GetPlacementGroupsIdResponseBody200 {
  -- | placement_group
  getPlacementGroupsIdResponseBody200PlacementGroup :: GetPlacementGroupsIdResponseBody200PlacementGroup
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetPlacementGroupsIdResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "placement_group" (getPlacementGroupsIdResponseBody200PlacementGroup obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "placement_group" (getPlacementGroupsIdResponseBody200PlacementGroup obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetPlacementGroupsIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPlacementGroupsIdResponseBody200" (\obj -> GHC.Base.pure GetPlacementGroupsIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "placement_group"))
-- | Defines the data type for the schema GetPlacementGroupsIdResponseBody200Placement_group
-- 
-- 
data GetPlacementGroupsIdResponseBody200PlacementGroup = GetPlacementGroupsIdResponseBody200PlacementGroup {
  -- | created: Point in time when the Resource was created (in ISO-8601 format)
  getPlacementGroupsIdResponseBody200PlacementGroupCreated :: Data.Text.Internal.Text
  -- | id: ID of the Resource
  , getPlacementGroupsIdResponseBody200PlacementGroupId :: GHC.Integer.Type.Integer
  -- | labels: User-defined labels (key-value pairs)
  , getPlacementGroupsIdResponseBody200PlacementGroupLabels :: GetPlacementGroupsIdResponseBody200PlacementGroupLabels
  -- | name: Name of the Resource. Must be unique per Project.
  , getPlacementGroupsIdResponseBody200PlacementGroupName :: Data.Text.Internal.Text
  -- | servers: Array of IDs of Servers that are part of this Placement Group
  , getPlacementGroupsIdResponseBody200PlacementGroupServers :: ([] GHC.Integer.Type.Integer)
  -- | type: Type of the Placement Group
  , getPlacementGroupsIdResponseBody200PlacementGroupType :: GetPlacementGroupsIdResponseBody200PlacementGroupType
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetPlacementGroupsIdResponseBody200PlacementGroup
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "created" (getPlacementGroupsIdResponseBody200PlacementGroupCreated obj) : (Data.Aeson..=) "id" (getPlacementGroupsIdResponseBody200PlacementGroupId obj) : (Data.Aeson..=) "labels" (getPlacementGroupsIdResponseBody200PlacementGroupLabels obj) : (Data.Aeson..=) "name" (getPlacementGroupsIdResponseBody200PlacementGroupName obj) : (Data.Aeson..=) "servers" (getPlacementGroupsIdResponseBody200PlacementGroupServers obj) : (Data.Aeson..=) "type" (getPlacementGroupsIdResponseBody200PlacementGroupType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "created" (getPlacementGroupsIdResponseBody200PlacementGroupCreated obj) GHC.Base.<> ((Data.Aeson..=) "id" (getPlacementGroupsIdResponseBody200PlacementGroupId obj) GHC.Base.<> ((Data.Aeson..=) "labels" (getPlacementGroupsIdResponseBody200PlacementGroupLabels obj) GHC.Base.<> ((Data.Aeson..=) "name" (getPlacementGroupsIdResponseBody200PlacementGroupName obj) GHC.Base.<> ((Data.Aeson..=) "servers" (getPlacementGroupsIdResponseBody200PlacementGroupServers obj) GHC.Base.<> (Data.Aeson..=) "type" (getPlacementGroupsIdResponseBody200PlacementGroupType obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetPlacementGroupsIdResponseBody200PlacementGroup
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPlacementGroupsIdResponseBody200PlacementGroup" (\obj -> (((((GHC.Base.pure GetPlacementGroupsIdResponseBody200PlacementGroup GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "labels")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "servers")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the data type for the schema GetPlacementGroupsIdResponseBody200Placement_groupLabels
-- 
-- User-defined labels (key-value pairs)
data GetPlacementGroupsIdResponseBody200PlacementGroupLabels = GetPlacementGroupsIdResponseBody200PlacementGroupLabels {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetPlacementGroupsIdResponseBody200PlacementGroupLabels
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetPlacementGroupsIdResponseBody200PlacementGroupLabels
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPlacementGroupsIdResponseBody200PlacementGroupLabels" (\obj -> GHC.Base.pure GetPlacementGroupsIdResponseBody200PlacementGroupLabels)
-- | Defines the enum schema GetPlacementGroupsIdResponseBody200Placement_groupType
-- 
-- Type of the Placement Group
data GetPlacementGroupsIdResponseBody200PlacementGroupType
    = GetPlacementGroupsIdResponseBody200PlacementGroupTypeEnumOther Data.Aeson.Types.Internal.Value
    | GetPlacementGroupsIdResponseBody200PlacementGroupTypeEnumTyped Data.Text.Internal.Text
    | GetPlacementGroupsIdResponseBody200PlacementGroupTypeEnumStringSpread
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetPlacementGroupsIdResponseBody200PlacementGroupType
    where toJSON (GetPlacementGroupsIdResponseBody200PlacementGroupTypeEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetPlacementGroupsIdResponseBody200PlacementGroupTypeEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetPlacementGroupsIdResponseBody200PlacementGroupTypeEnumStringSpread) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "spread"
instance Data.Aeson.FromJSON GetPlacementGroupsIdResponseBody200PlacementGroupType
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "spread")
                                          then GetPlacementGroupsIdResponseBody200PlacementGroupTypeEnumStringSpread
                                          else GetPlacementGroupsIdResponseBody200PlacementGroupTypeEnumOther val)
