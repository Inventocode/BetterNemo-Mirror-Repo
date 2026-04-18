.class public abstract Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;
.super Ljava/lang/Object;
.source "WoodToolsManagerBuilderBase.kt"

# interfaces
.implements Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;


# instance fields
.field private cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

.field private cmToolsOrientationChangeListener:Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

.field private context:Landroid/content/Context;

.field private cookie:Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

.field private toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

.field private toolsWebViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;",
            ">;"
        }
    .end annotation
.end field

.field private userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCookieData()Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->cookie:Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

    return-object v0
.end method

.method public getOrientationListener()Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->cmToolsOrientationChangeListener:Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

    return-object v0
.end method

.method public getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

    return-object v0
.end method

.method public getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    return-object v0
.end method

.method public getToolsWebView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
    .registers 3

    const-string v0, "contextReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->context:Landroid/content/Context;

    return-object p0
.end method

.method public setCookie(Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
    .registers 3

    const-string v0, "cookieData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->cookie:Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

    return-object p0
.end method

.method public setOrientationListener(Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->cmToolsOrientationChangeListener:Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

    return-object p0
.end method

.method public setSessionListener(Lcom/codemao/toolssdk/view/CMToolSessionListener;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

    return-object p0
.end method

.method public setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    return-object p0
.end method

.method public setToolsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
    .registers 10

    const-string v0, "toolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 103
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;

    if-nez v0, :cond_20

    .line 104
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/UserData;

    const-wide/16 v1, -0x1

    const-string v3, ""

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/UserData;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;

    goto :goto_26

    :cond_20
    if-nez v0, :cond_23

    goto :goto_26

    .line 106
    :cond_23
    invoke-virtual {v0, p2}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->setToken(Ljava/lang/String;)V

    .line 109
    :cond_26
    :goto_26
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    invoke-direct {p2, p1, p3, p4, p5}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    return-object p0
.end method

.method public setToolsWebView(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
    .registers 3

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;

    return-object p0
.end method
