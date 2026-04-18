.class public final synthetic Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/jsapi/DeviceJsApi;

.field public final synthetic f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/toolssdk/jsapi/DeviceJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda2;->f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/toolssdk/jsapi/DeviceJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda2;->f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->$r8$lambda$M6lzsCMqfJs-cMSj1bpxzxomwRI(Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method
