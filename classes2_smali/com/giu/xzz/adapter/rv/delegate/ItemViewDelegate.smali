.class public interface abstract Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;
.super Ljava/lang/Object;
.source "ItemViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation
.end method

.method public abstract getItemViewLayoutId()I
.end method

.method public abstract isForViewType(Ljava/util/List;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)Z"
        }
    .end annotation
.end method
