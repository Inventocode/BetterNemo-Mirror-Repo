.class public Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EasyRVHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field private mConvertView:Landroid/view/View;

.field private mLayoutId:I

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;)V
    .registers 4

    .line 29
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mViews:Landroid/util/SparseArray;

    .line 31
    iput p2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mLayoutId:I

    .line 32
    iput-object p3, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mConvertView:Landroid/view/View;

    .line 33
    invoke-virtual {p3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getItemView()Landroid/view/View;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutId()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mLayoutId:I

    return v0
.end method

.method public getView(I)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_15

    .line 39
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method public setImageResource(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .registers 3

    .line 91
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 92
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setOnItemViewClickListener(Landroid/view/View$OnClickListener;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .registers 3

    .line 70
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setVisible(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .registers 3

    .line 145
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public setVisible(IZ)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .registers 3

    .line 138
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_8

    const/4 p2, 0x0

    goto :goto_a

    :cond_8
    const/16 p2, 0x8

    .line 139
    :goto_a
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
