-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation getCertificates_Id_
module HCloud.Operations.GetCertificatesId_ where

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

-- | > GET /certificates/{id}
-- 
-- Gets a specific Certificate object.
getCertificates_Id_ :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Integer.Type.Integer                                                                                                        -- ^ id: ID of the resource
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response GetCertificatesIdResponse))   -- ^ Monad containing the result of the operation
getCertificates_Id_ config
                    id = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetCertificatesIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetCertificatesIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     GetCertificatesIdResponseBody200)
                                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/certificates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [])
-- | > GET /certificates/{id}
-- 
-- The same as 'getCertificates_Id_' but returns the raw 'Data.ByteString.Char8.ByteString'
getCertificates_Id_Raw :: forall m s . (HCloud.Common.MonadHTTP m,
                                        HCloud.Common.SecurityScheme s) =>
                          HCloud.Common.Configuration s ->
                          GHC.Integer.Type.Integer ->
                          m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getCertificates_Id_Raw config
                       id = GHC.Base.id (HCloud.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/certificates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [])
-- | > GET /certificates/{id}
-- 
-- Monadic version of 'getCertificates_Id_' (use with 'HCloud.Common.runWithConfiguration')
getCertificates_Id_M :: forall m s . (HCloud.Common.MonadHTTP m,
                                      HCloud.Common.SecurityScheme s) =>
                        GHC.Integer.Type.Integer ->
                        Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                           m
                                                           (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                               (Network.HTTP.Client.Types.Response GetCertificatesIdResponse))
getCertificates_Id_M id = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetCertificatesIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetCertificatesIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                      GetCertificatesIdResponseBody200)
                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/certificates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [])
-- | > GET /certificates/{id}
-- 
-- Monadic version of 'getCertificates_Id_Raw' (use with 'HCloud.Common.runWithConfiguration')
getCertificates_Id_RawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                         HCloud.Common.SecurityScheme s) =>
                           GHC.Integer.Type.Integer ->
                           Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                              m
                                                              (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                                  (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getCertificates_Id_RawM id = GHC.Base.id (HCloud.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/certificates/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ HCloud.Common.stringifyModel id)) GHC.Base.++ ""))) [])
