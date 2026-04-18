.class public Lcom/codemao/nemo/adapter/UserDynamicOtherDelegate;
.super Ljava/lang/Object;
.source "UserDynamicOtherDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/UserDynamicInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
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
            "Lcom/codemao/nemo/bean/UserDynamicInfo;",
            ">;I)V"
        }
    .end annotation

    const p2, 0x7f0a0661

    .line 51
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01a7

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/UserDynamicInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 46
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATTENTION_USER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COMMENT_WORK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RE_CREATE_WORK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIKE_WORK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COLLECTION_WORK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PUBLISH_WORK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/UserDynamicInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserDynamicInfo;->getDynamic_type()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UPDATE_WORK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    const/4 p1, 0x1

    goto :goto_81

    :cond_80
    const/4 p1, 0x0

    :goto_81
    return p1
.end method
