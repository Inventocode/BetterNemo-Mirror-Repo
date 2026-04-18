.class public final synthetic Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

.field public final synthetic f$2:Lcom/codemao/toolssdk/jsapi/DeviceJsApi;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p3, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda0;->f$2:Lcom/codemao/toolssdk/jsapi/DeviceJsApi;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$$ExternalSyntheticLambda0;->f$2:Lcom/codemao/toolssdk/jsapi/DeviceJsApi;

    invoke-static {v0, v1, v2, p1}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->$r8$lambda$zc5yw-C87MWlt_c9KRNj84c2QAU(Landroid/content/Context;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/DeviceJsApi;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    return-void
.end method
