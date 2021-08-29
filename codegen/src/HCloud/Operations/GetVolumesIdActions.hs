-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getVolumes_Id_Actions
module HCloud.Operations.GetVolumesIdActions where

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

-- | > GET /volumes/{id}/actions
-- 
-- Returns all Action objects for a Volume. You can \`sort\` the results by using the sort URI parameter, and filter them with the \`status\` parameter.
getVolumes_Id_Actions :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Integer.Type.Integer                                                                                                          -- ^ id: ID of the Volume
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                           -- ^ sort: Can be used multiple times.
  -> GHC.Maybe.Maybe Data.Text.Internal.Text                                                                                           -- ^ status: Can be used multiple times, the response will contain only Actions with specified statuses
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetVolumesIdActionsResponse))   -- ^ Monad containing the result of the operation
getVolumes_Id_Actions config
                      id
                      sort
                      status = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetVolumesIdActionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetVolumesIdActionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                               GetVolumesIdActionsResponseBody200)
                                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions"))) ((Data.Text.pack "sort",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           HCloud.Common.stringifyModel Data.Functor.<$> sort) : ((Data.Text.pack "status",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    HCloud.Common.stringifyModel Data.Functor.<$> status) : [])))
-- | > GET /volumes/{id}/actions
-- 
-- The same as 'getVolumes_Id_Actions' but returns the raw 'Data.ByteString.Char8.ByteString'
getVolumes_Id_ActionsRaw :: forall m s . (HCloud.Common.MonadHTTP m,
                                          HCloud.Common.SecurityScheme s) =>
                            HCloud.Common.Configuration s ->
                            GHC.Integer.Type.Integer ->
                            GHC.Maybe.Maybe Data.Text.Internal.Text ->
                            GHC.Maybe.Maybe Data.Text.Internal.Text ->
                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getVolumes_Id_ActionsRaw config
                         id
                         sort
                         status = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions"))) ((Data.Text.pack "sort",
                                                                                                                                                                                                                                                                                                                                                                                          HCloud.Common.stringifyModel Data.Functor.<$> sort) : ((Data.Text.pack "status",
                                                                                                                                                                                                                                                                                                                                                                                                                                                   HCloud.Common.stringifyModel Data.Functor.<$> status) : [])))
-- | > GET /volumes/{id}/actions
-- 
-- Monadic version of 'getVolumes_Id_Actions' (use with 'HCloud.Common.runWithConfiguration')
getVolumes_Id_ActionsM :: forall m s . (HCloud.Common.MonadHTTP m,
                                        HCloud.Common.SecurityScheme s) =>
                          GHC.Integer.Type.Integer ->
                          GHC.Maybe.Maybe Data.Text.Internal.Text ->
                          GHC.Maybe.Maybe Data.Text.Internal.Text ->
                          Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                             m
                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                 (Network.HTTP.Client.Types.Response GetVolumesIdActionsResponse))
getVolumes_Id_ActionsM id
                       sort
                       status = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetVolumesIdActionsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetVolumesIdActionsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                GetVolumesIdActionsResponseBody200)
                                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions"))) ((Data.Text.pack "sort",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      HCloud.Common.stringifyModel Data.Functor.<$> sort) : ((Data.Text.pack "status",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               HCloud.Common.stringifyModel Data.Functor.<$> status) : [])))
-- | > GET /volumes/{id}/actions
-- 
-- Monadic version of 'getVolumes_Id_ActionsRaw' (use with 'HCloud.Common.runWithConfiguration')
getVolumes_Id_ActionsRawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                           HCloud.Common.SecurityScheme s) =>
                             GHC.Integer.Type.Integer ->
                             GHC.Maybe.Maybe Data.Text.Internal.Text ->
                             GHC.Maybe.Maybe Data.Text.Internal.Text ->
                             Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                m
                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getVolumes_Id_ActionsRawM id
                          sort
                          status = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions"))) ((Data.Text.pack "sort",
                                                                                                                                                                                                                                                                                                                                                                                     HCloud.Common.stringifyModel Data.Functor.<$> sort) : ((Data.Text.pack "status",
                                                                                                                                                                                                                                                                                                                                                                                                                                              HCloud.Common.stringifyModel Data.Functor.<$> status) : [])))
-- | Represents a response of the operation 'getVolumes_Id_Actions'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetVolumesIdActionsResponseError' is used.
data GetVolumesIdActionsResponse =                                     
   GetVolumesIdActionsResponseError GHC.Base.String                    -- ^ Means either no matching case available or a parse error
  | GetVolumesIdActionsResponse200 GetVolumesIdActionsResponseBody200  -- ^ The \`actions\` key contains a list of Actions
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetVolumesIdActionsResponseBody200
-- 
-- 
data GetVolumesIdActionsResponseBody200 = GetVolumesIdActionsResponseBody200 {
  -- | actions
  getVolumesIdActionsResponseBody200Actions :: ([] GetVolumesIdActionsResponseBody200Actions)
  -- | meta
  , getVolumesIdActionsResponseBody200Meta :: (GHC.Maybe.Maybe GetVolumesIdActionsResponseBody200Meta)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesIdActionsResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "actions" (getVolumesIdActionsResponseBody200Actions obj) : (Data.Aeson..=) "meta" (getVolumesIdActionsResponseBody200Meta obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "actions" (getVolumesIdActionsResponseBody200Actions obj) GHC.Base.<> (Data.Aeson..=) "meta" (getVolumesIdActionsResponseBody200Meta obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetVolumesIdActionsResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVolumesIdActionsResponseBody200" (\obj -> (GHC.Base.pure GetVolumesIdActionsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "actions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "meta"))
-- | Defines the data type for the schema GetVolumesIdActionsResponseBody200Actions
-- 
-- 
data GetVolumesIdActionsResponseBody200Actions = GetVolumesIdActionsResponseBody200Actions {
  -- | command: Command executed in the Action
  getVolumesIdActionsResponseBody200ActionsCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , getVolumesIdActionsResponseBody200ActionsError :: GetVolumesIdActionsResponseBody200ActionsError
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , getVolumesIdActionsResponseBody200ActionsFinished :: Data.Text.Internal.Text
  -- | id: ID of the Resource
  , getVolumesIdActionsResponseBody200ActionsId :: GHC.Integer.Type.Integer
  -- | progress: Progress of Action in percent
  , getVolumesIdActionsResponseBody200ActionsProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , getVolumesIdActionsResponseBody200ActionsResources :: ([] GetVolumesIdActionsResponseBody200ActionsResources)
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , getVolumesIdActionsResponseBody200ActionsStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , getVolumesIdActionsResponseBody200ActionsStatus :: GetVolumesIdActionsResponseBody200ActionsStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesIdActionsResponseBody200Actions
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "command" (getVolumesIdActionsResponseBody200ActionsCommand obj) : (Data.Aeson..=) "error" (getVolumesIdActionsResponseBody200ActionsError obj) : (Data.Aeson..=) "finished" (getVolumesIdActionsResponseBody200ActionsFinished obj) : (Data.Aeson..=) "id" (getVolumesIdActionsResponseBody200ActionsId obj) : (Data.Aeson..=) "progress" (getVolumesIdActionsResponseBody200ActionsProgress obj) : (Data.Aeson..=) "resources" (getVolumesIdActionsResponseBody200ActionsResources obj) : (Data.Aeson..=) "started" (getVolumesIdActionsResponseBody200ActionsStarted obj) : (Data.Aeson..=) "status" (getVolumesIdActionsResponseBody200ActionsStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "command" (getVolumesIdActionsResponseBody200ActionsCommand obj) GHC.Base.<> ((Data.Aeson..=) "error" (getVolumesIdActionsResponseBody200ActionsError obj) GHC.Base.<> ((Data.Aeson..=) "finished" (getVolumesIdActionsResponseBody200ActionsFinished obj) GHC.Base.<> ((Data.Aeson..=) "id" (getVolumesIdActionsResponseBody200ActionsId obj) GHC.Base.<> ((Data.Aeson..=) "progress" (getVolumesIdActionsResponseBody200ActionsProgress obj) GHC.Base.<> ((Data.Aeson..=) "resources" (getVolumesIdActionsResponseBody200ActionsResources obj) GHC.Base.<> ((Data.Aeson..=) "started" (getVolumesIdActionsResponseBody200ActionsStarted obj) GHC.Base.<> (Data.Aeson..=) "status" (getVolumesIdActionsResponseBody200ActionsStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetVolumesIdActionsResponseBody200Actions
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVolumesIdActionsResponseBody200Actions" (\obj -> (((((((GHC.Base.pure GetVolumesIdActionsResponseBody200Actions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Defines the data type for the schema GetVolumesIdActionsResponseBody200ActionsError
-- 
-- Error message for the Action if error occurred, otherwise null
data GetVolumesIdActionsResponseBody200ActionsError = GetVolumesIdActionsResponseBody200ActionsError {
  -- | code: Fixed machine readable code
  getVolumesIdActionsResponseBody200ActionsErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , getVolumesIdActionsResponseBody200ActionsErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesIdActionsResponseBody200ActionsError
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "code" (getVolumesIdActionsResponseBody200ActionsErrorCode obj) : (Data.Aeson..=) "message" (getVolumesIdActionsResponseBody200ActionsErrorMessage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "code" (getVolumesIdActionsResponseBody200ActionsErrorCode obj) GHC.Base.<> (Data.Aeson..=) "message" (getVolumesIdActionsResponseBody200ActionsErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetVolumesIdActionsResponseBody200ActionsError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVolumesIdActionsResponseBody200ActionsError" (\obj -> (GHC.Base.pure GetVolumesIdActionsResponseBody200ActionsError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Defines the data type for the schema GetVolumesIdActionsResponseBody200ActionsResources
-- 
-- 
data GetVolumesIdActionsResponseBody200ActionsResources = GetVolumesIdActionsResponseBody200ActionsResources {
  -- | id: ID of the Resource
  getVolumesIdActionsResponseBody200ActionsResourcesId :: GHC.Integer.Type.Integer
  -- | type: Type of resource referenced
  , getVolumesIdActionsResponseBody200ActionsResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesIdActionsResponseBody200ActionsResources
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (getVolumesIdActionsResponseBody200ActionsResourcesId obj) : (Data.Aeson..=) "type" (getVolumesIdActionsResponseBody200ActionsResourcesType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (getVolumesIdActionsResponseBody200ActionsResourcesId obj) GHC.Base.<> (Data.Aeson..=) "type" (getVolumesIdActionsResponseBody200ActionsResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetVolumesIdActionsResponseBody200ActionsResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVolumesIdActionsResponseBody200ActionsResources" (\obj -> (GHC.Base.pure GetVolumesIdActionsResponseBody200ActionsResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema GetVolumesIdActionsResponseBody200ActionsStatus
-- 
-- Status of the Action
data GetVolumesIdActionsResponseBody200ActionsStatus
    = GetVolumesIdActionsResponseBody200ActionsStatusEnumOther Data.Aeson.Types.Internal.Value
    | GetVolumesIdActionsResponseBody200ActionsStatusEnumTyped Data.Text.Internal.Text
    | GetVolumesIdActionsResponseBody200ActionsStatusEnumStringError
    | GetVolumesIdActionsResponseBody200ActionsStatusEnumStringRunning
    | GetVolumesIdActionsResponseBody200ActionsStatusEnumStringSuccess
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesIdActionsResponseBody200ActionsStatus
    where toJSON (GetVolumesIdActionsResponseBody200ActionsStatusEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetVolumesIdActionsResponseBody200ActionsStatusEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetVolumesIdActionsResponseBody200ActionsStatusEnumStringError) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error"
          toJSON (GetVolumesIdActionsResponseBody200ActionsStatusEnumStringRunning) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running"
          toJSON (GetVolumesIdActionsResponseBody200ActionsStatusEnumStringSuccess) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success"
instance Data.Aeson.FromJSON GetVolumesIdActionsResponseBody200ActionsStatus
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error")
                                          then GetVolumesIdActionsResponseBody200ActionsStatusEnumStringError
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running")
                                                then GetVolumesIdActionsResponseBody200ActionsStatusEnumStringRunning
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success")
                                                      then GetVolumesIdActionsResponseBody200ActionsStatusEnumStringSuccess
                                                      else GetVolumesIdActionsResponseBody200ActionsStatusEnumOther val)
-- | Defines the data type for the schema GetVolumesIdActionsResponseBody200Meta
-- 
-- 
data GetVolumesIdActionsResponseBody200Meta = GetVolumesIdActionsResponseBody200Meta {
  -- | pagination
  getVolumesIdActionsResponseBody200MetaPagination :: GetVolumesIdActionsResponseBody200MetaPagination
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesIdActionsResponseBody200Meta
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "pagination" (getVolumesIdActionsResponseBody200MetaPagination obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "pagination" (getVolumesIdActionsResponseBody200MetaPagination obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetVolumesIdActionsResponseBody200Meta
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVolumesIdActionsResponseBody200Meta" (\obj -> GHC.Base.pure GetVolumesIdActionsResponseBody200Meta GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pagination"))
-- | Defines the data type for the schema GetVolumesIdActionsResponseBody200MetaPagination
-- 
-- 
data GetVolumesIdActionsResponseBody200MetaPagination = GetVolumesIdActionsResponseBody200MetaPagination {
  -- | last_page: ID of the last page available. Can be null if the current page is the last one.
  getVolumesIdActionsResponseBody200MetaPaginationLastPage :: GHC.Types.Double
  -- | next_page: ID of the next page. Can be null if the current page is the last one.
  , getVolumesIdActionsResponseBody200MetaPaginationNextPage :: GHC.Types.Double
  -- | page: Current page number
  , getVolumesIdActionsResponseBody200MetaPaginationPage :: GHC.Types.Double
  -- | per_page: Maximum number of items shown per page in the response
  , getVolumesIdActionsResponseBody200MetaPaginationPerPage :: GHC.Types.Double
  -- | previous_page: ID of the previous page. Can be null if the current page is the first one.
  , getVolumesIdActionsResponseBody200MetaPaginationPreviousPage :: GHC.Types.Double
  -- | total_entries: The total number of entries that exist in the database for this query. Nullable if unknown.
  , getVolumesIdActionsResponseBody200MetaPaginationTotalEntries :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetVolumesIdActionsResponseBody200MetaPagination
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "last_page" (getVolumesIdActionsResponseBody200MetaPaginationLastPage obj) : (Data.Aeson..=) "next_page" (getVolumesIdActionsResponseBody200MetaPaginationNextPage obj) : (Data.Aeson..=) "page" (getVolumesIdActionsResponseBody200MetaPaginationPage obj) : (Data.Aeson..=) "per_page" (getVolumesIdActionsResponseBody200MetaPaginationPerPage obj) : (Data.Aeson..=) "previous_page" (getVolumesIdActionsResponseBody200MetaPaginationPreviousPage obj) : (Data.Aeson..=) "total_entries" (getVolumesIdActionsResponseBody200MetaPaginationTotalEntries obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "last_page" (getVolumesIdActionsResponseBody200MetaPaginationLastPage obj) GHC.Base.<> ((Data.Aeson..=) "next_page" (getVolumesIdActionsResponseBody200MetaPaginationNextPage obj) GHC.Base.<> ((Data.Aeson..=) "page" (getVolumesIdActionsResponseBody200MetaPaginationPage obj) GHC.Base.<> ((Data.Aeson..=) "per_page" (getVolumesIdActionsResponseBody200MetaPaginationPerPage obj) GHC.Base.<> ((Data.Aeson..=) "previous_page" (getVolumesIdActionsResponseBody200MetaPaginationPreviousPage obj) GHC.Base.<> (Data.Aeson..=) "total_entries" (getVolumesIdActionsResponseBody200MetaPaginationTotalEntries obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetVolumesIdActionsResponseBody200MetaPagination
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetVolumesIdActionsResponseBody200MetaPagination" (\obj -> (((((GHC.Base.pure GetVolumesIdActionsResponseBody200MetaPagination GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "last_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "next_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "per_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "previous_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "total_entries"))
