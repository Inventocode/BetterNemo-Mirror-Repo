.class public final Lcom/codemao/nemo/setting/adapter/UserAvatarFooterDelegate;
.super Ljava/lang/Object;
.source "UserAvatarFooterDelegate.kt"

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


# instance fields
.field private final isPad:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/setting/adapter/UserAvatarFooterDelegate;->isPad:Z

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

    if-eqz p1, :cond_17

    .line 27
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_17

    .line 28
    iget-boolean p2, p0, Lcom/codemao/nemo/setting/adapter/UserAvatarFooterDelegate;->isPad:Z

    if-eqz p2, :cond_d

    const/high16 p2, 0x42a20000  # 81.0f

    goto :goto_f

    :cond_d
    const/high16 p2, 0x42900000  # 72.0f

    :goto_f
    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;->setLayoutHeight(Landroid/view/View;F)V

    :cond_17
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01f8

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

    .line 22
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    const/4 p2, 0x0

    if-eqz p1, :cond_15

    const/4 v0, 0x3

    .line 23
    invoke-interface {p1}, Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;->getItemType()I

    move-result p1

    if-ne v0, p1, :cond_15

    const/4 p2, 0x1

    :cond_15
    return p2
.end method
