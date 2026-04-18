.class final Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$onBindData$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AiImageGenerateStyleAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;)V
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
.field final synthetic $item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;I)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$onBindData$1$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$onBindData$1$1;->$item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    iput p3, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$onBindData$1$1;->$position:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 37
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$onBindData$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 6

    if-eqz p1, :cond_38

    .line 39
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$onBindData$1$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;->getDataList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    add-int/2addr v1, v3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    .line 40
    invoke-virtual {v2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getSelect()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 41
    invoke-virtual {v2, v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->setSelect(Z)V

    .line 42
    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$onBindData$1$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_e

    .line 45
    :cond_2b
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$onBindData$1$1;->$item:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    invoke-virtual {p1, v3}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->setSelect(Z)V

    .line 46
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$onBindData$1$1;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;

    iget v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$onBindData$1$1;->$position:I

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_38
    return-void
.end method
