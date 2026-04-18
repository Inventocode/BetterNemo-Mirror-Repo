.class Lcom/codemao/creativecenter/pop/SelectSoundPop$3;
.super Ljava/lang/Object;
.source "SelectSoundPop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/SelectSoundPop;->addSounds(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/SelectSoundPop;

.field final synthetic val$actorBeans:Ljava/util/List;

.field final synthetic val$changeIndex:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/SelectSoundPop;Ljava/util/List;I)V
    .registers 4

    .line 129
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$3;->this$0:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    iput-object p2, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$3;->val$actorBeans:Ljava/util/List;

    iput p3, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$3;->val$changeIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 132
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$3;->val$actorBeans:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_17

    .line 133
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$3;->this$0:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/SelectSoundPop;->access$000(Lcom/codemao/creativecenter/pop/SelectSoundPop;)Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    move-result-object v0

    iget v2, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$3;->val$changeIndex:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_33

    .line 135
    :cond_17
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$3;->this$0:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/SelectSoundPop;->access$000(Lcom/codemao/creativecenter/pop/SelectSoundPop;)Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    move-result-object v0

    iget v2, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$3;->val$changeIndex:I

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$3;->this$0:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    invoke-static {v3}, Lcom/codemao/creativecenter/pop/SelectSoundPop;->access$000(Lcom/codemao/creativecenter/pop/SelectSoundPop;)Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->getSounds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$3;->val$changeIndex:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 138
    :goto_33
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$3;->this$0:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/SelectSoundPop;->access$000(Lcom/codemao/creativecenter/pop/SelectSoundPop;)Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->getSounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 139
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$3;->this$0:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    invoke-static {v1}, Lcom/codemao/creativecenter/pop/SelectSoundPop;->access$000(Lcom/codemao/creativecenter/pop/SelectSoundPop;)Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->setCurrentIndex(I)V

    .line 140
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$3;->this$0:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    invoke-static {v1}, Lcom/codemao/creativecenter/pop/SelectSoundPop;->access$100(Lcom/codemao/creativecenter/pop/SelectSoundPop;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 142
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    :cond_5a
    return-void
.end method
