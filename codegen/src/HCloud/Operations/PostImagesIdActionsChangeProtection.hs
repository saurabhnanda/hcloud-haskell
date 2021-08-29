-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postImages_Id_ActionsChangeProtection
module HCloud.Operations.PostImagesIdActionsChangeProtection where

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

-- | > POST /images/{id}/actions/change_protection
-- 
-- Changes the protection configuration of the Image. Can only be used on snapshots.
postImages_Id_ActionsChangeProtection :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Integer.Type.Integer                                                                                                                          -- ^ id: ID of the Image
  -> GHC.Maybe.Maybe PostImagesIdActionsChangeProtectionRequestBody                                                                                    -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostImagesIdActionsChangeProtectionResponse))   -- ^ Monad containing the result of the operation
postImages_Id_ActionsChangeProtection config
                                      id
                                      body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostImagesIdActionsChangeProtectionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostImagesIdActionsChangeProtectionResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             PostImagesIdActionsChangeProtectionResponseBody201)
                                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/images/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_protection"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /images/{id}/actions/change_protection
-- 
-- The same as 'postImages_Id_ActionsChangeProtection' but returns the raw 'Data.ByteString.Char8.ByteString'
postImages_Id_ActionsChangeProtectionRaw :: forall m s . (HCloud.Common.MonadHTTP m,
                                                          HCloud.Common.SecurityScheme s) =>
                                            HCloud.Common.Configuration s ->
                                            GHC.Integer.Type.Integer ->
                                            GHC.Maybe.Maybe PostImagesIdActionsChangeProtectionRequestBody ->
                                            m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postImages_Id_ActionsChangeProtectionRaw config
                                         id
                                         body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/images/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_protection"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /images/{id}/actions/change_protection
-- 
-- Monadic version of 'postImages_Id_ActionsChangeProtection' (use with 'HCloud.Common.runWithConfiguration')
postImages_Id_ActionsChangeProtectionM :: forall m s . (HCloud.Common.MonadHTTP m,
                                                        HCloud.Common.SecurityScheme s) =>
                                          GHC.Integer.Type.Integer ->
                                          GHC.Maybe.Maybe PostImagesIdActionsChangeProtectionRequestBody ->
                                          Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                             m
                                                                             (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                 (Network.HTTP.Client.Types.Response PostImagesIdActionsChangeProtectionResponse))
postImages_Id_ActionsChangeProtectionM id
                                       body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostImagesIdActionsChangeProtectionResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostImagesIdActionsChangeProtectionResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              PostImagesIdActionsChangeProtectionResponseBody201)
                                                                                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/images/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_protection"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /images/{id}/actions/change_protection
