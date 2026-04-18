.class public Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;
.super Ljava/lang/Object;
.source "ExpressionChooseDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/ExpressionItem;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private expressionChooseCallback:Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;

.field private itemWitdh:I

.field private pageIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;->context:Landroid/content/Context;

    .line 30
    iput-object p4, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;->expressionChooseCallback:Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;

    .line 31
    iput p3, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;->itemWitdh:I

    .line 32
    iput p2, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;->pageIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;)I
    .registers 1

    .line 20
    iget p0, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;->pageIndex:I

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;)Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;->expressionChooseCallback:Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$ExpressionChooseCallback;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ExpressionItem;",
            ">;I)V"
        }
    .end annotation

    const v0, 0x7f0a03a4

    .line 47
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;->itemWitdh:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 48
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;->itemWitdh:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;->itemWitdh:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;->itemWitdh:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    iget-object v1, p0, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/ExpressionItem;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ExpressionItem;->getResourceId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 52
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/adapter/ExpressionChooseDelegate$1;-><init>(Lcom/codemao/nemo/adapter/ExpressionChooseDelegate;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01ab

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ExpressionItem;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
