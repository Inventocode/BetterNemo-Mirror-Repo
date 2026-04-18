.class public final synthetic Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

.field public final synthetic f$1:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;

.field public final synthetic f$2:Lcom/codemao/toolssdk/model/dsbridge/IResult;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/model/dsbridge/IResult;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$$ExternalSyntheticLambda2;->f$1:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$$ExternalSyntheticLambda2;->f$2:Lcom/codemao/toolssdk/model/dsbridge/IResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$$ExternalSyntheticLambda2;->f$1:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$$ExternalSyntheticLambda2;->f$2:Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->$r8$lambda$LZA3mYw6zLB_GzJ-e6HvF7whl50(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/model/dsbridge/IResult;)V

    return-void
.end method
