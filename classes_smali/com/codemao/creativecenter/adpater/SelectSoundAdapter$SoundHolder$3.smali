.class Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$3;
.super Ljava/lang/Object;
.source "SelectSoundAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->bindData(Lcom/codemao/creativestore/bean/SoundVO;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 275
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-gez p1, :cond_9

    return-void

    .line 279
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$402(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;I)I

    .line 280
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$400(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)I

    move-result v0

    if-gez v0, :cond_1d

    return-void

    .line 281
    :cond_1d
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$100(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/SoundVO;

    .line 282
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$500(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativecenter/utils/Mp3PlayController;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    if-ne v0, p1, :cond_42

    .line 283
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$500(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativecenter/utils/Mp3PlayController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->stop(Ljava/lang/Object;)V

    .line 284
    :cond_42
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v1, v1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$400(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->copySound(Lcom/codemao/creativestore/bean/SoundVO;I)V

    .line 288
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$3;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
