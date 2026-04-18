.class final Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AIImageCanvasActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->generateAiImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $path:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;


# direct methods
.method public static synthetic $r8$lambda$4kgYNo0Q9CTH2yoI_c4NT5XHc5Q(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Ljava/util/List;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1;->invoke$lambda$0(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1;->$path:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Ljava/util/List;Ljava/lang/String;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$isCancelLoadingClicked$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 349
    :cond_11
    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getValueAnimator$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1a
    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 350
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_26

    :cond_24
    const/4 v1, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v1, 0x1

    :goto_27
    if-eqz v1, :cond_3d

    const-string p1, "生成失败，请重试"

    .line 351
    invoke-static {p0, p1, v0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 356
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$changeLoadingView(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Z)V

    .line 357
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;

    invoke-static {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$isScene$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Z

    move-result p0

    const-string p2, "返回结果为失败"

    invoke-virtual {p1, v0, p0, p2}, Lcom/codemao/toolssdk/func/logevent/StorageLogEventUtils;->aiMatch(ZZLjava/lang/String;)V

    goto :goto_5f

    .line 359
    :cond_3d
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 360
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 361
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 362
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 363
    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$1$1;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :goto_5f
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 340
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1;->$path:Ljava/lang/String;

    new-instance v2, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1, v1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$generateAiImage$3$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
