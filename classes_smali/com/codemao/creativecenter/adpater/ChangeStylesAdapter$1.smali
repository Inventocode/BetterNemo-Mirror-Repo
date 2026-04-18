.class Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;
.super Ljava/lang/Object;
.source "ChangeStylesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

.field final synthetic val$position:I


# direct methods
.method public static synthetic $r8$lambda$8DcKZfNs6JpyDZyqhmcQFN9247A(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->lambda$onClick$0()V

    return-void
.end method

.method constructor <init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;I)V
    .registers 3

    .line 128
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    iput p2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0()V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 143
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$400(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$300(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const-wide/16 v0, 0x3e8

    .line 131
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 134
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$000(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v2}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v3}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v3

    iget-boolean v3, v3, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->softCopyStyle(Ljava/lang/String;Ljava/lang/String;I)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v1

    .line 136
    iput-boolean v4, v1, Lcom/codemao/creativestore/bean/StyleVO;->isFromCopy:Z

    .line 137
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v2}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$000(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->val$position:I

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 138
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    iget v3, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->val$position:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$302(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;I)I

    .line 139
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v2}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v3}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$000(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v5}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$300(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    iget v3, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->val$position:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 141
    new-instance v2, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_ac

    .line 147
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v3, "背景造型页面"

    const-string/jumbo v4, "背景-复制"

    invoke-virtual {p1, v3, v4, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 148
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v2}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->copyBgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d0

    .line 150
    :cond_ac
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v3, "角色造型页面"

    const-string/jumbo v4, "造型-复制"

    invoke-virtual {p1, v3, v4, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 151
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v2}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->copyActorStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_d0
    return-void
.end method
