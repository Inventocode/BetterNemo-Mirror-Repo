.class public Lcom/codemao/nemo/delegates/CourseItemDelegateV2;
.super Ljava/lang/Object;
.source "CourseItemDelegateV2.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private onItemClickListener:Lcom/codemao/nemo/listener/OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/listener/OnItemClickListener;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/codemao/nemo/delegates/CourseItemDelegateV2;->onItemClickListener:Lcom/codemao/nemo/listener/OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/delegates/CourseItemDelegateV2;)Lcom/codemao/nemo/listener/OnItemClickListener;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/codemao/nemo/delegates/CourseItemDelegateV2;->onItemClickListener:Lcom/codemao/nemo/listener/OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 42
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    .line 43
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getPreview_url()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a019a

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCrouseItem(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v0, 0x7f0a055e

    .line 44
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a01d3

    .line 45
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/codemao/nemo/delegates/CourseItemDelegateV2$1;

    invoke-direct {p2, p0, p3}, Lcom/codemao/nemo/delegates/CourseItemDelegateV2$1;-><init>(Lcom/codemao/nemo/delegates/CourseItemDelegateV2;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d0197

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    .line 37
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/codemao/nemo/bean/CourseV2ResponseCourse;

    return p1
.end method
