.class Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;
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

.field final synthetic val$binding:Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;

.field final synthetic val$changeEdit:Z

.field final synthetic val$position:I


# direct methods
.method public static synthetic $r8$lambda$17AoBs2RfzglBN191baB-dKO4jU(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->lambda$onClick$0()V

    return-void
.end method

.method constructor <init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;ZLcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;I)V
    .registers 5

    .line 157
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    iput-boolean p2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->val$changeEdit:Z

    iput-object p3, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->val$binding:Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;

    iput p4, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0()V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 184
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$400(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$300(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const-wide/16 v0, 0x3e8

    .line 161
    :try_start_2
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 164
    :cond_9
    iget-boolean v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->val$changeEdit:Z

    if-eqz v0, :cond_15

    .line 165
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->val$binding:Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivEdit:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->callOnClick()Z

    return-void

    .line 168
    :cond_15
    iget v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->val$position:I

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$000(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2e

    .line 169
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    iget v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->val$position:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$302(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;I)I

    .line 172
    :cond_2e
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$300(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)I

    move-result v0

    if-gez v0, :cond_37

    return-void

    .line 174
    :cond_37
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$000(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->val$position:I

    if-le v0, v1, :cond_dd

    .line 175
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$000(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->addToDeleteStyle(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v2}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$000(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v3}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$300(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    iget v2, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 182
    new-instance v1, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_b8

    .line 189
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v2, "背景造型页面"

    const-string/jumbo v3, "背景-删除"

    invoke-virtual {p1, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 190
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->delBgStyle(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_dd

    .line 192
    :cond_b8
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string/jumbo v2, "角色造型页面"

    const-string/jumbo v3, "造型-删除"

    invoke-virtual {p1, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 193
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$200(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;->access$100(Lcom/codemao/creativecenter/adpater/ChangeStylesAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->delActorStyle(Ljava/util/List;Ljava/lang/String;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_dc} :catch_dd

    nop

    :catch_dd
    :cond_dd
    :goto_dd
    return-void
.end method
