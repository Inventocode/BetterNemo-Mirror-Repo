.class public abstract Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientBase;
.super Landroid/webkit/WebChromeClient;
.source "ToolsWebChromeClientBase.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method
