.class public abstract Lcom/codemao/nemo/databinding/FragmentMineKnContentBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentMineKnContentBinding.java"


# instance fields
.field public final bindPhone:Lcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 6

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 26
    iput-object p4, p0, Lcom/codemao/nemo/databinding/FragmentMineKnContentBinding;->bindPhone:Lcom/codemao/nemo/databinding/MineBindPhoneTipsBinding;

    .line 27
    iput-object p5, p0, Lcom/codemao/nemo/databinding/FragmentMineKnContentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
