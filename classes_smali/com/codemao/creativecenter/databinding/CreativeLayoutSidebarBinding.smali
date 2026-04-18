.class public abstract Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeLayoutSidebarBinding.java"


# instance fields
.field public final back:Landroid/widget/ImageView;

.field public final blockBack:Landroid/widget/ImageView;

.field public final blockRestore:Landroid/widget/ImageView;

.field public final flCurrentActor:Landroid/widget/ImageView;

.field public final ivCurrentActor:Landroid/widget/ImageView;

.field public final ivScreen:Landroid/widget/ImageView;

.field public final line:Landroid/view/View;

.field protected mSidebar:Lcom/codemao/creativecenter/customview/CmSideBar;

.field protected mVm:Lcom/codemao/creativecenter/vm/SidebarVM;

.field public final menu:Landroid/widget/ImageView;

.field public final restore:Landroid/widget/ImageView;

.field public final run:Landroid/widget/ImageView;

.field public final sideBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

.field public final upload:Landroid/widget/ImageView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/codemao/creativecenter/customview/CmSwitchView;Landroid/widget/ImageView;)V
    .registers 19

    move-object v0, p0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 72
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->back:Landroid/widget/ImageView;

    move-object v1, p5

    .line 73
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockBack:Landroid/widget/ImageView;

    move-object v1, p6

    .line 74
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockRestore:Landroid/widget/ImageView;

    move-object v1, p7

    .line 75
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->flCurrentActor:Landroid/widget/ImageView;

    move-object v1, p8

    .line 76
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    move-object v1, p9

    .line 77
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivScreen:Landroid/widget/ImageView;

    move-object v1, p10

    .line 78
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->line:Landroid/view/View;

    move-object v1, p11

    .line 79
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->menu:Landroid/widget/ImageView;

    move-object v1, p12

    .line 80
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->restore:Landroid/widget/ImageView;

    move-object v1, p13

    .line 81
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->run:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 82
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sideBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p15

    .line 83
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    move-object/from16 v1, p16

    .line 84
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->upload:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public abstract setSidebar(Lcom/codemao/creativecenter/customview/CmSideBar;)V
.end method

.method public abstract setVm(Lcom/codemao/creativecenter/vm/SidebarVM;)V
.end method
