.class public Lcom/codemao/nemo/adapter/CommentExpressionDelegate;
.super Ljava/lang/Object;
.source "CommentExpressionDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/adapter/CommentExpressionDelegate$CommentExpressionCallBack;
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
.field private expressionCallBack:Lcom/codemao/nemo/adapter/CommentExpressionDelegate$CommentExpressionCallBack;

.field private itemWitdh:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/codemao/nemo/adapter/CommentExpressionDelegate$CommentExpressionCallBack;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3e23d70a  # 0.16f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/codemao/nemo/adapter/CommentExpressionDelegate;->itemWitdh:I

    .line 30
    iput-object p3, p0, Lcom/codemao/nemo/adapter/CommentExpressionDelegate;->expressionCallBack:Lcom/codemao/nemo/adapter/CommentExpressionDelegate$CommentExpressionCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/CommentExpressionDelegate;)Lcom/codemao/nemo/adapter/CommentExpressionDelegate$CommentExpressionCallBack;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/codemao/nemo/adapter/CommentExpressionDelegate;->expressionCallBack:Lcom/codemao/nemo/adapter/CommentExpressionDelegate$CommentExpressionCallBack;

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

    .line 46
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/adapter/CommentExpressionDelegate;->itemWitdh:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/adapter/CommentExpressionDelegate;->itemWitdh:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/ExpressionItem;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/ExpressionItem;->getResourceId()I

    move-result p2

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    .line 49
    invoke-virtual {p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getRoot()Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/codemao/nemo/adapter/CommentExpressionDelegate$1;

    invoke-direct {p3, p0}, Lcom/codemao/nemo/adapter/CommentExpressionDelegate$1;-><init>(Lcom/codemao/nemo/adapter/CommentExpressionDelegate;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/adapter/CommentExpressionDelegate$2;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/adapter/CommentExpressionDelegate$2;-><init>(Lcom/codemao/nemo/adapter/CommentExpressionDelegate;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01ac

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
