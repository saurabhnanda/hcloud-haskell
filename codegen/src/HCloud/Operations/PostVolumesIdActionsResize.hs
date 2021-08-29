-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postVolumes_Id_ActionsResize
module HCloud.Operations.PostVolumesIdActionsResize where

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

-- | > POST /volumes/{id}/actions/resize
-- 
-- Changes the size of a Volume. Note that downsizing a Volume is not possible.
postVolumes_Id_ActionsResize :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Integer.Type.Integer                                                                                                                 -- ^ id: ID of the Volume
  -> GHC.Maybe.Maybe PostVolumesIdActionsResizeRequestBody                                                                                    -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostVolumesIdActionsResizeResponse))   -- ^ Monad containing the result of the operation
postVolumes_Id_ActionsResize config
                             id
                             body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostVolumesIdActionsResizeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostVolumesIdActionsResizeResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  PostVolumesIdActionsResizeResponseBody201)
                                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/resize"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /volumes/{id}/actions/resize
-- 
-- The same as 'postVolumes_Id_ActionsResize' but returns the raw 'Data.ByteString.Char8.ByteString'
postVolumes_Id_ActionsResizeRaw :: forall m s . (HCloud.Common.MonadHTTP m,
                                                 HCloud.Common.SecurityScheme s) =>
                                   HCloud.Common.Configuration s ->
                                   GHC.Integer.Type.Integer ->
                                   GHC.Maybe.Maybe PostVolumesIdActionsResizeRequestBody ->
                                   m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                         (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postVolumes_Id_ActionsResizeRaw config
                                id
                                body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/resize"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /volumes/{id}/actions/resize
-- 
-- Monadic version of 'postVolumes_Id_ActionsResize' (use with 'HCloud.Common.runWithConfiguration')
postVolumes_Id_ActionsResizeM :: forall m s . (HCloud.Common.MonadHTTP m,
                                               HCloud.Common.SecurityScheme s) =>
                                 GHC.Integer.Type.Integer ->
                                 GHC.Maybe.Maybe PostVolumesIdActionsResizeRequestBody ->
                                 Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                    m
                                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                        (Network.HTTP.Client.Types.Response PostVolumesIdActionsResizeResponse))
postVolumes_Id_ActionsResizeM id
                              body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostVolumesIdActionsResizeResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostVolumesIdActionsResizeResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PostVolumesIdActionsResizeResponseBody201)
                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/resize"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /volumes/{id}/actions/resize
