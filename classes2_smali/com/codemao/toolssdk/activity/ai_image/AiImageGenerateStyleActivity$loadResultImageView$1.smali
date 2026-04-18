.class public final Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "AiImageGenerateStyleActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->loadResultImageView(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $imgUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    iput-object p3, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;->$imgUrl:Ljava/lang/String;

    .line 404
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

    .line 421
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;->$callback:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$dismissLoadingPop(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    .line 423
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$showErrorView(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    .line 424
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$showErrorToast(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 4
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

    .line 409
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;->$callback:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    invoke-static {p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$dismissLoadingPop(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    .line 411
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    invoke-static {p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$getBinding$p(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;

    move-result-object p2

    if-nez p2, :cond_1f

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_1f
    iget-object p2, p2, Lcom/codemao/toolssdk/databinding/ToolsdkActivityAiImageGenerateStyleBinding;->ivResult:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 412
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    iget-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;->$imgUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$setCurrentImageUrl$p(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Ljava/lang/String;)V

    .line 413
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$hideErrorView(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3

    .line 404
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$loadResultImageView$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
