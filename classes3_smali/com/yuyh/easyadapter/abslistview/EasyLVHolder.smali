.class public Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
.super Ljava/lang/Object;
.source "EasyLVHolder.java"


# instance fields
.field private mConvertView:Landroid/view/View;

.field private mConvertViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mLayoutId:I

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
.method protected constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mViews:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertViews:Landroid/util/SparseArray;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/view/ViewGroup;I)V
    .registers 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mViews:Landroid/util/SparseArray;

    .line 30
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertViews:Landroid/util/SparseArray;

    .line 38
    invoke-virtual {p2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iput-object p2, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertView:Landroid/view/View;

    .line 41
    iput p4, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mLayoutId:I

    if-nez p2, :cond_32

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertView:Landroid/view/View;

    .line 44
    iget-object p2, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertViews:Landroid/util/SparseArray;

    invoke-virtual {p2, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_32
    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;ILandroid/view/View;Landroid/view/ViewGroup;I)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BVH:",
            "Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;",
            ">(",
            "Landroid/content/Context;",
            "I",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "I)TBVH;"
        }
    .end annotation

    if-nez p3, :cond_8

    .line 54
    new-instance p3, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;I)V

    return-object p3

    .line 56
    :cond_8
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    .line 57
    iget v0, p3, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mLayoutId:I

    if-eq v0, p5, :cond_18

    .line 58
    new-instance p3, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;I)V

    return-object p3

    .line 60
    :cond_18
    invoke-virtual {p3, p2}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setPosition(I)V

    return-object p3
.end method

.method public getConvertView()Landroid/view/View;
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertViews:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getConvertView(I)Landroid/view/View;
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
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

    .line 78
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_15

    .line 80
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method public setPosition(I)V
    .registers 2

    return-void
.end method

.method public setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .registers 3

    .line 96
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 97
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setVisible(IZ)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;
    .registers 3

    .line 164
    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_8

    const/4 p2, 0x0

    goto :goto_a

    :cond_8
    const/16 p2, 0x8

    .line 165
    :goto_a
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
