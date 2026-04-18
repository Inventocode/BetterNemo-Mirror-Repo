.class public abstract Lcom/ljwx/recyclerview/databinding/HolderBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "HolderBinding.java"


# instance fields
.field public final center:Landroid/widget/TextView;

.field protected mItem:Ljava/lang/String;

.field public final tvLeft:Landroid/widget/TextView;

.field public final tvRight:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 7

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 36
    iput-object p4, p0, Lcom/ljwx/recyclerview/databinding/HolderBinding;->center:Landroid/widget/TextView;

    .line 37
    iput-object p5, p0, Lcom/ljwx/recyclerview/databinding/HolderBinding;->tvLeft:Landroid/widget/TextView;

    .line 38
    iput-object p6, p0, Lcom/ljwx/recyclerview/databinding/HolderBinding;->tvRight:Landroid/widget/TextView;

    return-void
.end method
