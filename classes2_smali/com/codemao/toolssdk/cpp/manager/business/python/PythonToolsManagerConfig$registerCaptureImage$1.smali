.class final Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$registerCaptureImage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PythonToolsManagerConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->registerCaptureImage()V
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

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$registerCaptureImage$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 55
    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$registerCaptureImage$1;->invoke(Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlin/jvm/functions/Function1;)V
    .registers 5
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

    .line 56
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行拍照逻辑"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPythonPhoto(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$registerCaptureImage$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;

    invoke-static {v0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->access$getMediaHelper$p(Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;)Lcom/codemao/toolssdk/python/util/PythonMediaHelper;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$registerCaptureImage$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$registerCaptureImage$1$1;

    invoke-direct {v2, p1}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$registerCaptureImage$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->captureImage(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    :cond_22
    return-void
.end method