-- 
-- Monadic version of 'postImages_Id_ActionsChangeProtectionRaw' (use with 'HCloud.Common.runWithConfiguration')
postImages_Id_ActionsChangeProtectionRawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                                           HCloud.Common.SecurityScheme s) =>
                                             GHC.Integer.Type.Integer ->
                                             GHC.Maybe.Maybe PostImagesIdActionsChangeProtectionRequestBody ->
                                             Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                                m
                                                                                (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                                    (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postImages_Id_ActionsChangeProtectionRawM id
                                          body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/images/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/change_protection"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema postImages_Id_ActionsChangeProtectionRequestBody
-- 
-- 
data PostImagesIdActionsChangeProtectionRequestBody = PostImagesIdActionsChangeProtectionRequestBody {
  -- | delete: If true, prevents the snapshot from being deleted
  postImagesIdActionsChangeProtectionRequestBodyDelete :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostImagesIdActionsChangeProtectionRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "delete" (postImagesIdActionsChangeProtectionRequestBodyDelete obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "delete" (postImagesIdActionsChangeProtectionRequestBodyDelete obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostImagesIdActionsChangeProtectionRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostImagesIdActionsChangeProtectionRequestBody" (\obj -> GHC.Base.pure PostImagesIdActionsChangeProtectionRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "delete"))
-- | Represents a response of the operation 'postImages_Id_ActionsChangeProtection'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostImagesIdActionsChangeProtectionResponseError' is used.
data PostImagesIdActionsChangeProtectionResponse =                                                     
   PostImagesIdActionsChangeProtectionResponseError GHC.Base.String                                    -- ^ Means either no matching case available or a parse error
  | PostImagesIdActionsChangeProtectionResponse201 PostImagesIdActionsChangeProtectionResponseBody201  -- ^ The \`action\` key contains the \`change_protection\` Action
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema PostImagesIdActionsChangeProtectionResponseBody201
-- 
-- 
data PostImagesIdActionsChangeProtectionResponseBody201 = PostImagesIdActionsChangeProtectionResponseBody201 {
  -- | action
  postImagesIdActionsChangeProtectionResponseBody201Action :: PostImagesIdActionsChangeProtectionResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostImagesIdActionsChangeProtectionResponseBody201
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "action" (postImagesIdActionsChangeProtectionResponseBody201Action obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "action" (postImagesIdActionsChangeProtectionResponseBody201Action obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostImagesIdActionsChangeProtectionResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostImagesIdActionsChangeProtectionResponseBody201" (\obj -> GHC.Base.pure PostImagesIdActionsChangeProtectionResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Defines the data type for the schema PostImagesIdActionsChangeProtectionResponseBody201Action
-- 
-- 
data PostImagesIdActionsChangeProtectionResponseBody201Action = PostImagesIdActionsChangeProtectionResponseBody201Action {
  -- | command: Command executed in the Action
  postImagesIdActionsChangeProtectionResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postImagesIdActionsChangeProtectionResponseBody201ActionError :: PostImagesIdActionsChangeProtectionResponseBody201ActionError
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postImagesIdActionsChangeProtectionResponseBody201ActionFinished :: Data.Text.Internal.Text
  -- | id: ID of the Resource
  , postImagesIdActionsChangeProtectionResponseBody201ActionId :: GHC.Integer.Type.Integer
  -- | progress: Progress of Action in percent
  , postImagesIdActionsChangeProtectionResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postImagesIdActionsChangeProtectionResponseBody201ActionResources :: ([] PostImagesIdActionsChangeProtectionResponseBody201ActionResources)
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postImagesIdActionsChangeProtectionResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postImagesIdActionsChangeProtectionResponseBody201ActionStatus :: PostImagesIdActionsChangeProtectionResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostImagesIdActionsChangeProtectionResponseBody201Action
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "command" (postImagesIdActionsChangeProtectionResponseBody201ActionCommand obj) : (Data.Aeson..=) "error" (postImagesIdActionsChangeProtectionResponseBody201ActionError obj) : (Data.Aeson..=) "finished" (postImagesIdActionsChangeProtectionResponseBody201ActionFinished obj) : (Data.Aeson..=) "id" (postImagesIdActionsChangeProtectionResponseBody201ActionId obj) : (Data.Aeson..=) "progress" (postImagesIdActionsChangeProtectionResponseBody201ActionProgress obj) : (Data.Aeson..=) "resources" (postImagesIdActionsChangeProtectionResponseBody201ActionResources obj) : (Data.Aeson..=) "started" (postImagesIdActionsChangeProtectionResponseBody201ActionStarted obj) : (Data.Aeson..=) "status" (postImagesIdActionsChangeProtectionResponseBody201ActionStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "command" (postImagesIdActionsChangeProtectionResponseBody201ActionCommand obj) GHC.Base.<> ((Data.Aeson..=) "error" (postImagesIdActionsChangeProtectionResponseBody201ActionError obj) GHC.Base.<> ((Data.Aeson..=) "finished" (postImagesIdActionsChangeProtectionResponseBody201ActionFinished obj) GHC.Base.<> ((Data.Aeson..=) "id" (postImagesIdActionsChangeProtectionResponseBody201ActionId obj) GHC.Base.<> ((Data.Aeson..=) "progress" (postImagesIdActionsChangeProtectionResponseBody201ActionProgress obj) GHC.Base.<> ((Data.Aeson..=) "resources" (postImagesIdActionsChangeProtectionResponseBody201ActionResources obj) GHC.Base.<> ((Data.Aeson..=) "started" (postImagesIdActionsChangeProtectionResponseBody201ActionStarted obj) GHC.Base.<> (Data.Aeson..=) "status" (postImagesIdActionsChangeProtectionResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostImagesIdActionsChangeProtectionResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostImagesIdActionsChangeProtectionResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostImagesIdActionsChangeProtectionResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Defines the data type for the schema PostImagesIdActionsChangeProtectionResponseBody201ActionError
-- 
-- Error message for the Action if error occurred, otherwise null
data PostImagesIdActionsChangeProtectionResponseBody201ActionError = PostImagesIdActionsChangeProtectionResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postImagesIdActionsChangeProtectionResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postImagesIdActionsChangeProtectionResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostImagesIdActionsChangeProtectionResponseBody201ActionError
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "code" (postImagesIdActionsChangeProtectionResponseBody201ActionErrorCode obj) : (Data.Aeson..=) "message" (postImagesIdActionsChangeProtectionResponseBody201ActionErrorMessage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "code" (postImagesIdActionsChangeProtectionResponseBody201ActionErrorCode obj) GHC.Base.<> (Data.Aeson..=) "message" (postImagesIdActionsChangeProtectionResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostImagesIdActionsChangeProtectionResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostImagesIdActionsChangeProtectionResponseBody201ActionError" (\obj -> (GHC.Base.pure PostImagesIdActionsChangeProtectionResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Defines the data type for the schema PostImagesIdActionsChangeProtectionResponseBody201ActionResources
-- 
-- 
data PostImagesIdActionsChangeProtectionResponseBody201ActionResources = PostImagesIdActionsChangeProtectionResponseBody201ActionResources {
  -- | id: ID of the Resource
  postImagesIdActionsChangeProtectionResponseBody201ActionResourcesId :: GHC.Integer.Type.Integer
  -- | type: Type of resource referenced
  , postImagesIdActionsChangeProtectionResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostImagesIdActionsChangeProtectionResponseBody201ActionResources
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (postImagesIdActionsChangeProtectionResponseBody201ActionResourcesId obj) : (Data.Aeson..=) "type" (postImagesIdActionsChangeProtectionResponseBody201ActionResourcesType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (postImagesIdActionsChangeProtectionResponseBody201ActionResourcesId obj) GHC.Base.<> (Data.Aeson..=) "type" (postImagesIdActionsChangeProtectionResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostImagesIdActionsChangeProtectionResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostImagesIdActionsChangeProtectionResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostImagesIdActionsChangeProtectionResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema PostImagesIdActionsChangeProtectionResponseBody201ActionStatus
-- 
-- Status of the Action
data PostImagesIdActionsChangeProtectionResponseBody201ActionStatus
    = PostImagesIdActionsChangeProtectionResponseBody201ActionStatusEnumOther Data.Aeson.Types.Internal.Value
    | PostImagesIdActionsChangeProtectionResponseBody201ActionStatusEnumTyped Data.Text.Internal.Text
    | PostImagesIdActionsChangeProtectionResponseBody201ActionStatusEnumStringError
    | PostImagesIdActionsChangeProtectionResponseBody201ActionStatusEnumStringRunning
    | PostImagesIdActionsChangeProtectionResponseBody201ActionStatusEnumStringSuccess
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostImagesIdActionsChangeProtectionResponseBody201ActionStatus
    where toJSON (PostImagesIdActionsChangeProtectionResponseBody201ActionStatusEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostImagesIdActionsChangeProtectionResponseBody201ActionStatusEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostImagesIdActionsChangeProtectionResponseBody201ActionStatusEnumStringError) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error"
          toJSON (PostImagesIdActionsChangeProtectionResponseBody201ActionStatusEnumStringRunning) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running"
          toJSON (PostImagesIdActionsChangeProtectionResponseBody201ActionStatusEnumStringSuccess) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success"
instance Data.Aeson.FromJSON PostImagesIdActionsChangeProtectionResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error")
                                          then PostImagesIdActionsChangeProtectionResponseBody201ActionStatusEnumStringError
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running")
                                                then PostImagesIdActionsChangeProtectionResponseBody201ActionStatusEnumStringRunning
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success")
                                                      then PostImagesIdActionsChangeProtectionResponseBody201ActionStatusEnumStringSuccess
                                                      else PostImagesIdActionsChangeProtectionResponseBody201ActionStatusEnumOther val)
