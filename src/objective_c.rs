use zed_extension_api::{
    self as zed,
    lsp::{Completion, Symbol},
    serde_json, settings::LspSettings, CodeLabel, LanguageServerId, Result,
};

#[derive(Default)]
struct ObjectiveCExtension {}

// 辅助函数：获取语言服务器可执行文件的路径
fn get_path_to_language_server_executable(
    language_server_id: &LanguageServerId,
    worktree: &zed::Worktree,
) -> Result<String> {
    // 1. 首先检查LSP设置中的自定义路径
    let lsp_settings = LspSettings::for_worktree(language_server_id.as_ref(), worktree)?;
    if let Some(binary_settings) = lsp_settings.binary {
        if let Some(path) = binary_settings.path {
            return Ok(path);
        }
    }

    // 2. 使用worktree.which()在PATH中查找clangd
    if let Some(path) = worktree.which("clangd") {
        return Ok(path);
    }

    // 3. 回退到系统默认的clangd路径
    Ok("/usr/bin/clangd".to_string())
}

// 辅助函数：获取传递给语言服务器的参数
fn get_args_for_language_server(
    language_server_id: &LanguageServerId,
    worktree: &zed::Worktree,
) -> Result<Vec<String>> {
    // 检查LSP设置中的自定义参数
    let lsp_settings = LspSettings::for_worktree(language_server_id.as_ref(), worktree)?;
    if let Some(binary_settings) = lsp_settings.binary {
        if let Some(args) = binary_settings.arguments {
            return Ok(args);
        }
    }

    // clangd 的默认参数
    Ok(vec![
        "--background-index".to_string(),
        "--clang-tidy".to_string(),
        "--completion-style=detailed".to_string(),
        "--header-insertion=iwyu".to_string(),
    ])
}

impl zed::Extension for ObjectiveCExtension {
    fn new() -> Self {
        Self::default()
    }

    fn language_server_command(
        &mut self,
        language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        Ok(zed::Command {
            command: get_path_to_language_server_executable(language_server_id, worktree)?,
            args: get_args_for_language_server(language_server_id, worktree)?,
            env: worktree.shell_env(),
        })
    }

    fn language_server_initialization_options(
        &mut self,
        language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<Option<serde_json::Value>> {
        let initialization_options =
            LspSettings::for_worktree(language_server_id.as_ref(), worktree)
                .ok()
                .and_then(|lsp_settings| lsp_settings.initialization_options.clone())
                .unwrap_or_default();

        Ok(Some(serde_json::json!(initialization_options)))
    }

    fn label_for_completion(
        &self,
        _language_server_id: &LanguageServerId,
        _completion: Completion,
    ) -> Option<CodeLabel> {
        // 使用默认标签，Zed会自动处理
        None
    }

    fn label_for_symbol(
        &self,
        _language_server_id: &LanguageServerId,
        _symbol: Symbol,
    ) -> Option<CodeLabel> {
        // 使用默认标签，Zed会自动处理
        None
    }
}

zed::register_extension!(ObjectiveCExtension);
