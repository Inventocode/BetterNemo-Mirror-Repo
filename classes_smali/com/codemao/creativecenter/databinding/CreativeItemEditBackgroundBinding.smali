.class public abstract Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeItemEditBackgroundBinding.java"


# instance fields
.field public final clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivCollect:Landroid/widget/ImageView;

.field public final ivDel:Landroid/widget/ImageView;

.field public final ivMore:Landroid/widget/ImageView;

.field public final ivProgress:Landroid/widget/ProgressBar;

.field public final ivShadow:Landroid/widget/ImageView;

.field public final ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

.field public final ivVisible2:Landroid/widget/ImageView;

.field protected mActor:Lcom/codemao/creativestore/bean/ActorVO;

.field protected mIsLogin:Ljava/lang/Boolean;

.field protected mObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

.field public final moveViewBg:Landroid/view/View;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;)V
    .registers 15

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 73
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 75
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivCollect:Landroid/widget/ImageView;

    .line 76
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivDel:Landroid/widget/ImageView;

    .line 77
    iput-object p8, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivMore:Landroid/widget/ImageView;

    .line 78
    iput-object p9, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivProgress:Landroid/widget/ProgressBar;

    .line 79
    iput-object p10, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShadow:Landroid/widget/ImageView;

    .line 80
    iput-object p11, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    .line 81
    iput-object p12, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivVisible2:Landroid/widget/ImageView;

    .line 82
    iput-object p13, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->moveViewBg:Landroid/view/View;

    .line 83
    iput-object p14, p0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setActor(Lcom/codemao/creativestore/bean/ActorVO;)V
.end method

.method public abstract setIsLogin(Ljava/lang/Boolean;)V
.end method

.method public abstract setObserver(Lcom/codemao/creativecenter/callback/ObserverAction;)V
.end method