-- | Represents a response of the operation 'getCertificates_Id_'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetCertificatesIdResponseError' is used.
data GetCertificatesIdResponse =                                   
   GetCertificatesIdResponseError GHC.Base.String                  -- ^ Means either no matching case available or a parse error
  | GetCertificatesIdResponse200 GetCertificatesIdResponseBody200  -- ^ The \`certificate\` key contains a Certificate object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema GetCertificatesIdResponseBody200
-- 
-- 
data GetCertificatesIdResponseBody200 = GetCertificatesIdResponseBody200 {
  -- | certificate
  getCertificatesIdResponseBody200Certificate :: GetCertificatesIdResponseBody200Certificate
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCertificatesIdResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "certificate" (getCertificatesIdResponseBody200Certificate obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "certificate" (getCertificatesIdResponseBody200Certificate obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetCertificatesIdResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCertificatesIdResponseBody200" (\obj -> GHC.Base.pure GetCertificatesIdResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "certificate"))
-- | Defines the data type for the schema GetCertificatesIdResponseBody200Certificate
-- 
-- 
data GetCertificatesIdResponseBody200Certificate = GetCertificatesIdResponseBody200Certificate {
  -- | certificate: Certificate and chain in PEM format, in order so that each record directly certifies the one preceding
  getCertificatesIdResponseBody200CertificateCertificate :: Data.Text.Internal.Text
  -- | created: Point in time when the Resource was created (in ISO-8601 format)
  , getCertificatesIdResponseBody200CertificateCreated :: Data.Text.Internal.Text
  -- | domain_names: Domains and subdomains covered by the Certificate
  , getCertificatesIdResponseBody200CertificateDomainNames :: ([] Data.Text.Internal.Text)
  -- | fingerprint: SHA256 fingerprint of the Certificate
  , getCertificatesIdResponseBody200CertificateFingerprint :: Data.Text.Internal.Text
  -- | id: ID of the Resource
  , getCertificatesIdResponseBody200CertificateId :: GHC.Integer.Type.Integer
  -- | labels: User-defined labels (key-value pairs)
  , getCertificatesIdResponseBody200CertificateLabels :: GetCertificatesIdResponseBody200CertificateLabels
  -- | name: Name of the Resource. Must be unique per Project.
  , getCertificatesIdResponseBody200CertificateName :: Data.Text.Internal.Text
  -- | not_valid_after: Point in time when the Certificate stops being valid (in ISO-8601 format)
  , getCertificatesIdResponseBody200CertificateNotValidAfter :: Data.Text.Internal.Text
  -- | not_valid_before: Point in time when the Certificate becomes valid (in ISO-8601 format)
  , getCertificatesIdResponseBody200CertificateNotValidBefore :: Data.Text.Internal.Text
  -- | status: Current status of a type \`managed\` Certificate, always *null* for type \`uploaded\` Certificates
  , getCertificatesIdResponseBody200CertificateStatus :: (GHC.Maybe.Maybe GetCertificatesIdResponseBody200CertificateStatus)
  -- | type: Type of the Certificate
  , getCertificatesIdResponseBody200CertificateType :: (GHC.Maybe.Maybe GetCertificatesIdResponseBody200CertificateType)
  -- | used_by: Resources currently using the Certificate
  , getCertificatesIdResponseBody200CertificateUsedBy :: ([] GetCertificatesIdResponseBody200CertificateUsedBy)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCertificatesIdResponseBody200Certificate
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "certificate" (getCertificatesIdResponseBody200CertificateCertificate obj) : (Data.Aeson..=) "created" (getCertificatesIdResponseBody200CertificateCreated obj) : (Data.Aeson..=) "domain_names" (getCertificatesIdResponseBody200CertificateDomainNames obj) : (Data.Aeson..=) "fingerprint" (getCertificatesIdResponseBody200CertificateFingerprint obj) : (Data.Aeson..=) "id" (getCertificatesIdResponseBody200CertificateId obj) : (Data.Aeson..=) "labels" (getCertificatesIdResponseBody200CertificateLabels obj) : (Data.Aeson..=) "name" (getCertificatesIdResponseBody200CertificateName obj) : (Data.Aeson..=) "not_valid_after" (getCertificatesIdResponseBody200CertificateNotValidAfter obj) : (Data.Aeson..=) "not_valid_before" (getCertificatesIdResponseBody200CertificateNotValidBefore obj) : (Data.Aeson..=) "status" (getCertificatesIdResponseBody200CertificateStatus obj) : (Data.Aeson..=) "type" (getCertificatesIdResponseBody200CertificateType obj) : (Data.Aeson..=) "used_by" (getCertificatesIdResponseBody200CertificateUsedBy obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "certificate" (getCertificatesIdResponseBody200CertificateCertificate obj) GHC.Base.<> ((Data.Aeson..=) "created" (getCertificatesIdResponseBody200CertificateCreated obj) GHC.Base.<> ((Data.Aeson..=) "domain_names" (getCertificatesIdResponseBody200CertificateDomainNames obj) GHC.Base.<> ((Data.Aeson..=) "fingerprint" (getCertificatesIdResponseBody200CertificateFingerprint obj) GHC.Base.<> ((Data.Aeson..=) "id" (getCertificatesIdResponseBody200CertificateId obj) GHC.Base.<> ((Data.Aeson..=) "labels" (getCertificatesIdResponseBody200CertificateLabels obj) GHC.Base.<> ((Data.Aeson..=) "name" (getCertificatesIdResponseBody200CertificateName obj) GHC.Base.<> ((Data.Aeson..=) "not_valid_after" (getCertificatesIdResponseBody200CertificateNotValidAfter obj) GHC.Base.<> ((Data.Aeson..=) "not_valid_before" (getCertificatesIdResponseBody200CertificateNotValidBefore obj) GHC.Base.<> ((Data.Aeson..=) "status" (getCertificatesIdResponseBody200CertificateStatus obj) GHC.Base.<> ((Data.Aeson..=) "type" (getCertificatesIdResponseBody200CertificateType obj) GHC.Base.<> (Data.Aeson..=) "used_by" (getCertificatesIdResponseBody200CertificateUsedBy obj))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON GetCertificatesIdResponseBody200Certificate
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCertificatesIdResponseBody200Certificate" (\obj -> (((((((((((GHC.Base.pure GetCertificatesIdResponseBody200Certificate GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "certificate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "domain_names")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "labels")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "not_valid_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "not_valid_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "used_by"))
-- | Defines the data type for the schema GetCertificatesIdResponseBody200CertificateLabels
-- 
-- User-defined labels (key-value pairs)
data GetCertificatesIdResponseBody200CertificateLabels = GetCertificatesIdResponseBody200CertificateLabels {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCertificatesIdResponseBody200CertificateLabels
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetCertificatesIdResponseBody200CertificateLabels
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCertificatesIdResponseBody200CertificateLabels" (\obj -> GHC.Base.pure GetCertificatesIdResponseBody200CertificateLabels)
-- | Defines the data type for the schema GetCertificatesIdResponseBody200CertificateStatus
-- 
-- Current status of a type \`managed\` Certificate, always *null* for type \`uploaded\` Certificates
data GetCertificatesIdResponseBody200CertificateStatus = GetCertificatesIdResponseBody200CertificateStatus {
  -- | error: If issuance or renewal reports \`failed\`, this property contains information about what happened
  getCertificatesIdResponseBody200CertificateStatusError :: (GHC.Maybe.Maybe GetCertificatesIdResponseBody200CertificateStatusError)
  -- | issuance: Status of the issuance process of the Certificate
  , getCertificatesIdResponseBody200CertificateStatusIssuance :: (GHC.Maybe.Maybe GetCertificatesIdResponseBody200CertificateStatusIssuance)
  -- | renewal: Status of the renewal process of the Certificate.
  , getCertificatesIdResponseBody200CertificateStatusRenewal :: (GHC.Maybe.Maybe GetCertificatesIdResponseBody200CertificateStatusRenewal)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCertificatesIdResponseBody200CertificateStatus
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "error" (getCertificatesIdResponseBody200CertificateStatusError obj) : (Data.Aeson..=) "issuance" (getCertificatesIdResponseBody200CertificateStatusIssuance obj) : (Data.Aeson..=) "renewal" (getCertificatesIdResponseBody200CertificateStatusRenewal obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "error" (getCertificatesIdResponseBody200CertificateStatusError obj) GHC.Base.<> ((Data.Aeson..=) "issuance" (getCertificatesIdResponseBody200CertificateStatusIssuance obj) GHC.Base.<> (Data.Aeson..=) "renewal" (getCertificatesIdResponseBody200CertificateStatusRenewal obj)))
instance Data.Aeson.Types.FromJSON.FromJSON GetCertificatesIdResponseBody200CertificateStatus
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCertificatesIdResponseBody200CertificateStatus" (\obj -> ((GHC.Base.pure GetCertificatesIdResponseBody200CertificateStatus GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "issuance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "renewal"))
-- | Defines the data type for the schema GetCertificatesIdResponseBody200CertificateStatusError
-- 
-- If issuance or renewal reports \`failed\`, this property contains information about what happened
data GetCertificatesIdResponseBody200CertificateStatusError = GetCertificatesIdResponseBody200CertificateStatusError {
  -- | code
  getCertificatesIdResponseBody200CertificateStatusErrorCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | message
  , getCertificatesIdResponseBody200CertificateStatusErrorMessage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCertificatesIdResponseBody200CertificateStatusError
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "code" (getCertificatesIdResponseBody200CertificateStatusErrorCode obj) : (Data.Aeson..=) "message" (getCertificatesIdResponseBody200CertificateStatusErrorMessage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "code" (getCertificatesIdResponseBody200CertificateStatusErrorCode obj) GHC.Base.<> (Data.Aeson..=) "message" (getCertificatesIdResponseBody200CertificateStatusErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetCertificatesIdResponseBody200CertificateStatusError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCertificatesIdResponseBody200CertificateStatusError" (\obj -> (GHC.Base.pure GetCertificatesIdResponseBody200CertificateStatusError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "message"))
-- | Defines the enum schema GetCertificatesIdResponseBody200CertificateStatusIssuance
-- 
-- Status of the issuance process of the Certificate
data GetCertificatesIdResponseBody200CertificateStatusIssuance
    = GetCertificatesIdResponseBody200CertificateStatusIssuanceEnumOther Data.Aeson.Types.Internal.Value
    | GetCertificatesIdResponseBody200CertificateStatusIssuanceEnumTyped Data.Text.Internal.Text
    | GetCertificatesIdResponseBody200CertificateStatusIssuanceEnumStringCompleted
    | GetCertificatesIdResponseBody200CertificateStatusIssuanceEnumStringFailed
    | GetCertificatesIdResponseBody200CertificateStatusIssuanceEnumStringPending
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCertificatesIdResponseBody200CertificateStatusIssuance
    where toJSON (GetCertificatesIdResponseBody200CertificateStatusIssuanceEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCertificatesIdResponseBody200CertificateStatusIssuanceEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCertificatesIdResponseBody200CertificateStatusIssuanceEnumStringCompleted) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "completed"
          toJSON (GetCertificatesIdResponseBody200CertificateStatusIssuanceEnumStringFailed) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "failed"
          toJSON (GetCertificatesIdResponseBody200CertificateStatusIssuanceEnumStringPending) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending"
instance Data.Aeson.FromJSON GetCertificatesIdResponseBody200CertificateStatusIssuance
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "completed")
                                          then GetCertificatesIdResponseBody200CertificateStatusIssuanceEnumStringCompleted
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "failed")
                                                then GetCertificatesIdResponseBody200CertificateStatusIssuanceEnumStringFailed
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending")
                                                      then GetCertificatesIdResponseBody200CertificateStatusIssuanceEnumStringPending
                                                      else GetCertificatesIdResponseBody200CertificateStatusIssuanceEnumOther val)
-- | Defines the enum schema GetCertificatesIdResponseBody200CertificateStatusRenewal
-- 
-- Status of the renewal process of the Certificate.
data GetCertificatesIdResponseBody200CertificateStatusRenewal
    = GetCertificatesIdResponseBody200CertificateStatusRenewalEnumOther Data.Aeson.Types.Internal.Value
    | GetCertificatesIdResponseBody200CertificateStatusRenewalEnumTyped Data.Text.Internal.Text
    | GetCertificatesIdResponseBody200CertificateStatusRenewalEnumStringFailed
    | GetCertificatesIdResponseBody200CertificateStatusRenewalEnumStringPending
    | GetCertificatesIdResponseBody200CertificateStatusRenewalEnumStringScheduled
    | GetCertificatesIdResponseBody200CertificateStatusRenewalEnumStringUnavailable
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCertificatesIdResponseBody200CertificateStatusRenewal
    where toJSON (GetCertificatesIdResponseBody200CertificateStatusRenewalEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCertificatesIdResponseBody200CertificateStatusRenewalEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCertificatesIdResponseBody200CertificateStatusRenewalEnumStringFailed) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "failed"
          toJSON (GetCertificatesIdResponseBody200CertificateStatusRenewalEnumStringPending) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending"
          toJSON (GetCertificatesIdResponseBody200CertificateStatusRenewalEnumStringScheduled) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "scheduled"
          toJSON (GetCertificatesIdResponseBody200CertificateStatusRenewalEnumStringUnavailable) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unavailable"
instance Data.Aeson.FromJSON GetCertificatesIdResponseBody200CertificateStatusRenewal
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "failed")
                                          then GetCertificatesIdResponseBody200CertificateStatusRenewalEnumStringFailed
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "pending")
                                                then GetCertificatesIdResponseBody200CertificateStatusRenewalEnumStringPending
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "scheduled")
                                                      then GetCertificatesIdResponseBody200CertificateStatusRenewalEnumStringScheduled
                                                      else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "unavailable")
                                                            then GetCertificatesIdResponseBody200CertificateStatusRenewalEnumStringUnavailable
                                                            else GetCertificatesIdResponseBody200CertificateStatusRenewalEnumOther val)
-- | Defines the enum schema GetCertificatesIdResponseBody200CertificateType
-- 
-- Type of the Certificate
data GetCertificatesIdResponseBody200CertificateType
    = GetCertificatesIdResponseBody200CertificateTypeEnumOther Data.Aeson.Types.Internal.Value
    | GetCertificatesIdResponseBody200CertificateTypeEnumTyped Data.Text.Internal.Text
    | GetCertificatesIdResponseBody200CertificateTypeEnumStringManaged
    | GetCertificatesIdResponseBody200CertificateTypeEnumStringUploaded
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCertificatesIdResponseBody200CertificateType
    where toJSON (GetCertificatesIdResponseBody200CertificateTypeEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCertificatesIdResponseBody200CertificateTypeEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetCertificatesIdResponseBody200CertificateTypeEnumStringManaged) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "managed"
          toJSON (GetCertificatesIdResponseBody200CertificateTypeEnumStringUploaded) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "uploaded"
instance Data.Aeson.FromJSON GetCertificatesIdResponseBody200CertificateType
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "managed")
                                          then GetCertificatesIdResponseBody200CertificateTypeEnumStringManaged
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "uploaded")
                                                then GetCertificatesIdResponseBody200CertificateTypeEnumStringUploaded
                                                else GetCertificatesIdResponseBody200CertificateTypeEnumOther val)
-- | Defines the data type for the schema GetCertificatesIdResponseBody200CertificateUsed_by
-- 
-- 
data GetCertificatesIdResponseBody200CertificateUsedBy = GetCertificatesIdResponseBody200CertificateUsedBy {
  -- | id: ID of resource referenced
  getCertificatesIdResponseBody200CertificateUsedById :: GHC.Integer.Type.Integer
  -- | type: Type of resource referenced
  , getCertificatesIdResponseBody200CertificateUsedByType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetCertificatesIdResponseBody200CertificateUsedBy
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (getCertificatesIdResponseBody200CertificateUsedById obj) : (Data.Aeson..=) "type" (getCertificatesIdResponseBody200CertificateUsedByType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (getCertificatesIdResponseBody200CertificateUsedById obj) GHC.Base.<> (Data.Aeson..=) "type" (getCertificatesIdResponseBody200CertificateUsedByType obj))
instance Data.Aeson.Types.FromJSON.FromJSON GetCertificatesIdResponseBody200CertificateUsedBy
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetCertificatesIdResponseBody200CertificateUsedBy" (\obj -> (GHC.Base.pure GetCertificatesIdResponseBody200CertificateUsedBy GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))