-- 
-- Monadic version of 'postVolumes_Id_ActionsResizeRaw' (use with 'HCloud.Common.runWithConfiguration')
postVolumes_Id_ActionsResizeRawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                                  HCloud.Common.SecurityScheme s) =>
                                    GHC.Integer.Type.Integer ->
                                    GHC.Maybe.Maybe PostVolumesIdActionsResizeRequestBody ->
                                    Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                                       m
                                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                           (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postVolumes_Id_ActionsResizeRawM id
                                 body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/volumes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/resize"))) [] body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema postVolumes_Id_ActionsResizeRequestBody
-- 
-- 
data PostVolumesIdActionsResizeRequestBody = PostVolumesIdActionsResizeRequestBody {
  -- | size: New Volume size in GB (must be greater than current size)
  postVolumesIdActionsResizeRequestBodySize :: GHC.Types.Double
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostVolumesIdActionsResizeRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "size" (postVolumesIdActionsResizeRequestBodySize obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "size" (postVolumesIdActionsResizeRequestBodySize obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsResizeRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostVolumesIdActionsResizeRequestBody" (\obj -> GHC.Base.pure PostVolumesIdActionsResizeRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "size"))
-- | Represents a response of the operation 'postVolumes_Id_ActionsResize'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostVolumesIdActionsResizeResponseError' is used.
data PostVolumesIdActionsResizeResponse =                                            
   PostVolumesIdActionsResizeResponseError GHC.Base.String                           -- ^ Means either no matching case available or a parse error
  | PostVolumesIdActionsResizeResponse201 PostVolumesIdActionsResizeResponseBody201  -- ^ The \`action\` key contains the \`resize_volume\` Action
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema PostVolumesIdActionsResizeResponseBody201
-- 
-- 
data PostVolumesIdActionsResizeResponseBody201 = PostVolumesIdActionsResizeResponseBody201 {
  -- | action
  postVolumesIdActionsResizeResponseBody201Action :: PostVolumesIdActionsResizeResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostVolumesIdActionsResizeResponseBody201
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "action" (postVolumesIdActionsResizeResponseBody201Action obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "action" (postVolumesIdActionsResizeResponseBody201Action obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsResizeResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostVolumesIdActionsResizeResponseBody201" (\obj -> GHC.Base.pure PostVolumesIdActionsResizeResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Defines the data type for the schema PostVolumesIdActionsResizeResponseBody201Action
-- 
-- 
data PostVolumesIdActionsResizeResponseBody201Action = PostVolumesIdActionsResizeResponseBody201Action {
  -- | command: Command executed in the Action
  postVolumesIdActionsResizeResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postVolumesIdActionsResizeResponseBody201ActionError :: PostVolumesIdActionsResizeResponseBody201ActionError
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postVolumesIdActionsResizeResponseBody201ActionFinished :: Data.Text.Internal.Text
  -- | id: ID of the Resource
  , postVolumesIdActionsResizeResponseBody201ActionId :: GHC.Integer.Type.Integer
  -- | progress: Progress of Action in percent
  , postVolumesIdActionsResizeResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postVolumesIdActionsResizeResponseBody201ActionResources :: ([] PostVolumesIdActionsResizeResponseBody201ActionResources)
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postVolumesIdActionsResizeResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postVolumesIdActionsResizeResponseBody201ActionStatus :: PostVolumesIdActionsResizeResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostVolumesIdActionsResizeResponseBody201Action
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "command" (postVolumesIdActionsResizeResponseBody201ActionCommand obj) : (Data.Aeson..=) "error" (postVolumesIdActionsResizeResponseBody201ActionError obj) : (Data.Aeson..=) "finished" (postVolumesIdActionsResizeResponseBody201ActionFinished obj) : (Data.Aeson..=) "id" (postVolumesIdActionsResizeResponseBody201ActionId obj) : (Data.Aeson..=) "progress" (postVolumesIdActionsResizeResponseBody201ActionProgress obj) : (Data.Aeson..=) "resources" (postVolumesIdActionsResizeResponseBody201ActionResources obj) : (Data.Aeson..=) "started" (postVolumesIdActionsResizeResponseBody201ActionStarted obj) : (Data.Aeson..=) "status" (postVolumesIdActionsResizeResponseBody201ActionStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "command" (postVolumesIdActionsResizeResponseBody201ActionCommand obj) GHC.Base.<> ((Data.Aeson..=) "error" (postVolumesIdActionsResizeResponseBody201ActionError obj) GHC.Base.<> ((Data.Aeson..=) "finished" (postVolumesIdActionsResizeResponseBody201ActionFinished obj) GHC.Base.<> ((Data.Aeson..=) "id" (postVolumesIdActionsResizeResponseBody201ActionId obj) GHC.Base.<> ((Data.Aeson..=) "progress" (postVolumesIdActionsResizeResponseBody201ActionProgress obj) GHC.Base.<> ((Data.Aeson..=) "resources" (postVolumesIdActionsResizeResponseBody201ActionResources obj) GHC.Base.<> ((Data.Aeson..=) "started" (postVolumesIdActionsResizeResponseBody201ActionStarted obj) GHC.Base.<> (Data.Aeson..=) "status" (postVolumesIdActionsResizeResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsResizeResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostVolumesIdActionsResizeResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostVolumesIdActionsResizeResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Defines the data type for the schema PostVolumesIdActionsResizeResponseBody201ActionError
-- 
-- Error message for the Action if error occurred, otherwise null
data PostVolumesIdActionsResizeResponseBody201ActionError = PostVolumesIdActionsResizeResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postVolumesIdActionsResizeResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postVolumesIdActionsResizeResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostVolumesIdActionsResizeResponseBody201ActionError
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "code" (postVolumesIdActionsResizeResponseBody201ActionErrorCode obj) : (Data.Aeson..=) "message" (postVolumesIdActionsResizeResponseBody201ActionErrorMessage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "code" (postVolumesIdActionsResizeResponseBody201ActionErrorCode obj) GHC.Base.<> (Data.Aeson..=) "message" (postVolumesIdActionsResizeResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsResizeResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostVolumesIdActionsResizeResponseBody201ActionError" (\obj -> (GHC.Base.pure PostVolumesIdActionsResizeResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Defines the data type for the schema PostVolumesIdActionsResizeResponseBody201ActionResources
-- 
-- 
data PostVolumesIdActionsResizeResponseBody201ActionResources = PostVolumesIdActionsResizeResponseBody201ActionResources {
  -- | id: ID of the Resource
  postVolumesIdActionsResizeResponseBody201ActionResourcesId :: GHC.Integer.Type.Integer
  -- | type: Type of resource referenced
  , postVolumesIdActionsResizeResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostVolumesIdActionsResizeResponseBody201ActionResources
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (postVolumesIdActionsResizeResponseBody201ActionResourcesId obj) : (Data.Aeson..=) "type" (postVolumesIdActionsResizeResponseBody201ActionResourcesType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (postVolumesIdActionsResizeResponseBody201ActionResourcesId obj) GHC.Base.<> (Data.Aeson..=) "type" (postVolumesIdActionsResizeResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostVolumesIdActionsResizeResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostVolumesIdActionsResizeResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostVolumesIdActionsResizeResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema PostVolumesIdActionsResizeResponseBody201ActionStatus
-- 
-- Status of the Action
data PostVolumesIdActionsResizeResponseBody201ActionStatus
    = PostVolumesIdActionsResizeResponseBody201ActionStatusEnumOther Data.Aeson.Types.Internal.Value
    | PostVolumesIdActionsResizeResponseBody201ActionStatusEnumTyped Data.Text.Internal.Text
    | PostVolumesIdActionsResizeResponseBody201ActionStatusEnumStringError
    | PostVolumesIdActionsResizeResponseBody201ActionStatusEnumStringRunning
    | PostVolumesIdActionsResizeResponseBody201ActionStatusEnumStringSuccess
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostVolumesIdActionsResizeResponseBody201ActionStatus
    where toJSON (PostVolumesIdActionsResizeResponseBody201ActionStatusEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostVolumesIdActionsResizeResponseBody201ActionStatusEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostVolumesIdActionsResizeResponseBody201ActionStatusEnumStringError) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error"
          toJSON (PostVolumesIdActionsResizeResponseBody201ActionStatusEnumStringRunning) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running"
          toJSON (PostVolumesIdActionsResizeResponseBody201ActionStatusEnumStringSuccess) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success"
instance Data.Aeson.FromJSON PostVolumesIdActionsResizeResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error")
                                          then PostVolumesIdActionsResizeResponseBody201ActionStatusEnumStringError
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running")
                                                then PostVolumesIdActionsResizeResponseBody201ActionStatusEnumStringRunning
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success")
                                                      then PostVolumesIdActionsResizeResponseBody201ActionStatusEnumStringSuccess
                                                      else PostVolumesIdActionsResizeResponseBody201ActionStatusEnumOther val)