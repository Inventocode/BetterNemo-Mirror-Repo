.class public Lcom/codemao/nemo/view/ExpandTextView;
.super Landroid/widget/LinearLayout;
.source "ExpandTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/ExpandTextView$OnExpandOrShrinkListener;
    }
.end annotation


# instance fields
.field private canShrink:Z

.field private expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

.field private ivExpand:Landroid/widget/ImageView;

.field private lineSpacing:F

.field private llExpand:Landroid/widget/LinearLayout;

.field private maxCount:I

.field private onExpandOrShrinkListener:Lcom/codemao/nemo/view/ExpandTextView$OnExpandOrShrinkListener;

.field private textSize:F

.field private tvContent:Landroid/widget/TextView;

.field private tvExpand:Landroid/widget/TextView;

.field private witdh:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x5

    .line 37
    iput v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->maxCount:I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->canShrink:Z

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/ExpandTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x5

    .line 37
    iput v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->maxCount:I

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->canShrink:Z

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/view/ExpandTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/ExpandTextView;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/codemao/nemo/view/ExpandTextView;->doExandOrShrinAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/ExpandTextView;)Landroid/widget/TextView;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvExpand:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/ExpandTextView;)Landroid/widget/ImageView;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/nemo/view/ExpandTextView;->ivExpand:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/ExpandTextView;)Landroid/widget/TextView;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    return-object p0
.end method

.method private doExandOrShrinAnim()V
    .registers 13

    .line 176
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const v1, 0x7fffffff

    .line 184
    invoke-virtual {v0}, Lcom/codemao/nemo/view/ExpandContentItem;->isExpand()Z

    move-result v0

    const v2, 0x7f0803ed

    const-string v3, "收起"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_45

    .line 185
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->onExpandOrShrinkListener:Lcom/codemao/nemo/view/ExpandTextView$OnExpandOrShrinkListener;

    if-eqz v0, :cond_1c

    .line 186
    invoke-interface {v0}, Lcom/codemao/nemo/view/ExpandTextView$OnExpandOrShrinkListener;->onExpand()V

    .line 188
    :cond_1c
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v0, v4}, Lcom/codemao/nemo/view/ExpandContentItem;->setExpand(Z)V

    .line 189
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/ExpandContentItem;->getShrinkHeight()I

    move-result v0

    .line 190
    iget-object v6, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v6}, Lcom/codemao/nemo/view/ExpandContentItem;->getExpandHeight()I

    move-result v6

    .line 192
    iget-object v7, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvExpand:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v7, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 195
    iget-object v7, p0, Lcom/codemao/nemo/view/ExpandTextView;->ivExpand:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v9, v3

    move v8, v6

    const v10, 0x7f0803ed

    const v11, 0x7fffffff

    goto :goto_6a

    .line 197
    :cond_45
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->onExpandOrShrinkListener:Lcom/codemao/nemo/view/ExpandTextView$OnExpandOrShrinkListener;

    if-eqz v0, :cond_4c

    .line 198
    invoke-interface {v0}, Lcom/codemao/nemo/view/ExpandTextView$OnExpandOrShrinkListener;->onShrink()V

    .line 200
    :cond_4c
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/view/ExpandContentItem;->setExpand(Z)V

    .line 201
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/ExpandContentItem;->getExpandHeight()I

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/view/ExpandContentItem;->getShrinkHeight()I

    move-result v6

    const v2, 0x7f0803ec

    .line 205
    iget v1, p0, Lcom/codemao/nemo/view/ExpandTextView;->maxCount:I

    const-string v3, "展开"

    move v11, v1

    move-object v9, v3

    move v8, v6

    const v10, 0x7f0803ec

    :goto_6a
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v0, v1, v5

    aput v8, v1, v4

    .line 207
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 209
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    new-instance v1, Lcom/codemao/nemo/view/ExpandTextView$2;

    move-object v6, v1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/codemao/nemo/view/ExpandTextView$2;-><init>(Lcom/codemao/nemo/view/ExpandTextView;ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 225
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0219

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a0824

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    const v0, 0x7f0a03a3

    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->ivExpand:Landroid/widget/ImageView;

    const v0, 0x7f0a0847

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvExpand:Landroid/widget/TextView;

    const v0, 0x7f0a04b8

    .line 76
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->llExpand:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_7b

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/codemao/nemo/R$styleable;->ExpandTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    const/4 p3, 0x5

    .line 79
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/ExpandTextView;->maxCount:I

    .line 80
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/codemao/nemo/view/ExpandTextView;->canShrink:Z

    const/4 p2, 0x2

    const/4 p3, 0x0

    .line 81
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/ExpandTextView;->textSize:F

    .line 82
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/ExpandTextView;->lineSpacing:F

    .line 83
    iget p2, p0, Lcom/codemao/nemo/view/ExpandTextView;->textSize:F

    cmpl-float v0, p2, p3

    if-eqz v0, :cond_6b

    .line 84
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 86
    :cond_6b
    iget p2, p0, Lcom/codemao/nemo/view/ExpandTextView;->lineSpacing:F

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_78

    .line 87
    iget-object p3, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p3, p2, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 89
    :cond_78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    :cond_7b
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->llExpand:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/codemao/nemo/view/ExpandTextView$1;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/view/ExpandTextView$1;-><init>(Lcom/codemao/nemo/view/ExpandTextView;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    const/high16 p2, 0x42ae0000  # 87.0f

    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->witdh:I

    return-void
.end method

.method private initContent(I)V
    .registers 9

    .line 119
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    if-nez p1, :cond_5

    return-void

    .line 122
    :cond_5
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 123
    iget p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->witdh:I

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v2, 0xbb8

    const/high16 v3, -0x80000000

    .line 124
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 125
    iget-object v5, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v5, p1, v4}, Landroid/widget/TextView;->measure(II)V

    .line 126
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/codemao/nemo/view/ExpandContentItem;->setCaculated(Z)V

    .line 127
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    .line 128
    iget-object v5, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvExpand:Landroid/widget/TextView;

    const-string v6, "展开"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v5, p0, Lcom/codemao/nemo/view/ExpandTextView;->ivExpand:Landroid/widget/ImageView;

    const v6, 0x7f0803ec

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget v5, p0, Lcom/codemao/nemo/view/ExpandTextView;->maxCount:I

    const/4 v6, 0x0

    if-le p1, v5, :cond_96

    .line 131
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    iget-boolean v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->canShrink:Z

    const/high16 v5, 0x41d00000  # 26.0f

    if-eqz v0, :cond_53

    invoke-static {v5}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    goto :goto_54

    :cond_53
    const/4 v0, 0x0

    :goto_54
    add-int/2addr p1, v0

    .line 132
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/ExpandContentItem;->setExpandHeight(I)V

    .line 133
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {p1, v4}, Lcom/codemao/nemo/view/ExpandContentItem;->setOverMax(Z)V

    .line 134
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {p1, v6}, Lcom/codemao/nemo/view/ExpandContentItem;->setExpand(Z)V

    .line 135
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    iget v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->maxCount:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 136
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    iget v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->witdh:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 137
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    invoke-static {v5}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    add-int/2addr p1, v0

    .line 138
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/ExpandContentItem;->setShrinkHeight(I)V

    .line 139
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->llExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_bd

    .line 142
    :cond_96
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 143
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    .line 144
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/ExpandContentItem;->setExpandHeight(I)V

    .line 145
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v0, v6}, Lcom/codemao/nemo/view/ExpandContentItem;->setOverMax(Z)V

    .line 146
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v0, v6}, Lcom/codemao/nemo/view/ExpandContentItem;->setExpand(Z)V

    .line 147
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->llExpand:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_bd
    return-void
