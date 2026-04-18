.class public final Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;
.super Ljava/lang/Object;
.source "AIImageCanvasActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->confirmModeItem(Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $item:Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;

.field private coverBitmap:Landroid/graphics/Bitmap;

.field private maskBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;


# direct methods
.method public static synthetic $r8$lambda$_lz_PRGGuUabQui5jSxMacr5FTw(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->run$lambda$0(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->$item:Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final run$lambda$0(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getBinding$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_17

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_17
    iget-object v0, v0, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->aiImageEditCanvasView:Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;

    .line 566
    iget-object v3, p1, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 567
    iget-object p1, p1, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->coverBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 565
    invoke-virtual {v0, v3, p1}, Lcom/codemao/toolssdk/view/customize/AiImageEditCanvasView;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 569
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getBinding$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;

    move-result-object p0

    if-nez p0, :cond_30

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_31

    :cond_30
    move-object v1, p0

    :goto_31
    iget-object p0, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiimageCanvasBinding;->clSelectImageMode:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 535
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 536
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->$item:Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->getDraftUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 537
    new-instance v2, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1$run$1;

    invoke-direct {v2, p0, v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1$run$1;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 549
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->$item:Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->getSketchUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 550
    new-instance v2, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1$run$2;

    invoke-direct {v2, p0, v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1$run$2;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 562
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 563
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->maskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->coverBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_53

    .line 564
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_53
    return-void
.end method

.method public final setCoverBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 533
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->coverBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setMaskBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 532
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$confirmModeItem$1;->maskBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
