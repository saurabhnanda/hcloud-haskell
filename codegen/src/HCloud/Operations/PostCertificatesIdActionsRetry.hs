-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postCertificates_Id_ActionsRetry
module HCloud.Operations.PostCertificatesIdActionsRetry where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
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

-- | > POST /certificates/{id}/actions/retry
-- 
-- Retry a failed Certificate issuance or renewal.
-- 
-- Only applicable if the type of the Certificate is \`managed\` and the issuance or renewal status is \`failed\`.
-- 
-- \#\#\#\# Call specific error codes
-- 
-- | Code                                                    | Description                                                               |
-- |---------------------------------------------------------|---------------------------------------------------------------------------|
-- | \`caa_record_does_not_allow_ca\`                          | CAA record does not allow certificate authority                           |
-- | \`ca_dns_validation_failed\`                              | Certificate Authority: DNS validation failed                              |
-- | \`ca_too_many_authorizations_failed_recently\`            | Certificate Authority: Too many authorizations failed recently            |
-- | \`ca_too_many_certificates_issued_for_registered_domain\` | Certificate Authority: Too many certificates issued for registered domain |
-- | \`ca_too_many_duplicate_certificates\`                    | Certificate Authority: Too many duplicate certificates                    |
-- | \`could_not_verify_domain_delegated_to_zone\`             | Could not verify domain delegated to zone                                 |
-- | \`dns_zone_not_found\`                                    | DNS zone not found                                                        |
-- | \`dns_zone_is_secondary_zone\`                            | DNS zone is a secondary zone                                              |
postCertificates_Id_ActionsRetry :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Certificate
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response PostCertificatesIdActionsRetryResponse) -- ^ Monadic computation which returns the result of the operation
postCertificates_Id_ActionsRetry id = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCertificatesIdActionsRetryResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostCertificatesIdActionsRetryResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                             PostCertificatesIdActionsRetryResponseBody201)
                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/certificates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/retry"))) GHC.Base.mempty)
-- | Represents a response of the operation 'postCertificates_Id_ActionsRetry'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCertificatesIdActionsRetryResponseError' is used.
data PostCertificatesIdActionsRetryResponse =
   PostCertificatesIdActionsRetryResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostCertificatesIdActionsRetryResponse201 PostCertificatesIdActionsRetryResponseBody201 -- ^ The \`action\` key contains the resulting Action
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/certificates\/{id}\/actions\/retry.POST.responses.201.content.application\/json.schema@ in the specification.
-- 
-- 
data PostCertificatesIdActionsRetryResponseBody201 = PostCertificatesIdActionsRetryResponseBody201 {
  -- | action
  postCertificatesIdActionsRetryResponseBody201Action :: PostCertificatesIdActionsRetryResponseBody201Action
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCertificatesIdActionsRetryResponseBody201
    where toJSON obj = Data.Aeson.Types.Internal.object ("action" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201Action obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("action" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201Action obj)
instance Data.Aeson.Types.FromJSON.FromJSON PostCertificatesIdActionsRetryResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCertificatesIdActionsRetryResponseBody201" (\obj -> GHC.Base.pure PostCertificatesIdActionsRetryResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "action"))
-- | Create a new 'PostCertificatesIdActionsRetryResponseBody201' with all required fields.
mkPostCertificatesIdActionsRetryResponseBody201 :: PostCertificatesIdActionsRetryResponseBody201Action -- ^ 'postCertificatesIdActionsRetryResponseBody201Action'
  -> PostCertificatesIdActionsRetryResponseBody201
mkPostCertificatesIdActionsRetryResponseBody201 postCertificatesIdActionsRetryResponseBody201Action = PostCertificatesIdActionsRetryResponseBody201{postCertificatesIdActionsRetryResponseBody201Action = postCertificatesIdActionsRetryResponseBody201Action}
-- | Defines the object schema located at @paths.\/certificates\/{id}\/actions\/retry.POST.responses.201.content.application\/json.schema.properties.action@ in the specification.
-- 
-- 
data PostCertificatesIdActionsRetryResponseBody201Action = PostCertificatesIdActionsRetryResponseBody201Action {
  -- | command: Command executed in the Action
  postCertificatesIdActionsRetryResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postCertificatesIdActionsRetryResponseBody201ActionError :: (GHC.Maybe.Maybe PostCertificatesIdActionsRetryResponseBody201ActionError)
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postCertificatesIdActionsRetryResponseBody201ActionFinished :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: ID of the Resource
  , postCertificatesIdActionsRetryResponseBody201ActionId :: GHC.Types.Int
  -- | progress: Progress of Action in percent
  , postCertificatesIdActionsRetryResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postCertificatesIdActionsRetryResponseBody201ActionResources :: ([PostCertificatesIdActionsRetryResponseBody201ActionResources])
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postCertificatesIdActionsRetryResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postCertificatesIdActionsRetryResponseBody201ActionStatus :: PostCertificatesIdActionsRetryResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCertificatesIdActionsRetryResponseBody201Action
    where toJSON obj = Data.Aeson.Types.Internal.object ("command" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionCommand obj : "error" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionError obj : "finished" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionFinished obj : "id" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionId obj : "progress" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionProgress obj : "resources" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionResources obj : "started" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionStarted obj : "status" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionStatus obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("command" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionCommand obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionError obj) GHC.Base.<> (("finished" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionFinished obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionId obj) GHC.Base.<> (("progress" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionProgress obj) GHC.Base.<> (("resources" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionResources obj) GHC.Base.<> (("started" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionStarted obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCertificatesIdActionsRetryResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCertificatesIdActionsRetryResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostCertificatesIdActionsRetryResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Create a new 'PostCertificatesIdActionsRetryResponseBody201Action' with all required fields.
mkPostCertificatesIdActionsRetryResponseBody201Action :: Data.Text.Internal.Text -- ^ 'postCertificatesIdActionsRetryResponseBody201ActionCommand'
  -> GHC.Maybe.Maybe PostCertificatesIdActionsRetryResponseBody201ActionError -- ^ 'postCertificatesIdActionsRetryResponseBody201ActionError'
  -> GHC.Maybe.Maybe Data.Text.Internal.Text -- ^ 'postCertificatesIdActionsRetryResponseBody201ActionFinished'
  -> GHC.Types.Int -- ^ 'postCertificatesIdActionsRetryResponseBody201ActionId'
  -> GHC.Types.Double -- ^ 'postCertificatesIdActionsRetryResponseBody201ActionProgress'
  -> [PostCertificatesIdActionsRetryResponseBody201ActionResources] -- ^ 'postCertificatesIdActionsRetryResponseBody201ActionResources'
  -> Data.Text.Internal.Text -- ^ 'postCertificatesIdActionsRetryResponseBody201ActionStarted'
  -> PostCertificatesIdActionsRetryResponseBody201ActionStatus -- ^ 'postCertificatesIdActionsRetryResponseBody201ActionStatus'
  -> PostCertificatesIdActionsRetryResponseBody201Action
mkPostCertificatesIdActionsRetryResponseBody201Action postCertificatesIdActionsRetryResponseBody201ActionCommand postCertificatesIdActionsRetryResponseBody201ActionError postCertificatesIdActionsRetryResponseBody201ActionFinished postCertificatesIdActionsRetryResponseBody201ActionId postCertificatesIdActionsRetryResponseBody201ActionProgress postCertificatesIdActionsRetryResponseBody201ActionResources postCertificatesIdActionsRetryResponseBody201ActionStarted postCertificatesIdActionsRetryResponseBody201ActionStatus = PostCertificatesIdActionsRetryResponseBody201Action{postCertificatesIdActionsRetryResponseBody201ActionCommand = postCertificatesIdActionsRetryResponseBody201ActionCommand,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                postCertificatesIdActionsRetryResponseBody201ActionError = postCertificatesIdActionsRetryResponseBody201ActionError,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                postCertificatesIdActionsRetryResponseBody201ActionFinished = postCertificatesIdActionsRetryResponseBody201ActionFinished,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                postCertificatesIdActionsRetryResponseBody201ActionId = postCertificatesIdActionsRetryResponseBody201ActionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                postCertificatesIdActionsRetryResponseBody201ActionProgress = postCertificatesIdActionsRetryResponseBody201ActionProgress,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                postCertificatesIdActionsRetryResponseBody201ActionResources = postCertificatesIdActionsRetryResponseBody201ActionResources,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                postCertificatesIdActionsRetryResponseBody201ActionStarted = postCertificatesIdActionsRetryResponseBody201ActionStarted,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                postCertificatesIdActionsRetryResponseBody201ActionStatus = postCertificatesIdActionsRetryResponseBody201ActionStatus}
-- | Defines the object schema located at @paths.\/certificates\/{id}\/actions\/retry.POST.responses.201.content.application\/json.schema.properties.action.properties.error@ in the specification.
-- 
-- Error message for the Action if error occurred, otherwise null
data PostCertificatesIdActionsRetryResponseBody201ActionError = PostCertificatesIdActionsRetryResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postCertificatesIdActionsRetryResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postCertificatesIdActionsRetryResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCertificatesIdActionsRetryResponseBody201ActionError
    where toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionErrorCode obj : "message" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionErrorMessage obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionErrorCode obj) GHC.Base.<> ("message" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCertificatesIdActionsRetryResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCertificatesIdActionsRetryResponseBody201ActionError" (\obj -> (GHC.Base.pure PostCertificatesIdActionsRetryResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Create a new 'PostCertificatesIdActionsRetryResponseBody201ActionError' with all required fields.
mkPostCertificatesIdActionsRetryResponseBody201ActionError :: Data.Text.Internal.Text -- ^ 'postCertificatesIdActionsRetryResponseBody201ActionErrorCode'
  -> Data.Text.Internal.Text -- ^ 'postCertificatesIdActionsRetryResponseBody201ActionErrorMessage'
  -> PostCertificatesIdActionsRetryResponseBody201ActionError
mkPostCertificatesIdActionsRetryResponseBody201ActionError postCertificatesIdActionsRetryResponseBody201ActionErrorCode postCertificatesIdActionsRetryResponseBody201ActionErrorMessage = PostCertificatesIdActionsRetryResponseBody201ActionError{postCertificatesIdActionsRetryResponseBody201ActionErrorCode = postCertificatesIdActionsRetryResponseBody201ActionErrorCode,
                                                                                                                                                                                                                                                   postCertificatesIdActionsRetryResponseBody201ActionErrorMessage = postCertificatesIdActionsRetryResponseBody201ActionErrorMessage}
-- | Defines the object schema located at @paths.\/certificates\/{id}\/actions\/retry.POST.responses.201.content.application\/json.schema.properties.action.properties.resources.items@ in the specification.
-- 
-- 
data PostCertificatesIdActionsRetryResponseBody201ActionResources = PostCertificatesIdActionsRetryResponseBody201ActionResources {
  -- | id: ID of the Resource
  postCertificatesIdActionsRetryResponseBody201ActionResourcesId :: GHC.Types.Int
  -- | type: Type of resource referenced
  , postCertificatesIdActionsRetryResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCertificatesIdActionsRetryResponseBody201ActionResources
    where toJSON obj = Data.Aeson.Types.Internal.object ("id" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionResourcesId obj : "type" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionResourcesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("id" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionResourcesId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= postCertificatesIdActionsRetryResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCertificatesIdActionsRetryResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCertificatesIdActionsRetryResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostCertificatesIdActionsRetryResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PostCertificatesIdActionsRetryResponseBody201ActionResources' with all required fields.
mkPostCertificatesIdActionsRetryResponseBody201ActionResources :: GHC.Types.Int -- ^ 'postCertificatesIdActionsRetryResponseBody201ActionResourcesId'
  -> Data.Text.Internal.Text -- ^ 'postCertificatesIdActionsRetryResponseBody201ActionResourcesType'
  -> PostCertificatesIdActionsRetryResponseBody201ActionResources
mkPostCertificatesIdActionsRetryResponseBody201ActionResources postCertificatesIdActionsRetryResponseBody201ActionResourcesId postCertificatesIdActionsRetryResponseBody201ActionResourcesType = PostCertificatesIdActionsRetryResponseBody201ActionResources{postCertificatesIdActionsRetryResponseBody201ActionResourcesId = postCertificatesIdActionsRetryResponseBody201ActionResourcesId,
                                                                                                                                                                                                                                                              postCertificatesIdActionsRetryResponseBody201ActionResourcesType = postCertificatesIdActionsRetryResponseBody201ActionResourcesType}
-- | Defines the enum schema located at @paths.\/certificates\/{id}\/actions\/retry.POST.responses.201.content.application\/json.schema.properties.action.properties.status@ in the specification.
-- 
-- Status of the Action
data PostCertificatesIdActionsRetryResponseBody201ActionStatus =
   PostCertificatesIdActionsRetryResponseBody201ActionStatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PostCertificatesIdActionsRetryResponseBody201ActionStatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PostCertificatesIdActionsRetryResponseBody201ActionStatusEnumSuccess -- ^ Represents the JSON value @"success"@
  | PostCertificatesIdActionsRetryResponseBody201ActionStatusEnumRunning -- ^ Represents the JSON value @"running"@
  | PostCertificatesIdActionsRetryResponseBody201ActionStatusEnumError -- ^ Represents the JSON value @"error"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCertificatesIdActionsRetryResponseBody201ActionStatus
    where toJSON (PostCertificatesIdActionsRetryResponseBody201ActionStatusOther val) = val
          toJSON (PostCertificatesIdActionsRetryResponseBody201ActionStatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PostCertificatesIdActionsRetryResponseBody201ActionStatusEnumSuccess) = "success"
          toJSON (PostCertificatesIdActionsRetryResponseBody201ActionStatusEnumRunning) = "running"
          toJSON (PostCertificatesIdActionsRetryResponseBody201ActionStatusEnumError) = "error"
instance Data.Aeson.Types.FromJSON.FromJSON PostCertificatesIdActionsRetryResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "success" -> PostCertificatesIdActionsRetryResponseBody201ActionStatusEnumSuccess
                                            | val GHC.Classes.== "running" -> PostCertificatesIdActionsRetryResponseBody201ActionStatusEnumRunning
                                            | val GHC.Classes.== "error" -> PostCertificatesIdActionsRetryResponseBody201ActionStatusEnumError
                                            | GHC.Base.otherwise -> PostCertificatesIdActionsRetryResponseBody201ActionStatusOther val)
-- | > POST /certificates/{id}/actions/retry
-- 
-- The same as 'postCertificates_Id_ActionsRetry' but accepts an explicit configuration.
postCertificates_Id_ActionsRetryWithConfiguration :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Certificate
  -> m (Network.HTTP.Client.Types.Response PostCertificatesIdActionsRetryResponse) -- ^ Monadic computation which returns the result of the operation
postCertificates_Id_ActionsRetryWithConfiguration config
                                                  id = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCertificatesIdActionsRetryResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostCertificatesIdActionsRetryResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              PostCertificatesIdActionsRetryResponseBody201)
                                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/certificates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/retry"))) GHC.Base.mempty)
-- | > POST /certificates/{id}/actions/retry
-- 
-- The same as 'postCertificates_Id_ActionsRetry' but returns the raw 'Data.ByteString.Char8.ByteString'.
postCertificates_Id_ActionsRetryRaw :: forall m . HCloud.Common.MonadHTTP m => GHC.Types.Int -- ^ id: ID of the Certificate
  -> HCloud.Common.HttpT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postCertificates_Id_ActionsRetryRaw id = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/certificates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/retry"))) GHC.Base.mempty)
-- | > POST /certificates/{id}/actions/retry
-- 
-- The same as 'postCertificates_Id_ActionsRetry' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postCertificates_Id_ActionsRetryWithConfigurationRaw :: forall m . HCloud.Common.MonadHTTP m => HCloud.Common.Configuration -- ^ The configuration to use in the request
  -> GHC.Types.Int -- ^ id: ID of the Certificate
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postCertificates_Id_ActionsRetryWithConfigurationRaw config
                                                     id = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/certificates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ "/actions/retry"))) GHC.Base.mempty)
