.class public Lcom/codemao/nemo/view/MarkingView;
.super Landroid/widget/LinearLayout;
.source "MarkingView.java"


# instance fields
.field private height:I

.field private lastLev:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/MarkingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 25
    iput p2, p0, Lcom/codemao/nemo/view/MarkingView;->lastLev:I

    const/high16 p2, 0x41c00000  # 24.0f

    .line 39
    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/MarkingView;->height:I

    const/4 p2, 0x0

    .line 40
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 41
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/codemao/nemo/view/MarkingView;->height:I

    invoke-direct {p3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_19
    const/4 v0, 0x3

    if-ge p2, v0, :cond_30

    .line 43
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f08060b

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_19

    :cond_30
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 3

    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setStarLev(I)V
    .registers 7

    .line 53
    iget v0, p0, Lcom/codemao/nemo/view/MarkingView;->lastLev:I

    if-eq v0, p1, :cond_21

    const/4 v0, 0x3

    if-gt p1, v0, :cond_21

    if-gez p1, :cond_a

    goto :goto_21

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_1f

    .line 56
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    if-gt v2, v4, :cond_18

    const/4 v4, 0x1

    goto :goto_19

    :cond_18
    const/4 v4, 0x0

    :goto_19
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 58
    :cond_1f
    iput p1, p0, Lcom/codemao/nemo/view/MarkingView;->lastLev:I

    :cond_21
    :goto_21
    return-void
.end method
