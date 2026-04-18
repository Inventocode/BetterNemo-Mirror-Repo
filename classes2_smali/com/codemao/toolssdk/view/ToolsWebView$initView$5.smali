.class public final Lcom/codemao/toolssdk/view/ToolsWebView$initView$5;
.super Landroid/webkit/WebChromeClient;
.source "ToolsWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/view/ToolsWebView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/view/ToolsWebView;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$5;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    .line 218
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$5;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1f

    const-string v0, "android.webkit.resource.VIDEO_CAPTURE"

    .line 222
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    goto :goto_1f

    :cond_1a
    if-eqz p1, :cond_1f

    .line 224
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    :cond_1f
    :goto_1f
    return-void
.end method
