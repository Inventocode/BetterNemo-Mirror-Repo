.class public abstract Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeViewFullscreenBottomBinding.java"


# instance fields
.field public final ivCenterP:Landroid/widget/ImageView;

.field public final ivGrids:Landroid/widget/ImageView;

.field public final ivOritation:Landroid/widget/ImageView;

.field public final ivRevert:Landroid/widget/ImageView;

.field public final ivUpload:Landroid/widget/ImageView;

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
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 15

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 73
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivCenterP:Landroid/widget/ImageView;

    .line 74
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivGrids:Landroid/widget/ImageView;

    .line 75
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivOritation:Landroid/widget/ImageView;

    .line 76
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivRevert:Landroid/widget/ImageView;

    .line 77
    iput-object p8, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->ivUpload:Landroid/widget/ImageView;

    .line 78
    iput-object p9, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->llFunc:Landroid/widget/LinearLayout;

    .line 79
    iput-object p10, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->run:Landroid/widget/ImageView;

    .line 80
    iput-object p11, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvRotate:Landroid/widget/TextView;

    .line 81
    iput-object p12, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvScale:Landroid/widget/TextView;

    .line 82
    iput-object p13, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranX:Landroid/widget/TextView;

    .line 83
    iput-object p14, p0, Lcom/codemao/creativecenter/databinding/CreativeViewFullscreenBottomBinding;->tvTranY:Landroid/widget/TextView;

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
