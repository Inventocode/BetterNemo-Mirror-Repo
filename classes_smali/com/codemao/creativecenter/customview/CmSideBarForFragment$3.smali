.class Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "CmSideBarForFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 6

    .line 187
    check-cast p1, Landroidx/databinding/ObservableField;

    .line 188
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->access$200(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 189
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->access$200(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 190
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->access$200(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->access$200(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->topview:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 192
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->access$200(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    invoke-virtual {p2, v2}, Lcom/codemao/creativecenter/customview/CmSwitchView;->setRun(Z)V

    .line 193
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->access$200(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->bottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_bg_4f218e_12dp:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 194
    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_98

    if-eqz p1, :cond_8c

    if-eq p1, v1, :cond_6a

    goto :goto_b0

    .line 205
    :cond_6a
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->access$200(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->topview:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->access$200(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 207
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->access$200(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b0

    .line 202
    :cond_8c
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->access$200(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->topview:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_b0

    .line 196
    :cond_98
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->access$200(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->setRun(Z)V

    .line 197
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBarForFragment$3;->this$0:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBarForFragment;->access$200(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->bottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget p2, Lcom/codemao/creativecenter/R$drawable;->creative_bg_221a46_12dp:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :goto_b0
    return-void
.end method
