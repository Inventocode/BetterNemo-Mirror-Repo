.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$getCameraPermission$success$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppDeviceJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->getCameraPermission$success(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
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

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$getCameraPermission$success$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$getCameraPermission$success$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 158
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$getCameraPermission$success$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 5

    .line 159
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "通知探月我要使用摄像头："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    if-eqz p1, :cond_20

    .line 161
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$getCameraPermission$success$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$getCameraPermission$success$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->access$getCameraPermission$executeSuccess(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;)V

    goto :goto_27

    .line 163
    :cond_20
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$getCameraPermission$success$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$getCameraPermission$success$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->access$getCameraPermission$fail(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;)V

    :goto_27
    return-void
.end method
