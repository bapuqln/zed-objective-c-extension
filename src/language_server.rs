use zed_extension_api::{
    self as zed,
    LanguageServerId, Result,
};

pub struct ObjectiveCLsp {
    // ... fields ...
}

impl ObjectiveCLsp {
    pub const SERVER_ID: &'static str = "objective-c"; // Or any unique ID you choose

    pub fn new() -> Self {
        // ... implementation ...
        Self { /* ... */ }
    }

    pub fn language_server_command(
        &mut self,
        _language_server_id: &LanguageServerId,
        _worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        // Zed 会自动处理语言服务器的启动
        // 这里不需要实现具体的启动逻辑
        Err("Language server handled by Zed automatically".to_string())
    }

    // Add pub if these methods are part of a public trait or need to be accessed
    // For now, assuming they are part of an internal LSP handling logic
    // and might not need to be pub directly on ObjectiveCLsp if called via ObjectiveCExtension
    // However, if ObjectiveCExtension directly calls these on ObjectiveCLsp instance,
    // they might need to be pub.
    // Based on your objective_c.rs, these are not directly called on ObjectiveCLsp from ObjectiveCExtension
    // but rather ObjectiveCExtension implements these methods itself.
}

// zed::register_extension!(ObjectiveCLsp);
