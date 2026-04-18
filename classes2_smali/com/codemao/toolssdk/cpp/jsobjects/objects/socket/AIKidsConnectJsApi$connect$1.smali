.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AIKidsConnectJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;->connect(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;


# direct methods
.method public static synthetic $r8$lambda$PQf6bnjHtQzij6RFhRcJG4UYFfs(Ljava/lang/Integer;Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;ZLjava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1;->invoke$lambda$0(Ljava/lang/Integer;Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;ZLjava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Ljava/lang/Integer;Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;ZLjava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    .line 29
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-lez v1, :cond_1c

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1e

    :cond_1c
    const/16 v0, 0x1c05

    .line 30
    :cond_1e
    :goto_1e
    invoke-static {p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;->access$getGson$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;)Lcom/google/gson/Gson;

    move-result-object p0

    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    if-eqz p2, :cond_28

    const/16 v0, 0x7d0

    :cond_28
    invoke-direct {p1, v0, p3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-interface {p4, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 32
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "原生给web的连接结果:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsStep(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1;->invoke(ZLjava/lang/Integer;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ZLjava/lang/Integer;Ljava/lang/Object;)V
    .registers 12

    .line 28
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;

    invoke-static {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;->access$getToolsWebView$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;)Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getManagerHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;

    iget-object v6, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    new-instance v7, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p2

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Integer;Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;ZLjava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    return-void
.end method
