.class public final Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClient$Companion;
.super Ljava/lang/Object;
.source "ToolsWebChromeClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClient$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChromeClient(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebChromeClient;
    .registers 3

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "配置chromeClient"

    .line 18
    invoke-static {p2}, Lcom/codemao/toolssdk/utils/ExtLog;->dDWebView(Ljava/lang/String;)V

    .line 19
    new-instance p2, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;

    invoke-direct {p2, p1}, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;-><init>(Landroid/content/Context;)V

    return-object p2
.end method
