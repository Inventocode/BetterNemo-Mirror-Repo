.class final Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AiImageGenerateStyleActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->showNextImg(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
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

.field final synthetic $imageStateModel:Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;

.field final synthetic $item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

.field final synthetic $nextIndex:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;",
            "Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;",
            "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;->$item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;->$imageStateModel:Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;

    iput-object p3, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    iput-object p4, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;->$nextIndex:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p5, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 370
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 5

    if-nez p1, :cond_17

    .line 372
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;->$item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getCurrentImgIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->setCurrentImgIndex(I)V

    .line 373
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;->$imageStateModel:Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;

    if-nez v0, :cond_12

    goto :goto_2a

    :cond_12
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;->setShowed(Z)V

    goto :goto_2a

    .line 375
    :cond_17
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;->$item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getCurrentImgIndex()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->setCurrentImgIndex(I)V

    .line 376
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;->$imageStateModel:Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;

    if-nez v0, :cond_27

    goto :goto_2a

    :cond_27
    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;->setShowed(Z)V

    .line 378
    :goto_2a
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;->$item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;->$nextIndex:Lkotlin/jvm/internal/Ref$IntRef;

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v1, v2, v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$checkItemRound(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;ILcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->setCurrentImgIndex(I)V

    .line 379
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$showNextImg$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
