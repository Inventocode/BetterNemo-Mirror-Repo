.class public abstract Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeViewPlayMusicBinding.java"


# instance fields
.field public final ivPlay:Landroid/widget/ImageView;

.field public final ivStop:Landroid/widget/ImageView;

.field public final progress:Lcom/codemao/creativecenter/customview/CircleProgressView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/codemao/creativecenter/customview/CircleProgressView;)V
    .registers 7

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 30
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;->ivPlay:Landroid/widget/ImageView;

    .line 31
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;->ivStop:Landroid/widget/ImageView;

    .line 32
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeViewPlayMusicBinding;->progress:Lcom/codemao/creativecenter/customview/CircleProgressView;

    return-void
.end method
