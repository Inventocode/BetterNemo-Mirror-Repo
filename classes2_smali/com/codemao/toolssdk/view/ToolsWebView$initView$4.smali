.class public final Lcom/codemao/toolssdk/view/ToolsWebView$initView$4;
.super Ljava/lang/Object;
.source "ToolsWebView.kt"

# interfaces
.implements Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;


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

    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$4;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgentCacheDir()Ljava/lang/String;
    .registers 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$4;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$4;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getCurrentToolType$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    const-string v1, "unknow"

    :cond_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/uploadAgent/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderToken()Ljava/lang/String;
    .registers 2

    .line 193
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_e
    const-string v0, ""

    :cond_10
    return-object v0
.end method

.method public getUploadCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$4;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getScope$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public getWorkTypeAndEnterFrom()Lkotlin/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$4;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getCurrentToolType$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_d

    move-object v1, v2

    :cond_d
    iget-object v3, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$4;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->getEnterFrom()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object v2, v3

    :cond_1d
    :goto_1d
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
