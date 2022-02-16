fn main() {
    let libdir = match std::env::var_os("VIMBAC_LIBDIR") {
        Some(dir) => std::path::PathBuf::from(dir),
        #[cfg(target_os = "windows")]
        None => std::path::PathBuf::from(
            r#"C:\Program Files\Allied Vision\Vimba_5.1\VimbaC\Lib\Win64\"#,
        ),
        #[cfg(not(target_os = "windows"))]
        None => {
            panic!("Must set VimbaC lib directory in VIMBAC_LIBDIR env var.");
        }
    };

    println!("cargo:rustc-link-search=native={}", libdir.display());
    println!("cargo:rustc-link-lib=VimbaC");
}
