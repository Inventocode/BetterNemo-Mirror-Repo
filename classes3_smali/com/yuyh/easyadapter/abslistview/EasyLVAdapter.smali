.class public abstract Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;
.super Landroid/widget/BaseAdapter;
.source "EasyLVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected holder:Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

.field protected layoutIds:[I

.field protected mContext:Landroid/content/Context;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Ljava/util/List;[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;[I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    invoke-direct {v0}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;-><init>()V

    iput-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->holder:Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    .line 27
    iput-object p1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    .line 29
    iput-object p3, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->layoutIds:[I

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    return-void
.end method

.method private getViewCheckLayoutId(I)I
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->layoutIds:[I

    if-eqz v0, :cond_15

    array-length v1, v0

    if-nez v1, :cond_8

    goto :goto_15

    .line 68
    :cond_8
    iget-object v1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->getLayoutIndex(ILjava/lang/Object;)I

    move-result p1

    aget p1, v0, p1

    goto :goto_1f

    .line 66
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->getLayoutId(ILjava/lang/Object;)I

    move-result p1

    :goto_1f
    return p1
.end method


# virtual methods
.method public abstract convert(Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;",
            "ITT;)V"
        }
    .end annotation
.end method

.method public getCount()I
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_a
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLayoutId(ILjava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getLayoutIndex(ILjava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    .line 57
    invoke-direct {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->getViewCheckLayoutId(I)I

    move-result v6

    .line 58
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->holder:Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    iget-object v1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mContext:Landroid/content/Context;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->get(Landroid/content/Context;ILandroid/view/View;Landroid/view/ViewGroup;I)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->holder:Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    .line 59
    iget-object p3, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->convert(Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;ILjava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->holder:Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    invoke-virtual {p1, v6}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getConvertView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
