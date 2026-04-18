.class public abstract Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeItemAdapterMaterialLoadingBinding.java"


# instance fields
.field public final clNotice:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivCloudDownload:Landroid/widget/ImageView;

.field public final ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

.field public final ivRetry:Landroid/widget/ImageView;

.field protected mIsPad:Ljava/lang/Boolean;

.field public final tvDownloadCloudCollect:Landroid/widget/TextView;

.field public final tvName:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 10

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 47
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->clNotice:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivCloudDownload:Landroid/widget/ImageView;

    .line 49
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    .line 50
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivRetry:Landroid/widget/ImageView;

    .line 51
    iput-object p8, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvDownloadCloudCollect:Landroid/widget/TextView;

    .line 52
    iput-object p9, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setIsPad(Ljava/lang/Boolean;)V
.end method
