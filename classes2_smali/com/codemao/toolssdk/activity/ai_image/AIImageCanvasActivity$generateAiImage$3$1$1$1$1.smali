.class public final Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "AIImageCanvasActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1;->invoke(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAIImageCanvasActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AIImageCanvasActivity.kt\ncom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,589:1\n1851#2,2:590\n*S KotlinDebug\n*F\n+ 1 AIImageCanvasActivity.kt\ncom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1\n*L\n373#1:590,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $it:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $path:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1;->$it:Ljava/util/List;

    iput-object p3, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1;->$path:Ljava/lang/String;

    .line 363
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 390
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$changeLoadingView(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Z)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$isCancelLoadingClicked$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 371
    :cond_e
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$changeLoadingView(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Z)V

    .line 372
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 373
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1;->$it:Ljava/util/List;

    .line 1851
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 374
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 376
    :cond_2f
    sget-object v0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->Companion:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$Companion;

    .line 377
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    .line 378
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1;->$path:Ljava/lang/String;

    .line 380
    invoke-static {v1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$isScene$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Z

    move-result v4

    .line 381
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getStageSize$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Lcom/codemao/toolssdk/model/dsbridge/StageSize;

    move-result-object v5

    .line 376
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$Companion;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;ZLcom/codemao/toolssdk/model/dsbridge/StageSize;)V

    .line 383
    sget-object v6, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    const/4 v7, 0x1

    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$isScene$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->aiMatch$default(Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;ZZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3

    .line 363
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
