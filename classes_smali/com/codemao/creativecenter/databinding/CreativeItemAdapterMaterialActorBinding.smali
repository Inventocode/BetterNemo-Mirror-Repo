.class public abstract Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeItemAdapterMaterialActorBinding.java"


# instance fields
.field public final clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final collectionDownloadingBg:Landroid/view/View;

.field public final ivAnim:Lcom/codemao/creativecenter/customview/AnimImageView;

.field public final ivChoose:Landroid/widget/ImageView;

.field public final ivCollectChoose:Landroid/widget/ImageView;

.field protected mData:Lcom/codemao/creativestore/bean/MaterialActorBean;

.field protected mIsPad:Ljava/lang/Boolean;

.field public final tvName:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcom/codemao/creativecenter/customview/AnimImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 10

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 50
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->collectionDownloadingBg:Landroid/view/View;

    .line 52
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivAnim:Lcom/codemao/creativecenter/customview/AnimImageView;

    .line 53
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivChoose:Landroid/widget/ImageView;

    .line 54
    iput-object p8, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivCollectChoose:Landroid/widget/ImageView;

    .line 55
    iput-object p9, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->tvName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
.end method

.method public abstract setIsPad(Ljava/lang/Boolean;)V
.end method
