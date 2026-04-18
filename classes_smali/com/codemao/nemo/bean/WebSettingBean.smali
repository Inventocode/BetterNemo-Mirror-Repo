.class public Lcom/codemao/nemo/bean/WebSettingBean;
.super Ljava/lang/Object;
.source "WebSettingBean.java"


# instance fields
.field public AllowContentAccess:Z

.field public AllowFileAccess:Z

.field public AllowFileAccessFromFileURLs:Z

.field public AllowUniversalAccessFromFileURLs:Z

.field public AppCacheEnabled:Z

.field public BuiltInZoomControls:Z

.field public CachPath:Ljava/lang/String;

.field public CacheMode:I

.field public DatabaseEnabled:Z

.field public DisplayZoomControls:Z

.field public DomStorageEnabled:Z

.field public JavaScriptEnabled:Z

.field public LayerType:I

.field public LayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field public LoadWithOverviewMode:Z

.field public LoadsImagesAutomatically:Z

.field public OffscreenPreRaster:Z

.field public SaveFormData:Z

.field public SupportMultipleWindows:Z

.field public SupportZoom:Z

.field public UseWideViewPort:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->AllowContentAccess:Z

    .line 13
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->AllowFileAccess:Z

    .line 14
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->AllowFileAccessFromFileURLs:Z

    .line 15
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->AllowUniversalAccessFromFileURLs:Z

    .line 16
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->AppCacheEnabled:Z

    .line 17
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->BuiltInZoomControls:Z

    .line 18
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->DomStorageEnabled:Z

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/codemao/nemo/bean/WebSettingBean;->LoadWithOverviewMode:Z

    .line 20
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->JavaScriptEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->DisplayZoomControls:Z

    .line 22
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->DatabaseEnabled:Z

    .line 23
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->SaveFormData:Z

    .line 24
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->LoadsImagesAutomatically:Z

    .line 25
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->SupportZoom:Z

    .line 26
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->UseWideViewPort:Z

    .line 27
    iput-boolean v1, p0, Lcom/codemao/nemo/bean/WebSettingBean;->SupportMultipleWindows:Z

    .line 28
    iput-boolean v1, p0, Lcom/codemao/nemo/bean/WebSettingBean;->OffscreenPreRaster:Z

    .line 29
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->LayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 30
    iput v1, p0, Lcom/codemao/nemo/bean/WebSettingBean;->LayerType:I

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->CacheMode:I

    .line 32
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    const-string v2, "cache"

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/bean/WebSettingBean;->CachPath:Ljava/lang/String;

    return-void
.end method
