.class public Lcom/codemao/nemo/view/CustomTabView;
.super Landroid/widget/RelativeLayout;
.source "CustomTabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;
    }
.end annotation


# instance fields
.field private indicatorColor:I

.field private indicatorDrawable:I

.field private indicatorFillParent:Z

.field private indicatorHeight:F

.field private indicatorPadding:F

.field private llTab:Landroid/widget/LinearLayout;

.field private mContainer:Landroid/view/View;

.field private offset:I

.field private onTabClickListener:Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;

.field private percent:F

.field private position:I

.field private screenWitdh:I

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

.field private vIndicator:Landroid/view/View;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, -0x3e7

    .line 28
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdh:I

    const v0, -0x909f23

    .line 29
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabView;->textColorSelect:I

    const v1, -0xaaaaab

    .line 30
    iput v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textColorNormal:I

    const/high16 v1, 0x41800000  # 16.0f

    .line 31
    iput v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeNormal:F

    .line 32
    iput v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeSelect:F

    .line 33
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorColor:I

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorFillParent:Z

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabView;->tabPadding:F

    .line 37
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorPadding:F

    .line 39
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorHeight:F

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/CustomTabView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, -0x3e7

    .line 28
    iput p3, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdh:I

    const p3, -0x909f23

    .line 29
    iput p3, p0, Lcom/codemao/nemo/view/CustomTabView;->textColorSelect:I

    const v0, -0xaaaaab

    .line 30
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabView;->textColorNormal:I

    const/high16 v0, 0x41800000  # 16.0f

    .line 31
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeNormal:F

    .line 32
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeSelect:F

    .line 33
    iput p3, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorColor:I

    const/4 p3, 0x0

    .line 34
    iput-boolean p3, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorFillParent:Z

    const/4 p3, 0x0

    .line 35
    iput p3, p0, Lcom/codemao/nemo/view/CustomTabView;->tabPadding:F

    .line 37
    iput p3, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorPadding:F

    .line 39
    iput p3, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorHeight:F

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/CustomTabView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/CustomTabView;)Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/codemao/nemo/view/CustomTabView;->onTabClickListener:Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/CustomTabView;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/codemao/nemo/view/CustomTabView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/CustomTabView;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/codemao/nemo/view/CustomTabView;->initSize()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 86
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    .line 87
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/high16 v1, 0x3f000000  # 0.5f

    goto :goto_f

    :cond_d
    const/high16 v1, 0x3f800000  # 1.0f

    :goto_f
    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 88
    iput v0, p0, Lcom/codemao/nemo/view/CustomTabView;->screenWitdh:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_79

    .line 90
    sget-object v3, Lcom/codemao/nemo/R$styleable;->CustomTabView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xc

    const v3, -0x909f23

    .line 91
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabView;->textColorSelect:I

    const/16 p2, 0xb

    const v4, -0xaaaaab

    .line 92
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabView;->textColorNormal:I

    const/4 p2, 0x4

    .line 93
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorColor:I

    const/4 p2, 0x6

    .line 94
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorFillParent:Z

    const/16 p2, 0xe

    const/high16 v3, 0x41900000  # 18.0f

    .line 95
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeSelect:F

    const/16 p2, 0xd

    const/high16 v3, 0x41800000  # 16.0f

    .line 96
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeNormal:F

    const/16 p2, 0xa

    .line 97
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabView;->tabPadding:F

    const/16 p2, 0x8

    .line 98
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorPadding:F

    const/4 p2, 0x7

    .line 99
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorHeight:F

    const/4 p2, 0x5

    .line 100
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorDrawable:I

    .line 101
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    :cond_79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->textWidths:Ljava/util/List;

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->textLeft:Ljava/util/List;

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdhs:Ljava/util/List;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->tabs:Ljava/util/List;

    .line 108
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d010e

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->mContainer:Landroid/view/View;

    .line 109
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 113
    iget-boolean p1, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorFillParent:Z

    if-eqz p1, :cond_ce

    .line 114
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->mContainer:Landroid/view/View;

    const p2, 0x7f0a0654

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    :cond_ce
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->mContainer:Landroid/view/View;

    const p2, 0x7f0a04e9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    .line 117
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->mContainer:Landroid/view/View;

    const p2, 0x7f0a095a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->vIndicator:Landroid/view/View;

    .line 118
    iget p2, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorHeight:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_f5

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorHeight:F

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_f5
    return-void
