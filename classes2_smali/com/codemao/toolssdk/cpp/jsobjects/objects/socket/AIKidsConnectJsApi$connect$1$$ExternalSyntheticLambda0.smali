.class public final synthetic Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Integer;

.field public final synthetic f$1:Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;ZLjava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;

    iput-boolean p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1$$ExternalSyntheticLambda0;->f$4:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;

    iget-boolean v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1$$ExternalSyntheticLambda0;->f$4:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi$connect$1;->$r8$lambda$PQf6bnjHtQzij6RFhRcJG4UYFfs(Ljava/lang/Integer;Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;ZLjava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method
