.class public Lcom/codemao/nemo/adapter/OfficialCourseDetailDelegate;
.super Ljava/lang/Object;
.source "OfficialCourseDetailDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/CourseDetailWorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/codemao/nemo/adapter/OfficialCourseDetailDelegate;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/adapter/OfficialCourseDetailDelegate;)Landroid/content/Context;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/codemao/nemo/adapter/OfficialCourseDetailDelegate;->context:Landroid/content/Context;

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
            "Lcom/codemao/nemo/bean/CourseDetailWorkInfo;",
            ">;I)V"
        }
    .end annotation

    .line 45
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;

    if-nez p2, :cond_9

    return-void

    .line 47
    :cond_9
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0447

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 48
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/OfficialCourseDetailDelegate$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/codemao/nemo/adapter/OfficialCourseDetailDelegate$1;-><init>(Lcom/codemao/nemo/adapter/OfficialCourseDetailDelegate;Lcom/codemao/nemo/bean/CourseDetailWorkInfo;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a0923

    .line 57
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0922

    .line 58
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a055d

    .line 60
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/view/MarkingView;

    .line 61
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->getDifficulty()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/MarkingView;->setStarLev(I)V

    .line 62
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/CourseDetailWorkInfo;->getParent_id()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    const v2, 0x7f0a0406

    cmp-long v3, p2, v0

    if-lez v3, :cond_63

    .line 63
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6c

    .line 65
    :cond_63
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_6c
    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01dd

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/CourseDetailWorkInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