.end method

.method private updateViewState()V
    .registers 4

    .line 153
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/ExpandContentItem;->isOverMax()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_5d

    .line 154
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->llExpand:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/ExpandContentItem;->isExpand()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 156
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 157
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/view/ExpandContentItem;->getExpandHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvExpand:Landroid/widget/TextView;

    const-string v1, "收起"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->ivExpand:Landroid/widget/ImageView;

    const v1, 0x7f0803ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_75

    .line 161
    :cond_3a
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    iget v1, p0, Lcom/codemao/nemo/view/ExpandTextView;->maxCount:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 162
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/view/ExpandContentItem;->getShrinkHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 163
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvExpand:Landroid/widget/TextView;

    const-string v1, "展开"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->ivExpand:Landroid/widget/ImageView;

    const v1, 0x7f0803ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_75

    .line 167
    :cond_5d
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 168
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->llExpand:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/view/ExpandContentItem;->getExpandHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 171
    :goto_75
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/codemao/nemo/view/ExpandContentItem;I)V
    .registers 5

    .line 106
    iput-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->expandContentItem:Lcom/codemao/nemo/view/ExpandContentItem;

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/ExpandContentItem;->getExpandContent()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p1}, Lcom/codemao/nemo/view/ExpandContentItem;->isCaculated()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 109
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 110
    invoke-direct {p0}, Lcom/codemao/nemo/view/ExpandTextView;->updateViewState()V

    goto :goto_1b

    .line 112
    :cond_18
    invoke-direct {p0, p2}, Lcom/codemao/nemo/view/ExpandTextView;->initContent(I)V

    :goto_1b
    return-void
.end method

.method public setOnExpandOrShrinkListener(Lcom/codemao/nemo/view/ExpandTextView$OnExpandOrShrinkListener;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView;->onExpandOrShrinkListener:Lcom/codemao/nemo/view/ExpandTextView$OnExpandOrShrinkListener;

    return-void
.end method
