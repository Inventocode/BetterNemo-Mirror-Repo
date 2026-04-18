.class public Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;
.super Ljava/lang/Object;
.source "PublishSearchItemDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/PublishSearchData$PublishData;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private keyword:Ljava/lang/String;

.field private nameWitdh:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->nameWitdh:I

    .line 29
    iput-object p1, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;)I
    .registers 1

    .line 22
    iget p0, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->nameWitdh:I

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;I)I
    .registers 2

    .line 22
    iput p1, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->nameWitdh:I

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;)Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;)Landroid/app/Activity;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/PublishSearchData$PublishData;",
            ">;I)V"
        }
    .end annotation

    .line 44
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;

    .line 45
    iget-object p3, p2, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->preview:Ljava/lang/String;

    const v0, 0x7f0a019d

    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p2, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->view_times:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const v1, 0x7f0a0996

    invoke-virtual {p1, v1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p2, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->praise_times:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a05c3

    .line 47
    invoke-virtual {p3, v2, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p2, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->comment_times:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a05ff

    .line 48
    invoke-virtual {p3, v1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    .line 50
    iget-object p3, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->keyword:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const v0, 0x7f0a055f

    if-eqz p3, :cond_6c

    .line 51
    iget-object p3, p2, Lcom/codemao/nemo/bean/PublishSearchData$PublishData;->work_name:Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    goto :goto_78

    .line 53
    :cond_6c
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$1;-><init>(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/PublishSearchData$PublishData;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 71
    :goto_78
    new-instance p3, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$2;

    invoke-direct {p3, p0, p2}, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate$2;-><init>(Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;Lcom/codemao/nemo/bean/PublishSearchData$PublishData;)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v0, 0x0

    const v1, 0x7f0a033c

    aput v1, p2, v0

    invoke-virtual {p1, p3, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setOnClickListener(Landroid/view/View$OnClickListener;[I)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01af

    return v0
.end method

.method public getNameWitdh()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->nameWitdh:I

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/PublishSearchData$PublishData;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public setKeyword(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/codemao/nemo/delegates/PublishSearchItemDelegate;->keyword:Ljava/lang/String;

    return-void
.end method
