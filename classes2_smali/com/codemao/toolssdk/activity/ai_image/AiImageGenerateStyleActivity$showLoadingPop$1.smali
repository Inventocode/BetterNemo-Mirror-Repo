.class public final Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showLoadingPop$1;
.super Ljava/lang/Object;
.source "AiImageGenerateStyleActivity.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/pop/AiGenerateProgressPop$BtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->showLoadingPop(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $cancelCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showLoadingPop$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showLoadingPop$1;->$cancelCallback:Lkotlin/jvm/functions/Function0;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showLoadingPop$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$getValueAnimator$p(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 450
    :cond_b
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showLoadingPop$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$getAiImageGenerateManager$p(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)Lcom/codemao/toolssdk/manager/AiImageGenerateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/AiImageGenerateManager;->destroy()V

    .line 451
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showLoadingPop$1;->$cancelCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
