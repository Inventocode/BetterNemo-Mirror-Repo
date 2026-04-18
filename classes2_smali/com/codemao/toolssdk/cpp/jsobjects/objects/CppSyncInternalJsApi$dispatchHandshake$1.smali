.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi$dispatchHandshake$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppSyncInternalJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->dispatchHandshake()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi$dispatchHandshake$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 49
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi$dispatchHandshake$1;->invoke(Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi$dispatchHandshake$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->startHeartBeat()V

    return-void
.end method
