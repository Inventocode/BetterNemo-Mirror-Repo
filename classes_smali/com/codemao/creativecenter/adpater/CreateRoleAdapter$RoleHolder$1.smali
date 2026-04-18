.class Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "CreateRoleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)V
    .registers 3

    .line 579
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 5

    .line 582
    sget v0, Lcom/codemao/creativecenter/BR;->current_style_id:I

    if-ne p2, v0, :cond_56

    .line 583
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->access$300(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz p1, :cond_33

    .line 584
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->access$300(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShow:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-static {p1, p2, v0}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->loadConerCenterCrop(Ljava/lang/String;Landroid/widget/ImageView;I)V

    goto/16 :goto_186

    .line 586
    :cond_33
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->access$300(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShow:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_186

    .line 589
    :cond_56
    sget v0, Lcom/codemao/creativecenter/BR;->editStatus:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_d3

    .line 590
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$500(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    if-eqz p1, :cond_8c

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$500(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->access$300(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p2

    if-eq p1, p2, :cond_8c

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$500(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isEditStatus:Z

    if-eqz p1, :cond_8c

    .line 591
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$500(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setEditStatus(Z)V

    .line 594
    :cond_8c
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->access$300(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isEditStatus:Z

    if-eqz p1, :cond_b2

    .line 595
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p2, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->access$300(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$502(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativestore/bean/ActorVO;)Lcom/codemao/creativestore/bean/ActorVO;

    .line 596
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p2, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->access$300(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$600(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;Lcom/codemao/creativestore/bean/ActorVO;)V

    goto/16 :goto_186

    .line 598
    :cond_b2
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$502(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativestore/bean/ActorVO;)Lcom/codemao/creativestore/bean/ActorVO;

    .line 599
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p2, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->access$300(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object v1, v1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$700(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Z

    move-result v1

    invoke-static {p2, v0, p1, v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$800(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;Lcom/codemao/creativestore/bean/ActorVO;Z)V

    goto/16 :goto_186

    .line 601
    :cond_d3
    sget v0, Lcom/codemao/creativecenter/BR;->selected:I

    if-ne p2, v0, :cond_12e

    .line 602
    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    iget-boolean p2, p1, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    if-eqz p2, :cond_e8

    .line 603
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object v0, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-static {v0, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$902(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;I)I

    .line 607
    :cond_e8
    :goto_e8
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v1, p2, :cond_10a

    .line 608
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-boolean v0, p1, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    .line 610
    :cond_10a
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLockStatus:Landroid/widget/ImageView;

    iget-boolean v0, p1, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 611
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvTitle:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindText(Landroid/widget/TextView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 612
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvDes:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindText(Landroid/widget/TextView;Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_186

    .line 614
    :cond_12e
    sget v0, Lcom/codemao/creativecenter/BR;->x:I

    if-eq p2, v0, :cond_179

    sget v0, Lcom/codemao/creativecenter/BR;->y:I

    if-eq p2, v0, :cond_179

    sget v0, Lcom/codemao/creativecenter/BR;->rotation:I

    if-eq p2, v0, :cond_179

    sget v0, Lcom/codemao/creativecenter/BR;->scale:I

    if-ne p2, v0, :cond_13f

    goto :goto_179

    .line 616
    :cond_13f
    sget v0, Lcom/codemao/creativecenter/BR;->visible:I

    if-ne p2, v0, :cond_167

    .line 617
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindDisplay(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 618
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvTitle:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindText(Landroid/widget/TextView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 619
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvDes:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindText(Landroid/widget/TextView;Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_186

    .line 620
    :cond_167
    sget v0, Lcom/codemao/creativecenter/BR;->locked:I

    if-ne p2, v0, :cond_186

    .line 621
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindlock(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_186

    .line 615
    :cond_179
    :goto_179
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->tvDes:Landroid/widget/TextView;

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindActor(Landroid/widget/TextView;Lcom/codemao/creativestore/bean/ActorVO;)V

    :cond_186
    :goto_186
    return-void
.end method
