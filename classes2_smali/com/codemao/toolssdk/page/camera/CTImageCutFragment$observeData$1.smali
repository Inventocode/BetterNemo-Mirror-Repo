.class final Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$observeData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CTImageCutFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->observeData()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCTImageCutFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CTImageCutFragment.kt\ncom/codemao/toolssdk/page/camera/CTImageCutFragment$observeData$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,435:1\n1#2:436\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$observeData$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 144
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$observeData$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 10

    .line 145
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "接受的图片地址:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$observeData$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$setFilePath$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$observeData$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$getFilePath$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$observeData$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-static {v1, v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$compressFinalSize(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$setFileFinalPath$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V

    .line 148
    :cond_2c
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$observeData$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$showImage(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$observeData$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$getCameraVM(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->getOptionData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->isScene()Z

    move-result v0

    if-ne v0, v1, :cond_4d

    const/4 v0, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    if-eqz v0, :cond_59

    .line 150
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$observeData$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$getUI_STATE_SENCE$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$changeUIState(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;)V

    .line 152
    :cond_59
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$observeData$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$getCameraVM(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Lcom/codemao/toolssdk/page/camera/CameraViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/page/camera/CameraViewModel;->getOptionData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;->isActor()Z

    move-result v0

    if-ne v0, v1, :cond_72

    goto :goto_73

    :cond_72
    const/4 v1, 0x0

    :goto_73
    if-eqz v1, :cond_89

    .line 153
    iget-object v2, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$observeData$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$observeData$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-static {v0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$getUI_STATE_CUTTING$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->upload$default(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_89
    return-void
.end method
