.class final Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$1;
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
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 37
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;

    invoke-static {v0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->access$getMediaHelper$p(Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;)Lcom/codemao/toolssdk/python/util/PythonMediaHelper;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;

    invoke-static {v1}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->access$getUploadHelper(Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;)Lcom/codemao/toolssdk/python/other/UploadHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->startRecord(Ljava/lang/String;Lcom/codemao/toolssdk/python/other/UploadHelper;Landroid/content/Context;)V

    :cond_1c
    return-void
.end method
