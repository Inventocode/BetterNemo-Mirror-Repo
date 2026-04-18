.class public Lcom/codemao/nemo/adapter/ExpressionDelegate;
.super Ljava/lang/Object;
.source "ExpressionDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/ExpressionDelegate$ExpressionCallback;
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

.field private expressionCallback:Lcom/codemao/nemo/adapter/ExpressionDelegate$ExpressionCallback;

.field private itemWitdh:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/codemao/nemo/adapter/ExpressionDelegate$ExpressionCallback;)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/codemao/nemo/adapter/ExpressionDelegate;->context:Landroid/content/Context;

    .line 28
    iput-object p3, p0, Lcom/codemao/nemo/adapter/ExpressionDelegate;->expressionCallback:Lcom/codemao/nemo/adapter/ExpressionDelegate$ExpressionCallback;

    .line 29
    iput p2, p0, Lcom/codemao/nemo/adapter/ExpressionDelegate;->itemWitdh:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/ExpressionDelegate;)Lcom/codemao/nemo/adapter/ExpressionDelegate$ExpressionCallback;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/codemao/nemo/adapter/ExpressionDelegate;->expressionCallback:Lcom/codemao/nemo/adapter/ExpressionDelegate$ExpressionCallback;

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

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ExpressionDelegate;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/ExpressionItem;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ExpressionItem;->getResourceId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    const v0, 0x7f0a03a4

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const p2, 0x7f0a0392

    .line 45
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/adapter/ExpressionDelegate;->itemWitdh:I

    div-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/adapter/ExpressionDelegate;->itemWitdh:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/adapter/ExpressionDelegate;->itemWitdh:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/adapter/ExpressionDelegate;->itemWitdh:I

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 49
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/adapter/ExpressionDelegate$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/adapter/ExpressionDelegate$1;-><init>(Lcom/codemao/nemo/adapter/ExpressionDelegate;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01aa

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
