{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_CryptoCheck (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/_admin0/Documents/HaskellProjects/CryptoCheck/.stack-work/install/x86_64-linux-tinfo6/dc0e828aeebadbd56aa69e281a09b1b6a945f330cae1c4cf611eea10615e9276/8.10.4/bin"
libdir     = "/home/_admin0/Documents/HaskellProjects/CryptoCheck/.stack-work/install/x86_64-linux-tinfo6/dc0e828aeebadbd56aa69e281a09b1b6a945f330cae1c4cf611eea10615e9276/8.10.4/lib/x86_64-linux-ghc-8.10.4/CryptoCheck-0.1.0.0-GHtCK6WGd80DiiC5F4XSpj-CryptoCheck-exe"
dynlibdir  = "/home/_admin0/Documents/HaskellProjects/CryptoCheck/.stack-work/install/x86_64-linux-tinfo6/dc0e828aeebadbd56aa69e281a09b1b6a945f330cae1c4cf611eea10615e9276/8.10.4/lib/x86_64-linux-ghc-8.10.4"
datadir    = "/home/_admin0/Documents/HaskellProjects/CryptoCheck/.stack-work/install/x86_64-linux-tinfo6/dc0e828aeebadbd56aa69e281a09b1b6a945f330cae1c4cf611eea10615e9276/8.10.4/share/x86_64-linux-ghc-8.10.4/CryptoCheck-0.1.0.0"
libexecdir = "/home/_admin0/Documents/HaskellProjects/CryptoCheck/.stack-work/install/x86_64-linux-tinfo6/dc0e828aeebadbd56aa69e281a09b1b6a945f330cae1c4cf611eea10615e9276/8.10.4/libexec/x86_64-linux-ghc-8.10.4/CryptoCheck-0.1.0.0"
sysconfdir = "/home/_admin0/Documents/HaskellProjects/CryptoCheck/.stack-work/install/x86_64-linux-tinfo6/dc0e828aeebadbd56aa69e281a09b1b6a945f330cae1c4cf611eea10615e9276/8.10.4/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "CryptoCheck_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "CryptoCheck_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "CryptoCheck_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "CryptoCheck_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "CryptoCheck_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "CryptoCheck_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
