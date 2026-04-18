.class final Lcom/codemao/toolssdk/jsapi/FileJsApi$addCameraImage$execute$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FileJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/FileJsApi;->addCameraImage$execute(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/activity/result/ActivityResult;",
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

.field final synthetic $option:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/FileJsApi;",
            "Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addCameraImage$execute$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addCameraImage$execute$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    iput-object p3, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addCameraImage$execute$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 616
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/jsapi/FileJsApi$addCameraImage$execute$1;->invoke(Landroidx/activity/result/ActivityResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/activity/result/ActivityResult;)V
    .registers 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "拍照添加素材结果:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    sget-object v4, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->Companion:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$Companion;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$Companion;->getImageKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    :cond_23
    move-object v2, v3

    :goto_24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addCameraImage$execute$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->getCameraCloseCallback()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 619
    :cond_43
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_90

    .line 620
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5a

    sget-object v1, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->Companion:Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$Companion;->getImageKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 622
    :cond_5a
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addCameraImage$execute$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    invoke-static {p1}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$getGson$p(Lcom/codemao/toolssdk/jsapi/FileJsApi;)Lcom/google/gson/Gson;

    move-result-object p1

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    new-instance v4, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult;

    iget-object v5, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addCameraImage$execute$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    invoke-virtual {v5}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 623
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addCameraImage$execute$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-interface {v1, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "通知web拍照添加素材成功:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    goto :goto_99

    .line 626
    :cond_90
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addCameraImage$execute$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addCameraImage$execute$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    const/16 v1, 0x2710

    invoke-static {p1, v0, v1}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$addCameraImage$fail(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;I)V

    :goto_99
    return-void
.end method
