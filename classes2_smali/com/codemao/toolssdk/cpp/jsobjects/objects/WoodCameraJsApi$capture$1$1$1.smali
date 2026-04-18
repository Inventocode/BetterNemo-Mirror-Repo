.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$capture$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WoodCameraJsApiX.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->capture(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
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

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$capture$1$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$capture$1$1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 139
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$capture$1$1$1;->invoke(ZILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_25

    if-eqz p4, :cond_25

    .line 141
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance p3, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraCaptureResult;

    invoke-direct {p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraCaptureResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 142
    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$capture$1$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$capture$1$1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    invoke-virtual {p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 143
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "通知web拍照成功"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    goto :goto_35

    .line 145
    :cond_25
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$capture$1$1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    const/16 p2, 0x1bf1

    iget-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$capture$1$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->access$nullFail(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;ILcom/codemao/toolssdk/dsbridge/CompletionHandler;)Z

    .line 146
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "通知web拍照失败"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    :goto_35
    return-void
.end method
