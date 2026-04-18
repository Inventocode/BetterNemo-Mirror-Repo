.class public Lcom/ethanhua/skeleton/Skeleton;
.super Ljava/lang/Object;
.source "Skeleton.java"


# direct methods
.method public static bind(Landroidx/recyclerview/widget/RecyclerView;)Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;
    .registers 2

    .line 13
    new-instance v0, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;

    invoke-direct {v0, p0}, Lcom/ethanhua/skeleton/RecyclerViewSkeletonScreen$Builder;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v0
.end method

.method public static bind(Landroid/view/View;)Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;
    .registers 2

    .line 17
    new-instance v0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;

    invoke-direct {v0, p0}, Lcom/ethanhua/skeleton/ViewSkeletonScreen$Builder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
