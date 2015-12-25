-- 14.1

isBigGang :: Int -> (Bool, String)
isBigGang x = (x > 9, "Compared to 9.")

applyLog :: (a, String) -> (a -> (b, String)) -> (b, String)
applyLog (x, log) f = let (y, newLog) = f x  in (y, log ++ newLog)

aplg = ("tobin", "Got outlaw name.") `applyLog` (\x -> (length x, "applied Length."))
