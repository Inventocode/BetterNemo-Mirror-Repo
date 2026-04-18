.class Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;
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

    .line 239
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const-wide/16 v0, 0x3e8

    .line 242
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 245
    :cond_9
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_13

    return-void

    .line 249
    :cond_13
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v1, v1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$100(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3a

    .line 250
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v1, v1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$100(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$402(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;I)I

    goto :goto_41

    .line 252
    :cond_3a
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v1, v1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v1, p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$402(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;I)I

    .line 255
    :goto_41
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v1, v1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$400(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)I

    move-result v1

    if-gez v1, :cond_4c

    return-void

    .line 256
    :cond_4c
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v1, v1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$100(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_8a

    .line 257
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v1, v1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$100(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/SoundVO;

    .line 258
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v2, v2, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v2}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$500(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativecenter/utils/Mp3PlayController;

    move-result-object v2

    iget-object v2, v2, Lcom/codemao/creativecenter/utils/Mp3PlayController;->playBean:Ljava/lang/Object;

    if-ne v2, v1, :cond_7f

    .line 259
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v2, v2, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v2}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$500(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativecenter/utils/Mp3PlayController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->stop(Ljava/lang/Object;)V

    .line 261
    :cond_7f
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v2, v2, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v2}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$000(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->removeSound(Lcom/codemao/creativestore/bean/SoundVO;)V

    .line 263
    :cond_8a
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object v1, v1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 264
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$100(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_a7

    .line 265
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$402(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;I)I

    return-void

    .line 269
    :cond_a7
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;->this$1:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
