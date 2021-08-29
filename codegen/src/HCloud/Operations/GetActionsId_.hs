-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getActions_Id_
module HCloud.Operations.GetActionsId_ where

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

-- | > GET /actions/{id}
-- 
-- Returns a specific Action object.
getActions_Id_ :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Integer.Type.Integer                                                                                                   -- ^ id: ID of the Resource
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetActionsIdResponse))   -- ^ Monad containing the result of the operation
getActions_Id_ config
               id = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetActionsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetActionsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                      GetActionsIdResponseBody200)
                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [])
-- | > GET /actions/{id}
-- 
-- The same as 'getActions_Id_' but returns the raw 'Data.ByteString.Char8.ByteString'
getActions_Id_Raw :: forall m s . (HCloud.Common.MonadHTTP m,
                                   HCloud.Common.SecurityScheme s) =>
                     HCloud.Common.Configuration s ->
                     GHC.Integer.Type.Integer ->
                     m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getActions_Id_Raw config
                  id = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [])
-- | > GET /actions/{id}
-- 
-- Monadic version of 'getActions_Id_' (use with 'HCloud.Common.runWithConfiguration')
getActions_Id_M :: forall m s . (HCloud.Common.MonadHTTP m,
                                 HCloud.Common.SecurityScheme s) =>
                   GHC.Integer.Type.Integer ->
                   Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                      m
                                                      (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                          (Network.HTTP.Client.Types.Response GetActionsIdResponse))
getActions_Id_M id = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetActionsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetActionsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       GetActionsIdResponseBody200)
                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [])
