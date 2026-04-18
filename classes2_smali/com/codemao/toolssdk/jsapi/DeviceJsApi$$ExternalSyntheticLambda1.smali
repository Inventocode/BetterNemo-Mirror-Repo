.class public final synthetic Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

.field public final synthetic f$1:Lcom/codemao/toolssdk/jsapi/DeviceJsApi;

.field public final synthetic f$2:Lcom/codemao/toolssdk/model/dsbridge/IResult;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/model/dsbridge/IResult;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda1;->f$1:Lcom/codemao/toolssdk/jsapi/DeviceJsApi;

    iput-object p3, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda1;->f$2:Lcom/codemao/toolssdk/model/dsbridge/IResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda1;->f$1:Lcom/codemao/toolssdk/jsapi/DeviceJsApi;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda1;->f$2:Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->$r8$lambda$rfLKgUzomauv1OzaICuhG3ZRNnw(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/model/dsbridge/IResult;)V

    return-void
.end method
