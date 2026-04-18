.class public abstract Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeItemAdapterThemeDetailBinding.java"


# instance fields
.field public final clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivAnim:Landroid/widget/ImageView;

.field protected mData:Lcom/codemao/creativestore/bean/ThemeMaterialDetail;

.field protected mIsPad:Ljava/lang/Boolean;

.field public final tvName:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 7

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 39
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->ivAnim:Landroid/widget/ImageView;

    .line 41
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;->tvName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public abstract setData(Lcom/codemao/creativestore/bean/ThemeMaterialDetail;)V
.end method

.method public abstract setIsPad(Ljava/lang/Boolean;)V
.end method
