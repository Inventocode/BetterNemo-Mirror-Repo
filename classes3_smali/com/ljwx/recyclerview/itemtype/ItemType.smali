.class public interface abstract Lcom/ljwx/recyclerview/itemtype/ItemType;
.super Ljava/lang/Object;
.source "ItemType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        "Holder:",
        "Lcom/ljwx/recyclerview/holder/ItemHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract bind(Lcom/ljwx/recyclerview/holder/ItemHolder;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THolder;TItem;)V"
        }
    .end annotation
.end method

.method public abstract create(Landroid/view/ViewGroup;)Lcom/ljwx/recyclerview/holder/ItemHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")THolder;"
        }
    .end annotation
.end method

.method public abstract matches(Ljava/lang/Object;)Z
.end method
