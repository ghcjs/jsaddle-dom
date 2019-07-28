import Control.Monad (void)
import Control.Concurrent (threadDelay, forkIO)
import Data.Foldable (forM_)
import Distribution.Simple
       (simpleUserHooks, buildHook, defaultMainWithHooks)
import System.IO (stdout, hFlush)

-- We should split JSDOM.Types into smaller packages.
-- For now let the user (or CI system) know that it
-- is not unusual for there to be no output for a
-- long time.
main = defaultMainWithHooks simpleUserHooks {
  buildHook = \a b c d -> do
    void . forkIO $
      forM_ [1..20] $ \n -> do
        threadDelay 60000000
        putStrLn $ "jsaddle-dom has been building for "
          <> show n <> " min (some modules are very large)."
        hFlush stdout
    buildHook simpleUserHooks a b c d
  }
