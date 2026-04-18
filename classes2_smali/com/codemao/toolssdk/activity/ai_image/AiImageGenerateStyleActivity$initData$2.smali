.class final Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AiImageGenerateStyleActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->initData()V
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
.field final synthetic $imageStateModel:Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;

.field final synthetic $item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initData$2;->$item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initData$2;->$imageStateModel:Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 199
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initData$2;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 3

    if-nez p1, :cond_11

    .line 201
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initData$2;->$item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->setCurrentImgIndex(I)V

    .line 202
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initData$2;->$imageStateModel:Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;

    if-nez p1, :cond_d

    goto :goto_11

    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;->setShowed(Z)V

    :cond_11
    :goto_11
    return-void
.end method
