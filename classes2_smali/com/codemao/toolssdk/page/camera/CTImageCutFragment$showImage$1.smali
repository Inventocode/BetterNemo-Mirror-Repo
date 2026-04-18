.class final Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$showImage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CTImageCutFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->showImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $path:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$showImage$1;->$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$showImage$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 347
    invoke-virtual {p0}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$showImage$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 4

    .line 348
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$showImage$1;->$path:Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 349
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "加载的图片路径:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$showImage$1;->$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$showImage$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$showImage$1;->$path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment$showImage$1;->this$0:Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;

    invoke-static {v1}, Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;->access$getBinding$p(Lcom/codemao/toolssdk/page/camera/CTImageCutFragment;)Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;

    move-result-object v1

    if-nez v1, :cond_3f

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_3f
    iget-object v1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkCameraKnImageCutBinding;->captureImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_44
    return-void
.end method
