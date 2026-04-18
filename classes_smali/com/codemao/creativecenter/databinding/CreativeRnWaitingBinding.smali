.class public abstract Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeRnWaitingBinding.java"


# instance fields
.field public final ivDownloadCloudBack:Landroid/widget/ImageView;

.field public final ivLoading:Lcom/codemao/creativecenter/customview/FrameImageView;

.field public final tvDownloadCloudRetry:Landroid/widget/TextView;

.field public final tvGoToWork:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Lcom/codemao/creativecenter/customview/FrameImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 8

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 35
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->ivDownloadCloudBack:Landroid/widget/ImageView;

    .line 36
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->ivLoading:Lcom/codemao/creativecenter/customview/FrameImageView;

    .line 37
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->tvDownloadCloudRetry:Landroid/widget/TextView;

    .line 38
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeRnWaitingBinding;->tvGoToWork:Landroid/widget/TextView;

    return-void
.end method
