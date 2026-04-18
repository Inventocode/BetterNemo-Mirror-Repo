.class final Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AiImageGenerateStyleActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->refreshNewImage(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V
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

.field final synthetic $item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;",
            "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$1;->$item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    iput-object p3, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 324
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$1;->$item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    if-nez v0, :cond_1d

    .line 326
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$1;->$item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$refreshNewImage$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$showNextImg(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V

    :cond_1d
    return-void
.end method