.end method

.method private initSize()V
    .registers 14

    .line 144
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 145
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->textWidths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdhs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->tabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdh:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 150
    :goto_21
    iget-object v3, p0, Lcom/codemao/nemo/view/CustomTabView;->tabs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/high16 v5, 0x40000000  # 2.0f

    const/4 v6, 0x0

    if-ge v1, v3, :cond_174

    .line 151
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 153
    iget v7, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeSelect:F

    invoke-virtual {v3, v0, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 154
    iget v7, p0, Lcom/codemao/nemo/view/CustomTabView;->textColorSelect:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v7, p0, Lcom/codemao/nemo/view/CustomTabView;->tabs:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-boolean v7, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorFillParent:Z

    const/4 v8, -0x1

    const/4 v9, -0x2

    if-eqz v7, :cond_5e

    .line 158
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    iget v10, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdh:I

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_63

    .line 161
    :cond_5e
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 164
    :goto_63
    invoke-virtual {v3, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 165
    iget-boolean v10, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorFillParent:Z

    if-eqz v10, :cond_76

    .line 166
    iget-object v10, p0, Lcom/codemao/nemo/view/CustomTabView;->textWidths:Ljava/util/List;

    iget v11, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdh:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 168
    :cond_76
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    .line 169
    iget-object v11, p0, Lcom/codemao/nemo/view/CustomTabView;->textWidths:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :goto_83
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x11

    .line 172
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 173
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 176
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x3f800000  # 1.0f

    .line 177
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 179
    iget v11, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeNormal:F

    invoke-virtual {v4, v0, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 180
    iget v11, p0, Lcom/codemao/nemo/view/CustomTabView;->textColorNormal:I

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v11, p0, Lcom/codemao/nemo/view/CustomTabView;->tabs:Ljava/util/List;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-boolean v11, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorFillParent:Z

    if-eqz v11, :cond_c3

    .line 185
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    iget v12, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdh:I

    iput v12, v11, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_c8

    .line 189
    :cond_c3
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 191
    :goto_c8
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 194
    new-instance v11, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 195
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 196
    invoke-virtual {v11, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 197
    iget-boolean v7, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorFillParent:Z

    if-eqz v7, :cond_f2

    .line 198
    iget v5, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdh:I

    add-int/2addr v2, v5

    .line 199
    iput v5, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 200
    iget-object v7, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdhs:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_137

    .line 202
    :cond_f2
    iget-object v7, p0, Lcom/codemao/nemo/view/CustomTabView;->textWidths:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/codemao/nemo/view/CustomTabView;->tabPadding:F

    mul-float v8, v8, v5

    add-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v2, v7

    .line 203
    iget-object v7, p0, Lcom/codemao/nemo/view/CustomTabView;->textWidths:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/codemao/nemo/view/CustomTabView;->tabPadding:F

    mul-float v8, v8, v5

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 204
    iget-object v7, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdhs:Ljava/util/List;

    iget-object v8, p0, Lcom/codemao/nemo/view/CustomTabView;->textWidths:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/codemao/nemo/view/CustomTabView;->tabPadding:F

    mul-float v9, v9, v5

    add-float/2addr v8, v9

    float-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :goto_137
    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v1, :cond_14d

    .line 208
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 209
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 210
    iget v5, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeSelect:F

    invoke-virtual {v3, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 211
    iget v5, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeSelect:F

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_15d

    .line 213
    :cond_14d
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 214
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 215
    iget v5, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeNormal:F

    invoke-virtual {v3, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 216
    iget v5, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeNormal:F

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 218
    :goto_15d
    invoke-virtual {v11, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 219
    invoke-virtual {v11, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 221
    new-instance v3, Lcom/codemao/nemo/view/CustomTabView$2;

    invoke-direct {v3, p0, v1}, Lcom/codemao/nemo/view/CustomTabView$2;-><init>(Lcom/codemao/nemo/view/CustomTabView;I)V

    invoke-virtual {v11, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v3, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_21

    .line 237
    :cond_174
    iget-boolean v1, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorFillParent:Z

    if-nez v1, :cond_18f

    .line 238
    iget v1, p0, Lcom/codemao/nemo/view/CustomTabView;->screenWitdh:I

    if-le v2, v1, :cond_18f

    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 240
    iget v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeNormal:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeNormal:F

    .line 241
    iget v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeSelect:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeSelect:F

    .line 242
    invoke-direct {p0}, Lcom/codemao/nemo/view/CustomTabView;->initSize()V

    return-void

    :cond_18f
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 247
    :goto_191
    iget-object v3, p0, Lcom/codemao/nemo/view/CustomTabView;->tabs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1c9

    .line 248
    iget-boolean v3, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorFillParent:Z

    if-eqz v3, :cond_1ab

    .line 249
    iget-object v3, p0, Lcom/codemao/nemo/view/CustomTabView;->textLeft:Ljava/util/List;

    iget v7, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdh:I

    mul-int v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c6

    .line 251
    :cond_1ab
    iget-object v3, p0, Lcom/codemao/nemo/view/CustomTabView;->textLeft:Ljava/util/List;

    int-to-float v7, v2

    iget v8, p0, Lcom/codemao/nemo/view/CustomTabView;->tabPadding:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v3, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdhs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    :goto_1c6
    add-int/lit8 v1, v1, 0x1

    goto :goto_191

    .line 256
    :cond_1c9
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->vIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 258
    iget-boolean v2, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorFillParent:Z

    if-eqz v2, :cond_204

    .line 259
    iget v2, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdh:I

    int-to-float v3, v2

    iget v7, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorPadding:F

    mul-float v7, v7, v5

    sub-float/2addr v3, v7

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1e2

    goto :goto_1e3

    :cond_1e2
    const/4 v4, 0x0

    :goto_1e3
    if-nez v4, :cond_1e7

    .line 261
    iput v6, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorPadding:F

    :cond_1e7
    int-to-float v2, v2

    .line 263
    iget v3, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorPadding:F

    mul-float v3, v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 264
    iget-object v3, p0, Lcom/codemao/nemo/view/CustomTabView;->textLeft:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorPadding:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 266
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 267
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_248

    .line 269
    :cond_204
    iget-object v2, p0, Lcom/codemao/nemo/view/CustomTabView;->textWidths:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorPadding:F

    mul-float v3, v3, v5

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-lez v2, :cond_21b

    goto :goto_21c

    :cond_21b
    const/4 v4, 0x0

    :goto_21c
    if-nez v4, :cond_220

    .line 271
    iput v6, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorPadding:F

    .line 273
    :cond_220
    iget-object v2, p0, Lcom/codemao/nemo/view/CustomTabView;->textWidths:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorPadding:F

    mul-float v3, v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 274
    iget-object v3, p0, Lcom/codemao/nemo/view/CustomTabView;->textLeft:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorPadding:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 276
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 277
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 281
    :goto_248
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->vIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget v0, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorDrawable:I

    if-eqz v0, :cond_257

    .line 283
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->vIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_25e

    .line 285
    :cond_257
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->vIndicator:Landroid/view/View;

    iget v1, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_25e
    return-void
.end method


# virtual methods
.method public getOnTabClickListener()Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->onTabClickListener:Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;

    return-object v0
.end method

.method public onScroll(IFI)V
    .registers 16

    .line 369
    iput p1, p0, Lcom/codemao/nemo/view/CustomTabView;->position:I

    .line 370
    iput p2, p0, Lcom/codemao/nemo/view/CustomTabView;->percent:F

    .line 371
    iput p3, p0, Lcom/codemao/nemo/view/CustomTabView;->offset:I

    .line 372
    iget p3, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdh:I

    const/16 v0, -0x3e7

    if-eq p3, v0, :cond_224

    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabView;->textWidths:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_16

    goto/16 :goto_224

    .line 381
    :cond_16
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabView;->textWidths:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 382
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->textLeft:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v1, v0, p3

    .line 384
    iget-object v2, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 385
    iget-object v2, p0, Lcom/codemao/nemo/view/CustomTabView;->textWidths:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 386
    iget-object v4, p0, Lcom/codemao/nemo/view/CustomTabView;->textLeft:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_55

    :cond_53
    move v2, p3

    move v4, v1

    :goto_55
    add-int/2addr v2, v4

    .line 392
    iget-object v5, p0, Lcom/codemao/nemo/view/CustomTabView;->vIndicator:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 393
    iget-object v6, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_b6

    .line 394
    iget-boolean v6, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorFillParent:Z

    if-eqz v6, :cond_76

    int-to-float v0, v0

    int-to-float p3, p3

    mul-float p3, p3, p2

    add-float/2addr v0, p3

    .line 395
    iget p3, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorPadding:F

    add-float/2addr v0, p3

    float-to-int p3, v0

    iput p3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_b1

    :cond_76
    float-to-double v6, p2

    const/high16 p3, 0x40000000  # 2.0f

    const-wide/high16 v8, 0x3fe0000000000000L  # 0.5

    cmpg-double v10, v6, v8

    if-gtz v10, :cond_98

    int-to-float v4, v1

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    mul-float v1, v1, p2

    add-float/2addr v4, v1

    float-to-int v1, v4

    int-to-float v2, v0

    .line 399
    iget v4, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorPadding:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    mul-float v4, v4, p3

    sub-float/2addr v0, v4

    float-to-int p3, v0

    .line 400
    iput p3, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_b1

    :cond_98
    int-to-double v10, v0

    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x2

    int-to-double v0, v4

    sub-double/2addr v6, v8

    mul-double v0, v0, v6

    add-double/2addr v10, v0

    double-to-int v0, v10

    sub-int/2addr v2, v0

    int-to-float v1, v2

    .line 403
    iget v2, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorPadding:F

    mul-float p3, p3, v2

    sub-float/2addr v1, p3

    float-to-int p3, v1

    iput p3, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float p3, v0

    add-float/2addr p3, v2

    float-to-int p3, p3

    .line 404
    iput p3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 408
    :goto_b1
    iget-object p3, p0, Lcom/codemao/nemo/view/CustomTabView;->vIndicator:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    :cond_b6
    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 410
    :goto_b8
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v4, 0x1

    if-ge v0, v1, :cond_f3

    .line 411
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 412
    iget-object v5, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    .line 413
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 414
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 415
    iget v2, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeNormal:F

    invoke-virtual {v1, p3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 416
    iget v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeNormal:F

    invoke-virtual {v4, p3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b8

    .line 418
    :cond_f3
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18c

    .line 419
    iget v0, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeSelect:F

    iget v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeNormal:F

    sub-float v5, v0, v1

    mul-float v5, v5, p2

    sub-float v5, v0, v5

    sub-float/2addr v0, v1

    mul-float v0, v0, p2

    add-float/2addr v1, v0

    .line 421
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 422
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 423
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 424
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 425
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 426
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sub-float/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 427
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 428
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_21e

    .line 430
    :cond_18c
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeSelect:F

    invoke-virtual {v0, p3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 431
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeSelect:F

    invoke-virtual {v0, p3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 432
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sub-float/2addr v2, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 433
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 434
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    sub-int/2addr p1, v4

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21e

    .line 435
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeNormal:F

    invoke-virtual {v0, p3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 436
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeNormal:F

    invoke-virtual {v0, p3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 437
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 438
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 441
    :cond_21e
    :goto_21e
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 442
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_224
    :goto_224
    return-void
.end method

.method public setOnTabClickListener(Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->onTabClickListener:Lcom/codemao/nemo/view/CustomTabView$OnTabClickListener;

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
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 305
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->tabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 306
    new-instance p1, Lcom/codemao/nemo/view/CustomTabView$3;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/CustomTabView$3;-><init>(Lcom/codemao/nemo/view/CustomTabView;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_12e

    .line 313
    :cond_17
    iget-object v0, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdhs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_23

    .line 314
    invoke-direct {p0}, Lcom/codemao/nemo/view/CustomTabView;->initSize()V

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

    iget-object v4, p0, Lcom/codemao/nemo/view/CustomTabView;->tabs:Ljava/util/List;

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
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->tabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 328
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->tabs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 329
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdhs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 330
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->textWidths:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 331
    iget-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->textLeft:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 332
    :goto_61
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_ec

    .line 333
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->llTab:Landroid/widget/LinearLayout;

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
    iget-object v5, p0, Lcom/codemao/nemo/view/CustomTabView;->tabs:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v5, p0, Lcom/codemao/nemo/view/CustomTabView;->tabs:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-boolean v4, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorFillParent:Z

    if-nez v4, :cond_c9

    .line 339
    iget v4, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeSelect:F

    invoke-virtual {v2, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    invoke-virtual {v2, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 341
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 342
    iget-object v5, p0, Lcom/codemao/nemo/view/CustomTabView;->textWidths:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v4, v4

    iget v5, p0, Lcom/codemao/nemo/view/CustomTabView;->tabPadding:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v7, v5, v6

    add-float/2addr v7, v4

    float-to-int v7, v7

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 344
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdhs:Ljava/util/List;

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_df

    .line 347
    :cond_c9
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textWidths:Ljava/util/List;

    iget v4, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdh:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdhs:Ljava/util/List;

    iget v4, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdh:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :goto_df
    iget v1, p0, Lcom/codemao/nemo/view/CustomTabView;->position:I

    if-eq v1, p1, :cond_e8

    .line 351
    iget v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textSizeNormal:F

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_e8
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_61

    :cond_ec
    const/4 p1, 0x0

    .line 355
    :goto_ed
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->tabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_125

    .line 356
    iget-boolean v1, p0, Lcom/codemao/nemo/view/CustomTabView;->indicatorFillParent:Z

    if-eqz v1, :cond_107

    .line 357
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textLeft:Ljava/util/List;

    iget v2, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdh:I

    mul-int v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_122

    .line 359
    :cond_107
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->textLeft:Ljava/util/List;

    int-to-float v2, p1

    iget v3, p0, Lcom/codemao/nemo/view/CustomTabView;->tabPadding:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v1, p0, Lcom/codemao/nemo/view/CustomTabView;->tabWitdhs:Ljava/util/List;

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
    iget p1, p0, Lcom/codemao/nemo/view/CustomTabView;->position:I

    iget v0, p0, Lcom/codemao/nemo/view/CustomTabView;->percent:F

    iget v1, p0, Lcom/codemao/nemo/view/CustomTabView;->offset:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/codemao/nemo/view/CustomTabView;->onScroll(IFI)V

    :goto_12e
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .registers 3

    .line 125
    iput-object p1, p0, Lcom/codemao/nemo/view/CustomTabView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 126
    new-instance v0, Lcom/codemao/nemo/view/CustomTabView$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/CustomTabView$1;-><init>(Lcom/codemao/nemo/view/CustomTabView;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
