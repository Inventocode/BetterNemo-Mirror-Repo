.class public final Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$3;
.super Ljava/lang/Object;
.source "AiImageGenerateStyleActivity.kt"

# interfaces
.implements Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$3;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClickListener(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    if-eqz v0, :cond_27

    .line 296
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$3;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$3$onItemClickListener$1;

    invoke-direct {v1, p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$3$onItemClickListener$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, p1, v1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$refreshNewImage(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V

    goto :goto_4a

    .line 300
    :cond_27
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImgList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getCurrentImgIndex()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;

    .line 301
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$3;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_42

    :cond_41
    const/4 p1, 0x0

    :goto_42
    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$3$onItemClickListener$2;

    invoke-direct {v1, p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$3$onItemClickListener$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, p1, v1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->access$loadResultImageView(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :goto_4a
    return-void
.end method
