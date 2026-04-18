.class public abstract Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeItemAdapterMaterialBackgroundBinding.java"


# instance fields
.field public final clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final collectionDownloadingBg:Landroid/view/View;

.field public final ivAnim:Landroid/widget/ImageView;

.field public final ivChoose:Landroid/widget/ImageView;

.field public final ivCollectChoose:Landroid/widget/ImageView;

.field protected mData:Lcom/codemao/creativestore/bean/MaterialActorBean;

.field protected mIsPad:Ljava/lang/Boolean;

.field public final tvName:Landroid/widget/TextView;

.field public final vTextBg:Landroid/view/View;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V
    .registers 11

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 52
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->collectionDownloadingBg:Landroid/view/View;

    .line 54
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivAnim:Landroid/widget/ImageView;

    .line 55
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivChoose:Landroid/widget/ImageView;

    .line 56
    iput-object p8, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivCollectChoose:Landroid/widget/ImageView;

    .line 57
    iput-object p9, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->tvName:Landroid/widget/TextView;

    .line 58
    iput-object p10, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->vTextBg:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public abstract setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
.end method

.method public abstract setIsPad(Ljava/lang/Boolean;)V
.end method
