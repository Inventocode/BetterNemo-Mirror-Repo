.class public abstract Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MaterialDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field protected mBinding:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;Landroidx/databinding/ViewDataBinding;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 193
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 195
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-void
.end method


# virtual methods
.method public getBinding()Landroidx/databinding/ViewDataBinding;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    return-object v0
.end method
