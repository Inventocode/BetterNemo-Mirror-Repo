.class public final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "VCSAssistInfoPop.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final space:I

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initRecyclerView$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 306
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getCtx()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativestore/CreativeStoreUtils;->ispad:Z

    if-eqz v0, :cond_14

    const/high16 v0, 0x41000000  # 8.0f

    goto :goto_16

    :cond_14
    const/high16 v0, 0x40400000  # 3.0f

    :goto_16
    invoke-static {p1, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initRecyclerView$1;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_1f

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    goto :goto_20

    :cond_1f
    const/4 p2, -0x1

    :goto_20
    if-ltz p2, :cond_35

    .line 314
    iget-object p3, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initRecyclerView$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p3}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAssistorInfos$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_2f

    goto :goto_35

    .line 317
    :cond_2f
    iget p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initRecyclerView$1;->space:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_35
    :goto_35
    return-void
.end method
