.class public final Lcom/codemao/toolssdk/view/preload/PreloadToolsWebView;
.super Lcom/codemao/toolssdk/evolving/web/ToolsWebView2;
.source "PreloadToolsWebView.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/evolving/web/ToolsWebView2;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/evolving/web/ToolsWebView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/evolving/web/ToolsWebView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public webViewSettingOver()V
    .registers 4

    .line 16
    invoke-super {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->webViewSettingOver()V

    .line 17
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->removeJavascriptObject(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    new-instance v2, Lcom/codemao/toolssdk/view/preload/PreloadDeviceJsApi;

    invoke-direct {v2}, Lcom/codemao/toolssdk/view/preload/PreloadDeviceJsApi;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
