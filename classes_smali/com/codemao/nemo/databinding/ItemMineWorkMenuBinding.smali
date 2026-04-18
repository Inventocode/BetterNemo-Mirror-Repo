.class public abstract Lcom/codemao/nemo/databinding/ItemMineWorkMenuBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemMineWorkMenuBinding.java"


# instance fields
.field protected mItem:Lcom/codemao/nemo/bean/MineWorkMenuItem;

.field public final menuItem:Lcom/ljwx/baseview/text/DrawableTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/ljwx/baseview/text/DrawableTextView;)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 28
    iput-object p4, p0, Lcom/codemao/nemo/databinding/ItemMineWorkMenuBinding;->menuItem:Lcom/ljwx/baseview/text/DrawableTextView;

    return-void
.end method
