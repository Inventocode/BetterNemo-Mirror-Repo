.class public final Lcom/codemao/nemo/setting/adapter/UserAvatarOfficialDelegate;
.super Ljava/lang/Object;
.source "UserAvatarOfficialDelegate.kt"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
            ">;I)V"
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 29
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;

    :cond_8
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01fb

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 21
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 22
    :goto_a
    instance-of p2, p1, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;

    const/4 v0, 0x0

    if-eqz p2, :cond_19

    .line 23
    check-cast p1, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;

    invoke-virtual {p1}, Lcom/codemao/nemo/setting/bean/UserAvatarTitleData;->getMItemType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method
