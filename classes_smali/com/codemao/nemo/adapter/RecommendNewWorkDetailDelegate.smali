.class public Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate;
.super Ljava/lang/Object;
.source "RecommendNewWorkDetailDelegate.java"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isPad:Z


# direct methods
.method public static synthetic $r8$lambda$dR1VI2wPsNx8KpTV9b7k66-D3eM(Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate;Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate;->lambda$convert$0(Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate;->context:Landroid/content/Context;

    .line 36
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate;->isPad:Z

    return-void
.end method

.method private synthetic lambda$convert$0(Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Landroid/view/View;)V
    .registers 11

    .line 72
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p3

    if-eqz p3, :cond_7

    return-void

    .line 76
    :cond_7
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->getWorkId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p3

    .line 78
    invoke-virtual {p3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p3

    const-string/jumbo v0, "推荐页-点击新作作品"

    .line 74
    invoke-static {v0, p3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    iget-object p3, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate;->context:Landroid/content/Context;

    move-object v0, p3

    check-cast v0, Landroid/app/Activity;

    const p3, 0x7f0a0447

    .line 83
    invoke-virtual {p2, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 84
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->getWorkId()J

    move-result-wide v3

    const-string/jumbo v5, "推荐页"

    const-string v6, ""

    .line 81
    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetailWithAnim(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;",
            ">;I)V"
        }
    .end annotation

    .line 51
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;

    if-nez p2, :cond_9

    return-void

    .line 55
    :cond_9
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->isReworked()Z

    move-result p3

    const v0, 0x7f0a0408

    const/4 v1, 0x0

    if-eqz p3, :cond_1b

    .line 56
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_24

    .line 58
    :cond_1b
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    :goto_24
    iget-boolean p3, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate;->isPad:Z

    const v0, 0x7f0a0816

    if-eqz p3, :cond_40

    .line 62
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/view/NewWorkColorTextView;

    .line 63
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->getLabelStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->getLabelColor()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/NewWorkColorTextView;->setBGColor(I)V

    goto :goto_54

    .line 66
    :cond_40
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/view/ColorTextView;

    .line 67
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->getLabelStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->getLabelColor()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/codemao/nemo/view/ColorTextView;->setBGColor(I)V

    .line 71
    :goto_54
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate;Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-boolean p3, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate;->isPad:Z

    const v0, 0x7f0a0912

    const v2, 0x7f0a08f9

    if-nez p3, :cond_ac

    .line 91
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->getDateStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "更新"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p3

    .line 92
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 93
    instance-of v4, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_ac

    .line 94
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    neg-float v4, p3

    float-to-int v4, v4

    .line 95
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 96
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    float-to-int p3, p3

    const/high16 v4, 0x40a00000  # 5.0f

    invoke-static {v4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    add-int/2addr p3, v4

    invoke-virtual {v3, v1, v1, p3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 100
    :cond_ac
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->getImgUrl()Ljava/lang/String;

    move-result-object p3

    const v1, 0x7f0a0447

    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 101
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a055f

    .line 102
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->getWorkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->getDateStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 41
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/RecommendNewWorkDetailDelegate;->isPad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d01dc

    goto :goto_b

    :cond_8
    const v0, 0x7f0d01db

    :goto_b
    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;",
            ">;I)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
