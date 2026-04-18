.class public abstract Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentMineNemoBinding.java"


# instance fields
.field public final bindPhone:Lcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final rootPlaceHolder:Landroid/view/View;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .registers 7

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 34
    iput-object p4, p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;->bindPhone:Lcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;

    .line 35
    iput-object p5, p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    iput-object p6, p0, Lcom/codemao/nemo/databinding/FragmentMineNemoBinding;->rootPlaceHolder:Landroid/view/View;

    return-void
.end method
