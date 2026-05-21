--------------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
import           Data.List   (sortOn)
import           Data.Monoid (mappend)
import           Hakyll


--------------------------------------------------------------------------------
main :: IO ()
main = hakyll $ do
    -- Static assets ---------------------------------------------------------
    match "images/**" $ do
        route   idRoute
        compile copyFileCompiler

    -- Compiled wasm demos: copied verbatim, never run through a template ----
    match "demos/**" $ do
        route   idRoute
        compile copyFileCompiler

    -- Resume PDF: copied verbatim as a static asset -------------------------
    match "resume.pdf" $ do
        route   idRoute
        compile copyFileCompiler

    match "css/*" $ do
        route   idRoute
        compile compressCssCompiler

    -- Project entries: each compiles to one card; no standalone page --------
    match "projects/*" $
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/project.html" defaultContext

    -- The projects page collects every card, ordered by filename -----------
    create ["projects.html"] $ do
        route idRoute
        compile $ do
            projects <- sortOn (toFilePath . itemIdentifier)
                    <$> loadAll "projects/*"
            let ctx =
                    listField "projects" defaultContext (return projects) `mappend`
                    constField "title" "Projects"                         `mappend`
                    defaultContext
            makeItem ""
                >>= loadAndApplyTemplate "templates/projects.html" ctx
                >>= loadAndApplyTemplate "templates/default.html"  ctx
                >>= relativizeUrls

    -- Per-project pages, rendered from each repo's README ------------------
    match "readmes/*" $ do
        route $ gsubRoute "readmes/" (const "projects/")
            `composeRoutes` setExtension "html"
        compile $ pandocCompiler
            >>= loadAndApplyTemplate "templates/readme.html"  defaultContext
            >>= loadAndApplyTemplate "templates/default.html" defaultContext
            >>= relativizeUrls

    -- Standalone HTML pages (frontmatter + body) ---------------------------
    match (fromList ["index.html", "desmos.html", "typst.html", "resume.html"]) $ do
        route   idRoute
        compile $ getResourceBody
            >>= loadAndApplyTemplate "templates/default.html" defaultContext
            >>= relativizeUrls

    match "templates/*" $ compile templateBodyCompiler
