.class public abstract Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeViewFullscreenLeftBinding.java"


# instance fields
.field public final ivCenterP:Landroid/widget/ImageView;

.field public final ivGrids:Landroid/widget/ImageView;

.field public final ivOritation:Landroid/widget/ImageView;

.field public final ivRevert:Landroid/widget/ImageView;

.field public final ivUpload:Landroid/widget/ImageView;

.field public final leftToolsFramelayout:Landroid/widget/FrameLayout;

.field public final llFunc:Landroid/widget/LinearLayout;

.field protected mActor:Lcom/codemao/creativestore/bean/ActorVO;

.field protected mDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

.field protected mIsPadMode:Ljava/lang/Boolean;

.field protected mSelf:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

.field public final run:Landroid/widget/ImageView;

.field public final tvRotate:Landroid/widget/TextView;

.field public final tvScale:Landroid/widget/TextView;

.field public final tvTranX:Landroid/widget/TextView;

.field public final tvTranY:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 19

    move-object v0, p0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 81
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivCenterP:Landroid/widget/ImageView;

    move-object v1, p5

    .line 82
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivGrids:Landroid/widget/ImageView;

    move-object v1, p6

    .line 83
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivOritation:Landroid/widget/ImageView;

    move-object v1, p7

    .line 84
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivRevert:Landroid/widget/ImageView;

    move-object v1, p8

    .line 85
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->ivUpload:Landroid/widget/ImageView;

    move-object v1, p9

    .line 86
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->leftToolsFramelayout:Landroid/widget/FrameLayout;

    move-object v1, p11

    .line 88
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->llFunc:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 89
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->run:Landroid/widget/ImageView;

    move-object v1, p13

    .line 90
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvRotate:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 91
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvScale:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 92
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranX:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 93
    iput-object v1, v0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenLeftBinding;->tvTranY:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setActor(Lcom/codemao/creativestore/bean/ActorVO;)V
.end method

.method public abstract setDashboardItemVM(Lcom/codemao/creativecenter/vm/StageDashboardItemVM;)V
.end method

.method public abstract setIsPadMode(Ljava/lang/Boolean;)V
.end method

.method public abstract setSelf(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)V
.end method
