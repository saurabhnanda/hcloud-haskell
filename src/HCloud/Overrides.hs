{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
module HCloud.Overrides where

import HCloud.Common(SecurityScheme(..))
import qualified Data.ByteString as BS
import Network.HTTP.Client
import Network.HTTP.Types
import Network.HTTP.Types.Header (hAuthorization)

-- newtype BearerAuthenticationSecurityScheme = BearerAuthenticationSecurityScheme { rawToken :: BS.ByteString } deriving (Eq, Show)

-- instance SecurityScheme BearerAuthenticationSecurityScheme where
--   authenticateRequest BearerAuthenticationSecurityScheme{rawToken} req =
--     req { requestHeaders = (hAuthorization, "Bearer " <> rawToken):(requestHeaders req) }

bearerAuthenticationSecurityScheme :: BS.ByteString -> Request -> Request
bearerAuthenticationSecurityScheme rawToken req = req { requestHeaders = (hAuthorization, "Bearer " <> rawToken):(requestHeaders req) }
