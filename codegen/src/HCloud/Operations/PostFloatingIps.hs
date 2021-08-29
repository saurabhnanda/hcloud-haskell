-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

-- | Contains the different functions to run the operation postFloatingIps
module HCloud.Operations.PostFloatingIps where

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

-- | > POST /floating_ips
-- 
-- Creates a new Floating IP assigned to a Server. If you want to create a Floating IP that is not bound to a Server, you need to provide the \`home_location\` key instead of \`server\`. This can be either the ID or the name of the Location this IP shall be created in. Note that a Floating IP can be assigned to a Server in any Location later on. For optimal routing it is advised to use the Floating IP in the same Location it was created in.
postFloatingIps :: forall m s . (HCloud.Common.MonadHTTP m, HCloud.Common.SecurityScheme s) => HCloud.Common.Configuration s  -- ^ The configuration to use in the request
  -> GHC.Maybe.Maybe PostFloatingIpsRequestBody                                                                                  -- ^ The request body to send
  -> m (Data.Either.Either Network.HTTP.Client.Types.HttpException (Network.HTTP.Client.Types.Response PostFloatingIpsResponse)) -- ^ Monad containing the result of the operation
postFloatingIps config
                body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostFloatingIpsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostFloatingIpsResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                               PostFloatingIpsResponseBody201)
                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/floating_ips") [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /floating_ips
-- 
-- The same as 'postFloatingIps' but returns the raw 'Data.ByteString.Char8.ByteString'
postFloatingIpsRaw :: forall m s . (HCloud.Common.MonadHTTP m,
                                    HCloud.Common.SecurityScheme s) =>
                      HCloud.Common.Configuration s ->
                      GHC.Maybe.Maybe PostFloatingIpsRequestBody ->
                      m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                            (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postFloatingIpsRaw config
                   body = GHC.Base.id (HCloud.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/floating_ips") [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /floating_ips
-- 
-- Monadic version of 'postFloatingIps' (use with 'HCloud.Common.runWithConfiguration')
postFloatingIpsM :: forall m s . (HCloud.Common.MonadHTTP m,
                                  HCloud.Common.SecurityScheme s) =>
                    GHC.Maybe.Maybe PostFloatingIpsRequestBody ->
                    Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                       m
                                                       (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                           (Network.HTTP.Client.Types.Response PostFloatingIpsResponse))
postFloatingIpsM body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostFloatingIpsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 201) (Network.HTTP.Client.Types.responseStatus response) -> PostFloatingIpsResponse201 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                PostFloatingIpsResponseBody201)
                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/floating_ips") [] body HCloud.Common.RequestBodyEncodingJSON)
-- | > POST /floating_ips
-- 
-- Monadic version of 'postFloatingIpsRaw' (use with 'HCloud.Common.runWithConfiguration')
postFloatingIpsRawM :: forall m s . (HCloud.Common.MonadHTTP m,
                                     HCloud.Common.SecurityScheme s) =>
                       GHC.Maybe.Maybe PostFloatingIpsRequestBody ->
                       Control.Monad.Trans.Reader.ReaderT (HCloud.Common.Configuration s)
                                                          m
                                                          (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                              (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
postFloatingIpsRawM body = GHC.Base.id (HCloud.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/floating_ips") [] body HCloud.Common.RequestBodyEncodingJSON)
-- | Defines the data type for the schema postFloatingIpsRequestBody
-- 
-- 
data PostFloatingIpsRequestBody = PostFloatingIpsRequestBody {
  -- | description
  postFloatingIpsRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | home_location: Home Location (routing is optimized for that Location). Only optional if Server argument is passed.
  , postFloatingIpsRequestBodyHomeLocation :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | labels: User-defined labels (key-value pairs)
  , postFloatingIpsRequestBodyLabels :: (GHC.Maybe.Maybe PostFloatingIpsRequestBodyLabels)
  -- | name
  , postFloatingIpsRequestBodyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | server: Server to assign the Floating IP to
  , postFloatingIpsRequestBodyServer :: (GHC.Maybe.Maybe GHC.Integer.Type.Integer)
  -- | type: Floating IP type
  , postFloatingIpsRequestBodyType :: PostFloatingIpsRequestBodyType
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFloatingIpsRequestBody
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "description" (postFloatingIpsRequestBodyDescription obj) : (Data.Aeson..=) "home_location" (postFloatingIpsRequestBodyHomeLocation obj) : (Data.Aeson..=) "labels" (postFloatingIpsRequestBodyLabels obj) : (Data.Aeson..=) "name" (postFloatingIpsRequestBodyName obj) : (Data.Aeson..=) "server" (postFloatingIpsRequestBodyServer obj) : (Data.Aeson..=) "type" (postFloatingIpsRequestBodyType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "description" (postFloatingIpsRequestBodyDescription obj) GHC.Base.<> ((Data.Aeson..=) "home_location" (postFloatingIpsRequestBodyHomeLocation obj) GHC.Base.<> ((Data.Aeson..=) "labels" (postFloatingIpsRequestBodyLabels obj) GHC.Base.<> ((Data.Aeson..=) "name" (postFloatingIpsRequestBodyName obj) GHC.Base.<> ((Data.Aeson..=) "server" (postFloatingIpsRequestBodyServer obj) GHC.Base.<> (Data.Aeson..=) "type" (postFloatingIpsRequestBodyType obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsRequestBody" (\obj -> (((((GHC.Base.pure PostFloatingIpsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "home_location")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "labels")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "server")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the data type for the schema postFloatingIpsRequestBodyLabels
-- 
-- User-defined labels (key-value pairs)
data PostFloatingIpsRequestBodyLabels = PostFloatingIpsRequestBodyLabels {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFloatingIpsRequestBodyLabels
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsRequestBodyLabels
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsRequestBodyLabels" (\obj -> GHC.Base.pure PostFloatingIpsRequestBodyLabels)
-- | Defines the enum schema postFloatingIpsRequestBodyType
-- 
-- Floating IP type
data PostFloatingIpsRequestBodyType
    = PostFloatingIpsRequestBodyTypeEnumOther Data.Aeson.Types.Internal.Value
    | PostFloatingIpsRequestBodyTypeEnumTyped Data.Text.Internal.Text
    | PostFloatingIpsRequestBodyTypeEnumStringIpv4
    | PostFloatingIpsRequestBodyTypeEnumStringIpv6
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFloatingIpsRequestBodyType
    where toJSON (PostFloatingIpsRequestBodyTypeEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostFloatingIpsRequestBodyTypeEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostFloatingIpsRequestBodyTypeEnumStringIpv4) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv4"
          toJSON (PostFloatingIpsRequestBodyTypeEnumStringIpv6) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv6"
instance Data.Aeson.FromJSON PostFloatingIpsRequestBodyType
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv4")
                                          then PostFloatingIpsRequestBodyTypeEnumStringIpv4
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv6")
                                                then PostFloatingIpsRequestBodyTypeEnumStringIpv6
                                                else PostFloatingIpsRequestBodyTypeEnumOther val)
-- | Represents a response of the operation 'postFloatingIps'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostFloatingIpsResponseError' is used.
data PostFloatingIpsResponse =                                 
   PostFloatingIpsResponseError GHC.Base.String                -- ^ Means either no matching case available or a parse error
  | PostFloatingIpsResponse201 PostFloatingIpsResponseBody201  -- ^ The \`floating_ip\` key in the reply contains the object that was just created
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the data type for the schema PostFloatingIpsResponseBody201
-- 
-- 
data PostFloatingIpsResponseBody201 = PostFloatingIpsResponseBody201 {
  -- | action
  postFloatingIpsResponseBody201Action :: (GHC.Maybe.Maybe PostFloatingIpsResponseBody201Action)
  -- | floating_ip
  , postFloatingIpsResponseBody201FloatingIp :: PostFloatingIpsResponseBody201FloatingIp
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFloatingIpsResponseBody201
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "action" (postFloatingIpsResponseBody201Action obj) : (Data.Aeson..=) "floating_ip" (postFloatingIpsResponseBody201FloatingIp obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "action" (postFloatingIpsResponseBody201Action obj) GHC.Base.<> (Data.Aeson..=) "floating_ip" (postFloatingIpsResponseBody201FloatingIp obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsResponseBody201
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsResponseBody201" (\obj -> (GHC.Base.pure PostFloatingIpsResponseBody201 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "floating_ip"))
-- | Defines the data type for the schema PostFloatingIpsResponseBody201Action
-- 
-- 
data PostFloatingIpsResponseBody201Action = PostFloatingIpsResponseBody201Action {
  -- | command: Command executed in the Action
  postFloatingIpsResponseBody201ActionCommand :: Data.Text.Internal.Text
  -- | error: Error message for the Action if error occurred, otherwise null
  , postFloatingIpsResponseBody201ActionError :: PostFloatingIpsResponseBody201ActionError
  -- | finished: Point in time when the Action was finished (in ISO-8601 format). Only set if the Action is finished otherwise null.
  , postFloatingIpsResponseBody201ActionFinished :: Data.Text.Internal.Text
  -- | id: ID of the Resource
  , postFloatingIpsResponseBody201ActionId :: GHC.Integer.Type.Integer
  -- | progress: Progress of Action in percent
  , postFloatingIpsResponseBody201ActionProgress :: GHC.Types.Double
  -- | resources: Resources the Action relates to
  , postFloatingIpsResponseBody201ActionResources :: ([] PostFloatingIpsResponseBody201ActionResources)
  -- | started: Point in time when the Action was started (in ISO-8601 format)
  , postFloatingIpsResponseBody201ActionStarted :: Data.Text.Internal.Text
  -- | status: Status of the Action
  , postFloatingIpsResponseBody201ActionStatus :: PostFloatingIpsResponseBody201ActionStatus
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFloatingIpsResponseBody201Action
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "command" (postFloatingIpsResponseBody201ActionCommand obj) : (Data.Aeson..=) "error" (postFloatingIpsResponseBody201ActionError obj) : (Data.Aeson..=) "finished" (postFloatingIpsResponseBody201ActionFinished obj) : (Data.Aeson..=) "id" (postFloatingIpsResponseBody201ActionId obj) : (Data.Aeson..=) "progress" (postFloatingIpsResponseBody201ActionProgress obj) : (Data.Aeson..=) "resources" (postFloatingIpsResponseBody201ActionResources obj) : (Data.Aeson..=) "started" (postFloatingIpsResponseBody201ActionStarted obj) : (Data.Aeson..=) "status" (postFloatingIpsResponseBody201ActionStatus obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "command" (postFloatingIpsResponseBody201ActionCommand obj) GHC.Base.<> ((Data.Aeson..=) "error" (postFloatingIpsResponseBody201ActionError obj) GHC.Base.<> ((Data.Aeson..=) "finished" (postFloatingIpsResponseBody201ActionFinished obj) GHC.Base.<> ((Data.Aeson..=) "id" (postFloatingIpsResponseBody201ActionId obj) GHC.Base.<> ((Data.Aeson..=) "progress" (postFloatingIpsResponseBody201ActionProgress obj) GHC.Base.<> ((Data.Aeson..=) "resources" (postFloatingIpsResponseBody201ActionResources obj) GHC.Base.<> ((Data.Aeson..=) "started" (postFloatingIpsResponseBody201ActionStarted obj) GHC.Base.<> (Data.Aeson..=) "status" (postFloatingIpsResponseBody201ActionStatus obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsResponseBody201Action
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsResponseBody201Action" (\obj -> (((((((GHC.Base.pure PostFloatingIpsResponseBody201Action GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "command")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "finished")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "progress")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "resources")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "started")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))
-- | Defines the data type for the schema PostFloatingIpsResponseBody201ActionError
-- 
-- Error message for the Action if error occurred, otherwise null
data PostFloatingIpsResponseBody201ActionError = PostFloatingIpsResponseBody201ActionError {
  -- | code: Fixed machine readable code
  postFloatingIpsResponseBody201ActionErrorCode :: Data.Text.Internal.Text
  -- | message: Humanized error message
  , postFloatingIpsResponseBody201ActionErrorMessage :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFloatingIpsResponseBody201ActionError
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "code" (postFloatingIpsResponseBody201ActionErrorCode obj) : (Data.Aeson..=) "message" (postFloatingIpsResponseBody201ActionErrorMessage obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "code" (postFloatingIpsResponseBody201ActionErrorCode obj) GHC.Base.<> (Data.Aeson..=) "message" (postFloatingIpsResponseBody201ActionErrorMessage obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsResponseBody201ActionError
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsResponseBody201ActionError" (\obj -> (GHC.Base.pure PostFloatingIpsResponseBody201ActionError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message"))
-- | Defines the data type for the schema PostFloatingIpsResponseBody201ActionResources
-- 
-- 
data PostFloatingIpsResponseBody201ActionResources = PostFloatingIpsResponseBody201ActionResources {
  -- | id: ID of the Resource
  postFloatingIpsResponseBody201ActionResourcesId :: GHC.Integer.Type.Integer
  -- | type: Type of resource referenced
  , postFloatingIpsResponseBody201ActionResourcesType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFloatingIpsResponseBody201ActionResources
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "id" (postFloatingIpsResponseBody201ActionResourcesId obj) : (Data.Aeson..=) "type" (postFloatingIpsResponseBody201ActionResourcesType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "id" (postFloatingIpsResponseBody201ActionResourcesId obj) GHC.Base.<> (Data.Aeson..=) "type" (postFloatingIpsResponseBody201ActionResourcesType obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsResponseBody201ActionResources
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsResponseBody201ActionResources" (\obj -> (GHC.Base.pure PostFloatingIpsResponseBody201ActionResources GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the enum schema PostFloatingIpsResponseBody201ActionStatus
-- 
-- Status of the Action
data PostFloatingIpsResponseBody201ActionStatus
    = PostFloatingIpsResponseBody201ActionStatusEnumOther Data.Aeson.Types.Internal.Value
    | PostFloatingIpsResponseBody201ActionStatusEnumTyped Data.Text.Internal.Text
    | PostFloatingIpsResponseBody201ActionStatusEnumStringError
    | PostFloatingIpsResponseBody201ActionStatusEnumStringRunning
    | PostFloatingIpsResponseBody201ActionStatusEnumStringSuccess
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFloatingIpsResponseBody201ActionStatus
    where toJSON (PostFloatingIpsResponseBody201ActionStatusEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostFloatingIpsResponseBody201ActionStatusEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostFloatingIpsResponseBody201ActionStatusEnumStringError) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error"
          toJSON (PostFloatingIpsResponseBody201ActionStatusEnumStringRunning) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running"
          toJSON (PostFloatingIpsResponseBody201ActionStatusEnumStringSuccess) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success"
instance Data.Aeson.FromJSON PostFloatingIpsResponseBody201ActionStatus
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "error")
                                          then PostFloatingIpsResponseBody201ActionStatusEnumStringError
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "running")
                                                then PostFloatingIpsResponseBody201ActionStatusEnumStringRunning
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success")
                                                      then PostFloatingIpsResponseBody201ActionStatusEnumStringSuccess
                                                      else PostFloatingIpsResponseBody201ActionStatusEnumOther val)
-- | Defines the data type for the schema PostFloatingIpsResponseBody201Floating_ip
-- 
-- 
data PostFloatingIpsResponseBody201FloatingIp = PostFloatingIpsResponseBody201FloatingIp {
  -- | blocked: Whether the IP is blocked
  postFloatingIpsResponseBody201FloatingIpBlocked :: GHC.Types.Bool
  -- | created: Point in time when the Resource was created (in ISO-8601 format)
  , postFloatingIpsResponseBody201FloatingIpCreated :: Data.Text.Internal.Text
  -- | description: Description of the Resource
  , postFloatingIpsResponseBody201FloatingIpDescription :: Data.Text.Internal.Text
  -- | dns_ptr: Array of reverse DNS entries
  , postFloatingIpsResponseBody201FloatingIpDnsPtr :: ([] PostFloatingIpsResponseBody201FloatingIpDnsPtr)
  -- | home_location: Location the Floating IP was created in. Routing is optimized for this Location.
  , postFloatingIpsResponseBody201FloatingIpHomeLocation :: PostFloatingIpsResponseBody201FloatingIpHomeLocation
  -- | id: ID of the Resource
  , postFloatingIpsResponseBody201FloatingIpId :: GHC.Integer.Type.Integer
  -- | ip: IP address
  , postFloatingIpsResponseBody201FloatingIpIp :: Data.Text.Internal.Text
  -- | labels: User-defined labels (key-value pairs)
  , postFloatingIpsResponseBody201FloatingIpLabels :: PostFloatingIpsResponseBody201FloatingIpLabels
  -- | name: Name of the Resource. Must be unique per Project.
  , postFloatingIpsResponseBody201FloatingIpName :: Data.Text.Internal.Text
  -- | protection: Protection configuration for the Resource
  , postFloatingIpsResponseBody201FloatingIpProtection :: PostFloatingIpsResponseBody201FloatingIpProtection
  -- | server: ID of the Server the Floating IP is assigned to, null if it is not assigned at all
  , postFloatingIpsResponseBody201FloatingIpServer :: GHC.Integer.Type.Integer
  -- | type: Type of the Floating IP
  , postFloatingIpsResponseBody201FloatingIpType :: PostFloatingIpsResponseBody201FloatingIpType
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFloatingIpsResponseBody201FloatingIp
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "blocked" (postFloatingIpsResponseBody201FloatingIpBlocked obj) : (Data.Aeson..=) "created" (postFloatingIpsResponseBody201FloatingIpCreated obj) : (Data.Aeson..=) "description" (postFloatingIpsResponseBody201FloatingIpDescription obj) : (Data.Aeson..=) "dns_ptr" (postFloatingIpsResponseBody201FloatingIpDnsPtr obj) : (Data.Aeson..=) "home_location" (postFloatingIpsResponseBody201FloatingIpHomeLocation obj) : (Data.Aeson..=) "id" (postFloatingIpsResponseBody201FloatingIpId obj) : (Data.Aeson..=) "ip" (postFloatingIpsResponseBody201FloatingIpIp obj) : (Data.Aeson..=) "labels" (postFloatingIpsResponseBody201FloatingIpLabels obj) : (Data.Aeson..=) "name" (postFloatingIpsResponseBody201FloatingIpName obj) : (Data.Aeson..=) "protection" (postFloatingIpsResponseBody201FloatingIpProtection obj) : (Data.Aeson..=) "server" (postFloatingIpsResponseBody201FloatingIpServer obj) : (Data.Aeson..=) "type" (postFloatingIpsResponseBody201FloatingIpType obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "blocked" (postFloatingIpsResponseBody201FloatingIpBlocked obj) GHC.Base.<> ((Data.Aeson..=) "created" (postFloatingIpsResponseBody201FloatingIpCreated obj) GHC.Base.<> ((Data.Aeson..=) "description" (postFloatingIpsResponseBody201FloatingIpDescription obj) GHC.Base.<> ((Data.Aeson..=) "dns_ptr" (postFloatingIpsResponseBody201FloatingIpDnsPtr obj) GHC.Base.<> ((Data.Aeson..=) "home_location" (postFloatingIpsResponseBody201FloatingIpHomeLocation obj) GHC.Base.<> ((Data.Aeson..=) "id" (postFloatingIpsResponseBody201FloatingIpId obj) GHC.Base.<> ((Data.Aeson..=) "ip" (postFloatingIpsResponseBody201FloatingIpIp obj) GHC.Base.<> ((Data.Aeson..=) "labels" (postFloatingIpsResponseBody201FloatingIpLabels obj) GHC.Base.<> ((Data.Aeson..=) "name" (postFloatingIpsResponseBody201FloatingIpName obj) GHC.Base.<> ((Data.Aeson..=) "protection" (postFloatingIpsResponseBody201FloatingIpProtection obj) GHC.Base.<> ((Data.Aeson..=) "server" (postFloatingIpsResponseBody201FloatingIpServer obj) GHC.Base.<> (Data.Aeson..=) "type" (postFloatingIpsResponseBody201FloatingIpType obj))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsResponseBody201FloatingIp
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsResponseBody201FloatingIp" (\obj -> (((((((((((GHC.Base.pure PostFloatingIpsResponseBody201FloatingIp GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "blocked")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "dns_ptr")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "home_location")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "labels")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "protection")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "server")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Defines the data type for the schema PostFloatingIpsResponseBody201Floating_ipDns_ptr
-- 
-- 
data PostFloatingIpsResponseBody201FloatingIpDnsPtr = PostFloatingIpsResponseBody201FloatingIpDnsPtr {
  -- | dns_ptr: DNS pointer for the specific IP address
  postFloatingIpsResponseBody201FloatingIpDnsPtrDnsPtr :: Data.Text.Internal.Text
  -- | ip: Single IPv4 or IPv6 address
  , postFloatingIpsResponseBody201FloatingIpDnsPtrIp :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFloatingIpsResponseBody201FloatingIpDnsPtr
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "dns_ptr" (postFloatingIpsResponseBody201FloatingIpDnsPtrDnsPtr obj) : (Data.Aeson..=) "ip" (postFloatingIpsResponseBody201FloatingIpDnsPtrIp obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "dns_ptr" (postFloatingIpsResponseBody201FloatingIpDnsPtrDnsPtr obj) GHC.Base.<> (Data.Aeson..=) "ip" (postFloatingIpsResponseBody201FloatingIpDnsPtrIp obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsResponseBody201FloatingIpDnsPtr
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsResponseBody201FloatingIpDnsPtr" (\obj -> (GHC.Base.pure PostFloatingIpsResponseBody201FloatingIpDnsPtr GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "dns_ptr")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ip"))
-- | Defines the data type for the schema PostFloatingIpsResponseBody201Floating_ipHome_location
-- 
-- Location the Floating IP was created in. Routing is optimized for this Location.
data PostFloatingIpsResponseBody201FloatingIpHomeLocation = PostFloatingIpsResponseBody201FloatingIpHomeLocation {
  -- | city: City the Location is closest to
  postFloatingIpsResponseBody201FloatingIpHomeLocationCity :: Data.Text.Internal.Text
  -- | country: ISO 3166-1 alpha-2 code of the country the Location resides in
  , postFloatingIpsResponseBody201FloatingIpHomeLocationCountry :: Data.Text.Internal.Text
  -- | description: Description of the Location
  , postFloatingIpsResponseBody201FloatingIpHomeLocationDescription :: Data.Text.Internal.Text
  -- | id: ID of the Location
  , postFloatingIpsResponseBody201FloatingIpHomeLocationId :: GHC.Types.Double
  -- | latitude: Latitude of the city closest to the Location
  , postFloatingIpsResponseBody201FloatingIpHomeLocationLatitude :: GHC.Types.Double
  -- | longitude: Longitude of the city closest to the Location
  , postFloatingIpsResponseBody201FloatingIpHomeLocationLongitude :: GHC.Types.Double
  -- | name: Unique identifier of the Location
  , postFloatingIpsResponseBody201FloatingIpHomeLocationName :: Data.Text.Internal.Text
  -- | network_zone: Name of network zone this Location resides in
  , postFloatingIpsResponseBody201FloatingIpHomeLocationNetworkZone :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFloatingIpsResponseBody201FloatingIpHomeLocation
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "city" (postFloatingIpsResponseBody201FloatingIpHomeLocationCity obj) : (Data.Aeson..=) "country" (postFloatingIpsResponseBody201FloatingIpHomeLocationCountry obj) : (Data.Aeson..=) "description" (postFloatingIpsResponseBody201FloatingIpHomeLocationDescription obj) : (Data.Aeson..=) "id" (postFloatingIpsResponseBody201FloatingIpHomeLocationId obj) : (Data.Aeson..=) "latitude" (postFloatingIpsResponseBody201FloatingIpHomeLocationLatitude obj) : (Data.Aeson..=) "longitude" (postFloatingIpsResponseBody201FloatingIpHomeLocationLongitude obj) : (Data.Aeson..=) "name" (postFloatingIpsResponseBody201FloatingIpHomeLocationName obj) : (Data.Aeson..=) "network_zone" (postFloatingIpsResponseBody201FloatingIpHomeLocationNetworkZone obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "city" (postFloatingIpsResponseBody201FloatingIpHomeLocationCity obj) GHC.Base.<> ((Data.Aeson..=) "country" (postFloatingIpsResponseBody201FloatingIpHomeLocationCountry obj) GHC.Base.<> ((Data.Aeson..=) "description" (postFloatingIpsResponseBody201FloatingIpHomeLocationDescription obj) GHC.Base.<> ((Data.Aeson..=) "id" (postFloatingIpsResponseBody201FloatingIpHomeLocationId obj) GHC.Base.<> ((Data.Aeson..=) "latitude" (postFloatingIpsResponseBody201FloatingIpHomeLocationLatitude obj) GHC.Base.<> ((Data.Aeson..=) "longitude" (postFloatingIpsResponseBody201FloatingIpHomeLocationLongitude obj) GHC.Base.<> ((Data.Aeson..=) "name" (postFloatingIpsResponseBody201FloatingIpHomeLocationName obj) GHC.Base.<> (Data.Aeson..=) "network_zone" (postFloatingIpsResponseBody201FloatingIpHomeLocationNetworkZone obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsResponseBody201FloatingIpHomeLocation
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsResponseBody201FloatingIpHomeLocation" (\obj -> (((((((GHC.Base.pure PostFloatingIpsResponseBody201FloatingIpHomeLocation GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "latitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "longitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "network_zone"))
-- | Defines the data type for the schema PostFloatingIpsResponseBody201Floating_ipLabels
-- 
-- User-defined labels (key-value pairs)
data PostFloatingIpsResponseBody201FloatingIpLabels = PostFloatingIpsResponseBody201FloatingIpLabels {
  
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFloatingIpsResponseBody201FloatingIpLabels
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsResponseBody201FloatingIpLabels
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsResponseBody201FloatingIpLabels" (\obj -> GHC.Base.pure PostFloatingIpsResponseBody201FloatingIpLabels)
-- | Defines the data type for the schema PostFloatingIpsResponseBody201Floating_ipProtection
-- 
-- Protection configuration for the Resource
data PostFloatingIpsResponseBody201FloatingIpProtection = PostFloatingIpsResponseBody201FloatingIpProtection {
  -- | delete: If true, prevents the Resource from being deleted
  postFloatingIpsResponseBody201FloatingIpProtectionDelete :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFloatingIpsResponseBody201FloatingIpProtection
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "delete" (postFloatingIpsResponseBody201FloatingIpProtectionDelete obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "delete" (postFloatingIpsResponseBody201FloatingIpProtectionDelete obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostFloatingIpsResponseBody201FloatingIpProtection
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostFloatingIpsResponseBody201FloatingIpProtection" (\obj -> GHC.Base.pure PostFloatingIpsResponseBody201FloatingIpProtection GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "delete"))
-- | Defines the enum schema PostFloatingIpsResponseBody201Floating_ipType
-- 
-- Type of the Floating IP
data PostFloatingIpsResponseBody201FloatingIpType
    = PostFloatingIpsResponseBody201FloatingIpTypeEnumOther Data.Aeson.Types.Internal.Value
    | PostFloatingIpsResponseBody201FloatingIpTypeEnumTyped Data.Text.Internal.Text
    | PostFloatingIpsResponseBody201FloatingIpTypeEnumStringIpv4
    | PostFloatingIpsResponseBody201FloatingIpTypeEnumStringIpv6
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON PostFloatingIpsResponseBody201FloatingIpType
    where toJSON (PostFloatingIpsResponseBody201FloatingIpTypeEnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostFloatingIpsResponseBody201FloatingIpTypeEnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (PostFloatingIpsResponseBody201FloatingIpTypeEnumStringIpv4) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv4"
          toJSON (PostFloatingIpsResponseBody201FloatingIpTypeEnumStringIpv6) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv6"
instance Data.Aeson.FromJSON PostFloatingIpsResponseBody201FloatingIpType
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv4")
                                          then PostFloatingIpsResponseBody201FloatingIpTypeEnumStringIpv4
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "ipv6")
                                                then PostFloatingIpsResponseBody201FloatingIpTypeEnumStringIpv6
                                                else PostFloatingIpsResponseBody201FloatingIpTypeEnumOther val)