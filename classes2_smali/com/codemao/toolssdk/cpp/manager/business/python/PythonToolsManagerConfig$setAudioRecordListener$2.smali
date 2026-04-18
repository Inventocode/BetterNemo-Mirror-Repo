.class final Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PythonToolsManagerConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->setAudioRecordListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Ljava/lang/String;",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$2;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 40
    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$2;->invoke(Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$2;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;

    invoke-static {v0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->access$getMediaHelper$p(Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;)Lcom/codemao/toolssdk/python/util/PythonMediaHelper;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->stopRecord$default(Lcom/codemao/toolssdk/python/util/PythonMediaHelper;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V

    :cond_13
    return-void
.end method
