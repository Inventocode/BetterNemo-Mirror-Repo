.class public abstract Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeLayoutSidebarForFragmentBinding.java"


# instance fields
.field public final bottom:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final flCurrentActor:Landroid/widget/ImageView;

.field public final ivCurrentActor:Landroid/widget/ImageView;

.field public final ivScreen:Landroid/widget/ImageView;

.field protected mSidebar:Lcom/codemao/creativecenter/customview/CmSideBarForFragment;

.field protected mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

.field public final run:Landroid/widget/ImageView;

.field public final sideRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

.field public final topview:Landroid/widget/FrameLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/codemao/creativecenter/customview/CmSwitchView;Landroid/widget/FrameLayout;)V
    .registers 12

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 58
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->bottom:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->flCurrentActor:Landroid/widget/ImageView;

    .line 60
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivCurrentActor:Landroid/widget/ImageView;

    .line 61
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->ivScreen:Landroid/widget/ImageView;

    .line 62
    iput-object p8, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->run:Landroid/widget/ImageView;

    .line 63
    iput-object p9, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->sideRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 64
    iput-object p10, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    .line 65
    iput-object p11, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarForFragmentBinding;->topview:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public abstract setSidebar(Lcom/codemao/creativecenter/customview/CmSideBarForFragment;)V
.end method

.method public abstract setVm(Lcom/codemao/creativecenter/vm/SidebarVM;)V
.end method
