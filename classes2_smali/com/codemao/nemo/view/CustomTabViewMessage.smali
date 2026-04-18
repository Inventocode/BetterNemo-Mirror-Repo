.class public Lcom/codemao/nemo/view/CustomTabViewMessage;
.super Landroid/widget/RelativeLayout;
.source "CustomTabViewMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabScrolledListener;,
        Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabClickListener;
    }
.end annotation


# instance fields
.field private countTextHeight:F

.field private countTextWidth:F

.field private counts:[I

.field private hasTopDrawable:Z

.field private indicatorColor:I

.field private indicatorFillParent:Z

.field private lineMarginBottom:F

.field private llTab:Landroid/widget/LinearLayout;

.field private mContainer:Landroid/view/View;

.field private offset:I

.field private onTabClickListener:Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabClickListener;

.field private onTabScrolledListener:Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabScrolledListener;

.field private percent:F

.field private position:I

.field private resourTabs:[I

.field private rvList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private tabPadding:F

.field private tabWitdh:I

.field private tabWitdhs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textColorNormal:I

.field private textColorSelect:I

.field private textLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private textSizeNormal:F

.field private textSizeSelect:F

.field private textWidths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private topDrawableHeight:F

.field private topDrawablePadding:F

.field private topDrawableWitdh:F

.field private topFillParent:Z

.field private vIndicator:Landroid/view/View;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, -0x3e7

    .line 29
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdh:I

    const v0, -0x909f23

    .line 30
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textColorSelect:I

    const v1, -0xaaaaab

    .line 31
    iput v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textColorNormal:I

    const/high16 v1, 0x41800000  # 16.0f

    .line 32
    iput v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeNormal:F

    .line 33
    iput v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeSelect:F

    .line 34
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->indicatorColor:I

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->topFillParent:Z

    .line 36
    iput-boolean v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->indicatorFillParent:Z

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabPadding:F

    .line 38
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->lineMarginBottom:F

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->rvList:Ljava/util/List;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->hasTopDrawable:Z

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/CustomTabViewMessage;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, -0x3e7

    .line 29
    iput p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdh:I

    const p3, -0x909f23

    .line 30
    iput p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textColorSelect:I

    const v0, -0xaaaaab

    .line 31
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textColorNormal:I

    const/high16 v0, 0x41800000  # 16.0f

    .line 32
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeNormal:F

    .line 33
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeSelect:F

    .line 34
    iput p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->indicatorColor:I

    const/4 p3, 0x1

    .line 35
    iput-boolean p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->topFillParent:Z

    .line 36
    iput-boolean p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->indicatorFillParent:Z

    const/4 p3, 0x0

    .line 37
    iput p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabPadding:F

    .line 38
    iput p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->lineMarginBottom:F

    .line 45
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->rvList:Ljava/util/List;

    const/4 p3, 0x0

    .line 55
    iput-boolean p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->hasTopDrawable:Z

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/CustomTabViewMessage;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/CustomTabViewMessage;)Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabScrolledListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->onTabScrolledListener:Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabScrolledListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/CustomTabViewMessage;)Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabClickListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->onTabClickListener:Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/CustomTabViewMessage;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/CustomTabViewMessage;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/codemao/nemo/view/CustomTabViewMessage;->initSize()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_89

    .line 101
    sget-object v2, Lcom/codemao/nemo/R$styleable;->CustomTabView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xc

    const v2, -0x909f23

    .line 102
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textColorSelect:I

    const/16 p2, 0xb

    const v3, -0xaaaaab

    .line 103
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textColorNormal:I

    const/4 p2, 0x4

    .line 104
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->indicatorColor:I

    const/16 p2, 0x12

    .line 105
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->topFillParent:Z

    const/4 p2, 0x6

    .line 106
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->indicatorFillParent:Z

    const/16 p2, 0xe

    const/high16 v2, 0x41900000  # 18.0f

    .line 107
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeSelect:F

    const/16 p2, 0xd

    const/high16 v2, 0x41800000  # 16.0f

    .line 108
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeNormal:F

    const/16 p2, 0xa

    const/4 v3, 0x0

    .line 109
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabPadding:F

    const/16 p2, 0x9

    .line 110
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->lineMarginBottom:F

    const/4 p2, 0x3

    .line 111
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->hasTopDrawable:Z

    const/16 p2, 0x11

    .line 112
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->topDrawableWitdh:F

    const/16 p2, 0xf

    .line 113
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->topDrawableHeight:F

    const/16 p2, 0x10

    .line 114
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->topDrawablePadding:F

    .line 115
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->countTextWidth:F

    .line 116
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->countTextHeight:F

    .line 117
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    :cond_89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textWidths:Ljava/util/List;

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textLeft:Ljava/util/List;

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdhs:Ljava/util/List;

    .line 122
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabs:Ljava/util/List;

    .line 124
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d010e

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->mContainer:Landroid/view/View;

    .line 125
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 127
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 129
    iget-boolean p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->topFillParent:Z

    if-eqz p1, :cond_de

    .line 130
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->mContainer:Landroid/view/View;

    const p2, 0x7f0a0654

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 132
    :cond_de
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->mContainer:Landroid/view/View;

    const p2, 0x7f0a04e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    .line 133
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->mContainer:Landroid/view/View;

    const p2, 0x7f0a095a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->vIndicator:Landroid/view/View;

    return-void
