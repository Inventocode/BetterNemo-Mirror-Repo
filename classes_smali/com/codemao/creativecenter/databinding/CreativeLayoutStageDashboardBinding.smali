.class public abstract Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeLayoutStageDashboardBinding.java"


# instance fields
.field public final ivCenterP:Landroid/widget/ImageView;

.field public final ivGrids:Landroid/widget/ImageView;

.field public final ivOritation:Landroid/widget/ImageView;

.field public final ivRevert:Landroid/widget/ImageView;

.field public final llFunc:Landroid/widget/LinearLayout;

.field protected mActor:Lcom/codemao/creativestore/bean/ActorVO;

.field protected mDashboardItemVM:Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

.field protected mIsPadMode:Ljava/lang/Boolean;

.field protected mSelf:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

.field public final tvRotate:Landroid/widget/TextView;

.field public final tvScale:Landroid/widget/TextView;

.field public final tvTranX:Landroid/widget/TextView;

.field public final tvTranY:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 13

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 67
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivCenterP:Landroid/widget/ImageView;

    .line 68
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivGrids:Landroid/widget/ImageView;

    .line 69
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivOritation:Landroid/widget/ImageView;

    .line 70
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->ivRevert:Landroid/widget/ImageView;

    .line 71
    iput-object p8, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->llFunc:Landroid/widget/LinearLayout;

    .line 72
    iput-object p9, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvRotate:Landroid/widget/TextView;

    .line 73
    iput-object p10, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvScale:Landroid/widget/TextView;

    .line 74
    iput-object p11, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranX:Landroid/widget/TextView;

    .line 75
    iput-object p12, p0, Lcom/codemao/creativecenter/databinding/CreativeLayoutStageDashboardBinding;->tvTranY:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setActor(Lcom/codemao/creativestore/bean/ActorVO;)V
.end method

.method public abstract setDashboardItemVM(Lcom/codemao/creativecenter/vm/StageDashboardItemVM;)V
.end method

.method public abstract setIsPadMode(Ljava/lang/Boolean;)V
.end method

.method public abstract setSelf(Lcom/codemao/creativecenter/customview/CmStageDashboardView;)V
.end method
