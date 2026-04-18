.class Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "CreateRoleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)V
    .registers 3

    .line 696
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 5

    .line 699
    sget v0, Lcom/codemao/creativecenter/BR;->current_style_id:I

    if-ne p2, v0, :cond_64

    .line 700
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->access$1400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz p1, :cond_41

    .line 701
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->access$1400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object v0, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1500(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v1, 0x40800000  # 4.0f

    invoke-static {p2, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    invoke-static {p1, v0, p2}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->loadConerCenterCrop(Ljava/lang/String;Landroid/widget/ImageView;I)V

    goto/16 :goto_14c

    .line 703
    :cond_41
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->access$1400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_14c

    .line 705
    :cond_64
    sget v0, Lcom/codemao/creativecenter/BR;->editStatus:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_e0

    .line 706
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$500(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    if-eqz p1, :cond_9a

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$500(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->access$1400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p2

    if-eq p1, p2, :cond_9a

    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$500(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isEditStatus:Z

    if-eqz p1, :cond_9a

    .line 707
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$500(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setEditStatus(Z)V

    .line 710
    :cond_9a
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->access$1400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isEditStatus:Z

    if-eqz p1, :cond_c0

    .line 711
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p2, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->access$1400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$502(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativestore/bean/ActorVO;)Lcom/codemao/creativestore/bean/ActorVO;

    .line 712
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p2, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$500(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1600(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;Lcom/codemao/creativestore/bean/ActorVO;)V

    goto/16 :goto_14c

    .line 714
    :cond_c0
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$502(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativestore/bean/ActorVO;)Lcom/codemao/creativestore/bean/ActorVO;

    .line 715
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p2, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->access$1400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object v1, v1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$700(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Z

    move-result v1

    invoke-static {p2, v0, p1, v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1700(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;Lcom/codemao/creativestore/bean/ActorVO;Z)V

    goto :goto_14c

    .line 717
    :cond_e0
    sget v0, Lcom/codemao/creativecenter/BR;->selected:I

    if-ne p2, v0, :cond_130

    .line 718
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    iget-boolean v0, p1, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 720
    iget-boolean p2, p1, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    if-eqz p2, :cond_102

    .line 721
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object v0, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-static {v0, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$902(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;I)I

    .line 723
    :cond_102
    :goto_102
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v1, p2, :cond_124

    .line 724
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-boolean v0, p1, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_102

    .line 726
    :cond_124
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindText(Landroid/widget/TextView;Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_14c

    .line 727
    :cond_130
    sget v0, Lcom/codemao/creativecenter/BR;->visible:I

    if-ne p2, v0, :cond_14c

    .line 729
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivVisible2:Landroid/widget/ImageView;

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindDisplay(Landroid/widget/ImageView;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 730
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/dbfunc/BindAdapters;->bindText(Landroid/widget/TextView;Lcom/codemao/creativestore/bean/ActorVO;)V

    :cond_14c
    :goto_14c
    return-void
.end method