.end method

.method private initSize()V
    .registers 16

    .line 164
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 165
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdh:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 167
    :goto_16
    iget-object v2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1eb

    .line 168
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 169
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 170
    iget v4, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeSelect:F

    invoke-virtual {v2, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 171
    iget v4, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textColorSelect:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    iget-object v4, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    invoke-virtual {v2, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 176
    iget-boolean v6, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->indicatorFillParent:Z

    if-eqz v6, :cond_59

    .line 177
    iget-object v6, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textWidths:Ljava/util/List;

    iget v7, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdh:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 179
    :cond_59
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    .line 180
    iget-object v7, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textWidths:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_66
    const/16 v6, 0xe

    .line 182
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xc

    .line 183
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 184
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 189
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x3f800000  # 1.0f

    .line 190
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 191
    iget v10, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeNormal:F

    invoke-virtual {v4, v0, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 192
    iget v10, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textColorNormal:I

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v10, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabs:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 196
    invoke-virtual {v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 197
    invoke-virtual {v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 198
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 204
    iget-boolean v11, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->topFillParent:Z

    if-eqz v11, :cond_cd

    .line 205
    iget v11, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdh:I

    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 206
    iget-object v12, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdhs:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_100

    .line 208
    :cond_cd
    iget-object v11, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textWidths:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabPadding:F

    const/high16 v13, 0x40000000  # 2.0f

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 209
    iget-object v11, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdhs:Ljava/util/List;

    iget-object v12, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textWidths:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    iget v14, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabPadding:F

    mul-float v14, v14, v13

    add-float/2addr v12, v14

    float-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :goto_100
    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 215
    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 216
    iget-boolean v10, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->hasTopDrawable:Z

    if-eqz v10, :cond_1b2

    iget-object v10, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->resourTabs:[I

    if-eqz v10, :cond_1b2

    .line 217
    array-length v10, v10

    iget-object v11, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabs:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v10, v11, :cond_1aa

    .line 220
    new-instance v10, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0a0308

    .line 221
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setId(I)V

    .line 222
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v12, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->resourTabs:[I

    aget v12, v12, v1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 224
    iget v12, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->topDrawablePadding:F

    float-to-int v12, v12

    invoke-virtual {v11, v0, v12, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 226
    iget v12, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->topDrawableWitdh:F

    float-to-int v12, v12

    iput v12, v11, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 227
    iget v12, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->topDrawableHeight:F

    float-to-int v12, v12

    iput v12, v11, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 228
    invoke-virtual {v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 229
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 233
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08055f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 235
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 236
    iget v5, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->topDrawablePadding:F

    neg-float v12, v5

    float-to-int v12, v12

    float-to-int v5, v5

    invoke-virtual {v11, v12, v5, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 238
    iget v5, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->countTextWidth:F

    float-to-int v5, v5

    iput v5, v11, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 239
    iget v5, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->countTextHeight:F

    float-to-int v5, v5

    iput v5, v11, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 241
    invoke-virtual {v10}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v11, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 242
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0601af

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41200000  # 10.0f

    .line 244
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v5, 0x11

    .line 245
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 246
    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_1b2

    .line 218
    :cond_1aa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "图片列表不一致"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b2
    :goto_1b2
    if-nez v1, :cond_1c5

    .line 249
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 250
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 251
    iget v3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeSelect:F

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 252
    iget v2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeSelect:F

    invoke-virtual {v4, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1d5

    .line 254
    :cond_1c5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 255
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 256
    iget v3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeNormal:F

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 257
    iget v2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeNormal:F

    invoke-virtual {v4, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 260
    :goto_1d5
    new-instance v2, Lcom/codemao/nemo/view/CustomTabViewMessage$2;

    invoke-direct {v2, p0, v1}, Lcom/codemao/nemo/view/CustomTabViewMessage$2;-><init>(Lcom/codemao/nemo/view/CustomTabViewMessage;I)V

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    iget-object v2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->rvList:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_16

    .line 278
    :cond_1eb
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 279
    iget v2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->lineMarginBottom:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 281
    :goto_1fa
    iget-object v3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_249

    .line 282
    iget-boolean v3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->indicatorFillParent:Z

    if-eqz v3, :cond_214

    .line 283
    iget-object v3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textLeft:Ljava/util/List;

    iget v4, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdh:I

    mul-int v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_246

    .line 285
    :cond_214
    iget-object v3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdhs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textWidths:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 286
    iget-object v4, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textLeft:Ljava/util/List;

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdhs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    :goto_246
    add-int/lit8 v1, v1, 0x1

    goto :goto_1fa

    .line 291
    :cond_249
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->vIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 292
    iget-boolean v2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->indicatorFillParent:Z

    if-eqz v2, :cond_25c

    .line 293
    iget v2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdh:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 294
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_278

    .line 296
    :cond_25c
    iget-object v2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textWidths:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 297
    iget-object v2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textLeft:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 299
    :goto_278
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->vIndicator:Landroid/view/View;

    iget v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->indicatorColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private setCountText(Landroid/widget/TextView;I)V
    .registers 5

    if-lez p2, :cond_25

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x63

    if-le p2, v0, :cond_10

    const-string p2, "99+"

    .line 474
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a

    .line 476
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a

    :cond_25
    const/16 p2, 0x8

    .line 479
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2a
    return-void
.end method


# virtual methods
.method public getOnTabClickListener()Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabClickListener;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->onTabClickListener:Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabClickListener;

    return-object v0
.end method

.method public getOnTabScrolledListener()Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabScrolledListener;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->onTabScrolledListener:Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabScrolledListener;

    return-object v0
.end method

.method public onScroll(IFI)V
    .registers 15

    .line 368
    iput p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->position:I

    .line 369
    iput p2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->percent:F

    .line 370
    iput p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->offset:I

    .line 371
    iget p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdh:I

    const/16 v0, -0x3e7

    if-eq p3, v0, :cond_1c6

    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textWidths:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_16

    goto/16 :goto_1c6

    .line 380
    :cond_16
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textWidths:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 381
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textLeft:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v1, v0, p3

    .line 383
    iget-object v2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 384
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textWidths:Ljava/util/List;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 385
    iget-object v2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textLeft:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_54

    :cond_53
    move v2, v1

    :goto_54
    add-int/2addr p3, v2

    .line 391
    iget-object v4, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->vIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 392
    iget-object v5, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lez v5, :cond_8f

    float-to-double v5, p2

    const-wide/high16 v7, 0x3fe0000000000000L  # 0.5

    cmpg-double v9, v5, v7

    if-gtz v9, :cond_7b

    int-to-float v2, v1

    sub-int/2addr p3, v1

    mul-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    mul-float p3, p3, p2

    add-float/2addr v2, p3

    float-to-int p3, v2

    .line 412
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p3, v0

    .line 413
    iput p3, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_8a

    :cond_7b
    int-to-double v9, v0

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    int-to-double v0, v2

    sub-double/2addr v5, v7

    mul-double v0, v0, v5

    add-double/2addr v9, v0

    double-to-int v0, v9

    sub-int/2addr p3, v0

    .line 417
    iput p3, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 418
    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 420
    :goto_8a
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->vIndicator:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    .line 424
    :cond_8f
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_12c

    .line 425
    iget p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeSelect:F

    iget v4, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeNormal:F

    sub-float v5, p3, v4

    mul-float v5, v5, p2

    sub-float v5, p3, v5

    sub-float/2addr p3, v4

    mul-float p3, p3, p2

    add-float/2addr v4, p3

    .line 427
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 428
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 429
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 430
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 431
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    .line 432
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 433
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 434
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1c0

    .line 436
    :cond_12c
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget v3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeSelect:F

    invoke-virtual {p3, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 437
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget v3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeSelect:F

    invoke-virtual {p3, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 438
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    sub-float/2addr v0, p2

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 439
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    .line 440
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    sub-int/2addr p1, v1

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1c0

    .line 441
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget v3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textColorNormal:I

    int-to-float v3, v3

    invoke-virtual {p3, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 442
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget v3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textColorNormal:I

    int-to-float v3, v3

    invoke-virtual {p3, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 443
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 444
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 447
    :cond_1c0
    :goto_1c0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 448
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_1c6
    :goto_1c6
    return-void
.end method

.method public setAllCount()V
    .registers 4

    .line 461
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->rvList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    const/4 v0, 0x0

    .line 462
    :goto_9
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->rvList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 463
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->rvList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x3

    .line 464
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 465
    iget-object v2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->counts:[I

    aget v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/codemao/nemo/view/CustomTabViewMessage;->setCountText(Landroid/widget/TextView;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2a
    return-void
.end method

.method public setCounts([I)V
    .registers 2

    .line 456
    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->counts:[I

    return-void
.end method

.method public setDrawable([I)V
    .registers 2

    .line 452
    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->resourTabs:[I

    return-void
.end method

.method public setItemCounts(II)V
    .registers 4

    .line 484
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->hasTopDrawable:Z

    if-eqz v0, :cond_4a

    .line 485
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->rvList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    return-void

    .line 488
    :cond_d
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->counts:[I

    aput p2, v0, p1

    .line 489
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->rvList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-lez p2, :cond_45

    const/4 v0, 0x0

    .line 491
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x63

    if-le p2, v0, :cond_30

    const-string p2, "99+"

    .line 493
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a

    .line 495
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a

    :cond_45
    const/16 p2, 0x8

    .line 498
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public setOnTabClickListener(Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabClickListener;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->onTabClickListener:Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabClickListener;

    return-void
.end method

.method public setOnTabScrolledListener(Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabScrolledListener;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->onTabScrolledListener:Lcom/codemao/nemo/view/CustomTabViewMessage$OnTabScrolledListener;

    return-void
.end method

.method public setTabs(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 305
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 306
    new-instance p1, Lcom/codemao/nemo/view/CustomTabViewMessage$3;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/CustomTabViewMessage$3;-><init>(Lcom/codemao/nemo/view/CustomTabViewMessage;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_12e

    .line 313
    :cond_17
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdhs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_23

    .line 314
    invoke-direct {p0}, Lcom/codemao/nemo/view/CustomTabViewMessage;->initSize()V

    return-void

    :cond_23
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 318
    :goto_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_43

    .line 319
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    const/4 v1, 0x1

    goto :goto_44

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_43
    const/4 v1, 0x0

    :goto_44
    if-nez v1, :cond_47

    return-void

    .line 327
    :cond_47
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 328
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 329
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdhs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 330
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textWidths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 331
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textLeft:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 332
    :goto_61
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_ec

    .line 333
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 334
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 335
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 336
    iget-object v5, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabs:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v5, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabs:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-boolean v4, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->topFillParent:Z

    if-nez v4, :cond_c9

    .line 339
    iget v4, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeSelect:F

    invoke-virtual {v2, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    invoke-virtual {v2, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 341
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 342
    iget-object v5, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textWidths:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v4, v4

    iget v5, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabPadding:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v7, v5, v6

    add-float/2addr v7, v4

    float-to-int v7, v7

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 344
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdhs:Ljava/util/List;

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_df

    .line 347
    :cond_c9
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textWidths:Ljava/util/List;

    iget v4, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdh:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdhs:Ljava/util/List;

    iget v4, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdh:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :goto_df
    iget v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->position:I

    if-eq v1, p1, :cond_e8

    .line 351
    iget v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textSizeNormal:F

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_e8
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_61

    :cond_ec
    const/4 p1, 0x0

    .line 355
    :goto_ed
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_125

    .line 356
    iget-boolean v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->topFillParent:Z

    if-eqz v1, :cond_107

    .line 357
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textLeft:Ljava/util/List;

    iget v2, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdh:I

    mul-int v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_122

    .line 359
    :cond_107
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->textLeft:Ljava/util/List;

    int-to-float v2, p1

    iget v3, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabPadding:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->tabWitdhs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    :goto_122
    add-int/lit8 v0, v0, 0x1

    goto :goto_ed

    .line 363
    :cond_125
    iget p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->position:I

    iget v0, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->percent:F

    iget v1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->offset:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/codemao/nemo/view/CustomTabViewMessage;->onScroll(IFI)V

    :goto_12e
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .registers 3

    .line 139
    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabViewMessage;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 140
    new-instance v0, Lcom/codemao/nemo/view/CustomTabViewMessage$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/CustomTabViewMessage$1;-><init>(Lcom/codemao/nemo/view/CustomTabViewMessage;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
