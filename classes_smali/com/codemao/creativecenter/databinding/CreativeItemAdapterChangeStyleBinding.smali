.class public abstract Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CreativeItemAdapterChangeStyleBinding.java"


# instance fields
.field public final clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final ivCopy:Landroid/widget/ImageView;

.field public final ivDel:Landroid/widget/ImageView;

.field public final ivEdit:Landroid/widget/ImageView;

.field public final ivShow:Landroid/widget/ImageView;

.field protected mIsSelect:Ljava/lang/Boolean;

.field public final tvPosition:Landroid/widget/TextView;

.field public final viewBg:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 11

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 48
    iput-object p4, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    iput-object p5, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivCopy:Landroid/widget/ImageView;

    .line 50
    iput-object p6, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivDel:Landroid/widget/ImageView;

    .line 51
    iput-object p7, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivEdit:Landroid/widget/ImageView;

    .line 52
    iput-object p8, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->ivShow:Landroid/widget/ImageView;

    .line 53
    iput-object p9, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->tvPosition:Landroid/widget/TextView;

    .line 54
    iput-object p10, p0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeStyleBinding;->viewBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public abstract setIsSelect(Ljava/lang/Boolean;)V
.end method
