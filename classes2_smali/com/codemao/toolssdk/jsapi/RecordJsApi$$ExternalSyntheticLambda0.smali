.class public final synthetic Lcom/codemao/toolssdk/jsapi/RecordJsApi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

.field public final synthetic f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->$r8$lambda$J46yzTtRW4ybEOODy4QDMT09dLk(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method
