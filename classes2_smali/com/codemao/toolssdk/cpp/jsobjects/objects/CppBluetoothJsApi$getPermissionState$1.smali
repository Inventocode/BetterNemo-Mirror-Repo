.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$getPermissionState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppBluetoothJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->getPermissionState(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
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

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$getPermissionState$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$getPermissionState$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 174
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$getPermissionState$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .registers 6

    .line 175
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->permission(I)V

    .line 176
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$getPermissionState$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$getPermissionState$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v3, 0x7d0

    invoke-direct {v2, v3, p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method