-- | > GET /actions/{id}
-- 
-- Monadic version of 'getActions_Id_Raw' (use with 'HCloud.Common.runWithConfiguration')
getActions_Id_RawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                    HCloud.Common.SecurityScheme s) =>
                      GHC.Integer.Type.Integer ->
                      Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                         m
                                                         (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                             (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getActions_Id_RawM id = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/actions/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [])
-- | Represents a response of the operation 'getActions_Id_'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetActionsIdResponseError' is used.
data GetActionsIdResponse =                              
   GetActionsIdResponseError GHC.Base.String             -- ^ Means either no matching case available or a parse error
  | GetActionsIdResponse200 GetActionsIdResponseBody200  -- ^ The \`action\` key in the reply has this structure
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetActionsIdResponseBody200
-- 
-- 
data GetActionsIdResponseBody200 = GetActionsIdResponseBody200 {
  -- | action
  getActionsIdResponseBody200Action :: GetActionsIdResponseBody200Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetActionsIdResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "action" (getActionsIdResponseBody200Action obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "action" (getActionsIdResponseBody200Action obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetActionsIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetActionsIdResponseBody200" (\obj -> GHC.Base.pure GetActionsIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Defines the data type for the schema GetActionsIdResponseBody200Action
-- 
-- 
data GetActionsIdResponseBody200Action = GetActionsIdResponseBody200Action {
  -- | command: Command executed in the Action
  getActionsIdResponseBody200ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , getActionsIdResponseBody200ActionError :: GetActionsIdResponseBody200ActionError
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , getActionsIdResponseBody200ActionFinished :: Data.Text.Internal.Text
  -- | id: ID of the Resource
  , getActionsIdResponseBody200ActionId :: GHC.Integer.Type.Integer
  -- | progress: Progress of Action in percent
  , getActionsIdResponseBody200ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , getActionsIdResponseBody200ActionResources :: ([] GetActionsIdResponseBody200ActionResources)
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , getActionsIdResponseBody200ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , getActionsIdResponseBody200ActionStatus :: GetActionsIdResponseBody200ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetActionsIdResponseBody200Action
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "command" (getActionsIdResponseBody200ActionCommand obj) : (Data.Aeson..=) "error" (getActionsIdResponseBody200ActionError obj) : (Data.Aeson..=) "finished" (getActionsIdResponseBody200ActionFinished obj) : (Data.Aeson..=) "id" (getActionsIdResponseBody200ActionId obj) : (Data.Aeson..=) "progress" (getActionsIdResponseBody200ActionProgress obj) : (Data.Aeson..=) "resources" (getActionsIdResponseBody200ActionResources obj) : (Data.Aeson..=) "started" (getActionsIdResponseBody200ActionStarted obj) : (Data.Aeson..=) "status" (getActionsIdResponseBody200ActionStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "command" (getActionsIdResponseBody200ActionCommand obj) GHC.Base.<> ((Data.Aeson..=) "error" (getActionsIdResponseBody200ActionError obj) GHC.Base.<> ((Data.Aeson..=) "finished" (getActionsIdResponseBody200ActionFinished obj) GHC.Base.<> ((Data.Aeson..=) "id" (getActionsIdResponseBody200ActionId obj) GHC.Base.<> ((Data.Aeson..=) "progress" (getActionsIdResponseBody200ActionProgress obj) GHC.Base.<> ((Data.Aeson..=) "resources" (getActionsIdResponseBody200ActionResources obj) GHC.Base.<> ((Data.Aeson..=) "started" (getActionsIdResponseBody200ActionStarted obj) GHC.Base.<> (Data.Aeson..=) "status" (getActionsIdResponseBody200ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetActionsIdResponseBody200Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetActionsIdResponseBody200Action" (\obj -> (((((((GHC.Base.pure GetActionsIdResponseBody200Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Defines the data type for the schema GetActionsIdResponseBody200ActionError
-- 
-- Error message for the Action if error occurred, otherwise null
data GetActionsIdResponseBody200ActionError = GetActionsIdResponseBody200ActionError {
  -- | code: Fixed machine readable code
  getActionsIdResponseBody200ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , getActionsIdResponseBody200ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetActionsIdResponseBody200ActionError
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "code" (getActionsIdResponseBody200ActionErrorCode obj) : (Data.Aeson..=) "message" (getActionsIdResponseBody200ActionErrorMessage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "code" (getActionsIdResponseBody200ActionErrorCode obj) GHC.Base.<> (Data.Aeson..=) "message" (getActionsIdResponseBody200ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetActionsIdResponseBody200ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetActionsIdResponseBody200ActionError" (\obj -> (GHC.Base.pure GetActionsIdResponseBody200ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Defines the data type for the schema GetActionsIdResponseBody200ActionResources
-- 
-- 
data GetActionsIdResponseBody200ActionResources = GetActionsIdResponseBody200ActionResources {
  -- | id: ID of the Resource
  getActionsIdResponseBody200ActionResourcesId :: GHC.Integer.Type.Integer
  -- | type: Type of resource referenced
  , getActionsIdResponseBody200ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetActionsIdResponseBody200ActionResources
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (getActionsIdResponseBody200ActionResourcesId obj) : (Data.Aeson..=) "type" (getActionsIdResponseBody200ActionResourcesType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (getActionsIdResponseBody200ActionResourcesId obj) GHC.Base.<> (Data.Aeson..=) "type" (getActionsIdResponseBody200ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetActionsIdResponseBody200ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetActionsIdResponseBody200ActionResources" (\obj -> (GHC.Base.pure GetActionsIdResponseBody200ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema GetActionsIdResponseBody200ActionStatus
-- 
-- Status of the Action
data GetActionsIdResponseBody200ActionStatus
    = GetActionsIdResponseBody200ActionStatusEnumOther Data.Aeson.Types.Internal.Value
    | GetActionsIdResponseBody200ActionStatusEnumTyped Data.Text.Internal.Text
    | GetActionsIdResponseBody200ActionStatusEnumStringError
    | GetActionsIdResponseBody200ActionStatusEnumStringRunning
    | GetActionsIdResponseBody200ActionStatusEnumStringSuccess
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetActionsIdResponseBody200ActionStatus
    where toJSON (GetActionsIdResponseBody200ActionStatusEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetActionsIdResponseBody200ActionStatusEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetActionsIdResponseBody200ActionStatusEnumStringError) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error"
          toJSON (GetActionsIdResponseBody200ActionStatusEnumStringRunning) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running"
          toJSON (GetActionsIdResponseBody200ActionStatusEnumStringSuccess) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success"
instance Data.Aeson.FromJSON GetActionsIdResponseBody200ActionStatus
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error")
                                          then GetActionsIdResponseBody200ActionStatusEnumStringError
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running")
                                                then GetActionsIdResponseBody200ActionStatusEnumStringRunning
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success")
                                                      then GetActionsIdResponseBody200ActionStatusEnumStringSuccess
                                                      else GetActionsIdResponseBody200ActionStatusEnumOther val)
