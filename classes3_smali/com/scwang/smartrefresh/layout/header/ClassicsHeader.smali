.class public Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
.source "ClassicsHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scwang/smartrefresh/layout/internal/InternalClassics<",
        "Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;",
        ">;",
        "Lcom/scwang/smartrefresh/layout/api/RefreshHeader;"
    }
.end annotation


# static fields
.field public static REFRESH_HEADER_FAILED:Ljava/lang/String;

.field public static REFRESH_HEADER_FINISH:Ljava/lang/String;

.field public static REFRESH_HEADER_LOADING:Ljava/lang/String;

.field public static REFRESH_HEADER_PULLING:Ljava/lang/String;

.field public static REFRESH_HEADER_REFRESHING:Ljava/lang/String;

.field public static REFRESH_HEADER_RELEASE:Ljava/lang/String;

.field public static REFRESH_HEADER_SECONDARY:Ljava/lang/String;

.field public static REFRESH_HEADER_UPDATE:Ljava/lang/String;


# instance fields
.field protected KEY_LAST_UPDATE_TIME:Ljava/lang/String;

.field protected mEnableLastTime:Z

.field protected mLastTime:Ljava/util/Date;

.field protected mLastUpdateFormat:Ljava/text/DateFormat;

.field protected mLastUpdateText:Landroid/widget/TextView;

.field protected mShared:Landroid/content/SharedPreferences;

.field protected mTextFailed:Ljava/lang/String;

.field protected mTextFinish:Ljava/lang/String;

.field protected mTextLoading:Ljava/lang/String;

.field protected mTextPulling:Ljava/lang/String;

.field protected mTextRefreshing:Ljava/lang/String;

.field protected mTextRelease:Ljava/lang/String;

.field protected mTextSecondary:Ljava/lang/String;

.field protected mTextUpdate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "LAST_UPDATE_TIME"

    .line 56
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    const/4 p3, 0x1

    .line 62
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    const/4 p3, 0x0

    .line 64
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    .line 85
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    const v0, -0x838384

    .line 86
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mArrowView:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 91
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    .line 92
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mCenterLayout:Landroid/widget/LinearLayout;

    .line 93
    new-instance v3, Lcom/scwang/smartrefresh/layout/util/DensityUtil;

    invoke-direct {v3}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;-><init>()V

    .line 95
    sget-object v4, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 97
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 99
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextTimeMarginTop:I

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 101
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsFooter_srlDrawableMarginRight:I

    const/high16 v6, 0x41a00000  # 20.0f

    invoke-virtual {v3, v6}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dip2px(F)I

    move-result v3

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 102
    iput v3, p3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 104
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableArrowSize:I

    iget v5, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 105
    iget v5, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 106
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableProgressSize:I

    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 107
    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 109
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableSize:I

    iget v5, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 110
    iget v5, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 111
    iget p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 112
    iget p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 114
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlFinishDuration:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mFinishDuration:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mFinishDuration:I

    .line 115
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlEnableLastTime:I

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    .line 116
    invoke-static {}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->values()[Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p3

    sget v1, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlClassicsSpinnerStyle:I

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object p3, p3, v1

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 118
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const v3, -0x99999a

    if-eqz v1, :cond_ed

    .line 119
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_fe

    .line 121
    :cond_ed
    new-instance p3, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;

    invoke-direct {p3}, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;-><init>()V

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    .line 122
    invoke-virtual {p3, v3}, Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;->setColor(I)V

    .line 123
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mArrowDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :goto_fe
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlDrawableProgress:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 127
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_121

    .line 129
    :cond_110
    new-instance p3, Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;

    invoke-direct {p3}, Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;-><init>()V

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    .line 130
    invoke-virtual {p3, v3}, Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;->setColor(I)V

    .line 131
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mProgressView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :goto_121
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSizeTitle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/high16 v3, 0x41800000  # 16.0f

    const/4 v5, 0x0

    if-eqz v1, :cond_13b

    .line 135
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mTitleText:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v1, v5, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_140

    .line 137
    :cond_13b
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 140
    :goto_140
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSizeTime:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/high16 v3, 0x41400000  # 12.0f

    if-eqz v1, :cond_159

    .line 141
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/scwang/smartrefresh/layout/util/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v1, v5, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_15e

    .line 143
    :cond_159
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 146
    :goto_15e
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlPrimaryColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_16d

    .line 147
    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-super {p0, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setPrimaryColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    .line 149
    :cond_16d
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlAccentColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 150
    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    .line 153
    :cond_17c
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextPulling:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_18b

    .line 154
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    goto :goto_19a

    .line 155
    :cond_18b
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_PULLING:Ljava/lang/String;

    if-eqz p3, :cond_192

    .line 156
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    goto :goto_19a

    .line 158
    :cond_192
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_pulling:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    .line 160
    :goto_19a
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextLoading:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1a9

    .line 161
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    goto :goto_1b8

    .line 162
    :cond_1a9
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_LOADING:Ljava/lang/String;

    if-eqz p3, :cond_1b0

    .line 163
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    goto :goto_1b8

    .line 165
    :cond_1b0
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_loading:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    .line 167
    :goto_1b8
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextRelease:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1c7

    .line 168
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    goto :goto_1d6

    .line 169
    :cond_1c7
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_RELEASE:Ljava/lang/String;

    if-eqz p3, :cond_1ce

    .line 170
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    goto :goto_1d6

    .line 172
    :cond_1ce
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_release:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    .line 174
    :goto_1d6
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextFinish:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1e5

    .line 175
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    goto :goto_1f4

    .line 176
    :cond_1e5
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_FINISH:Ljava/lang/String;

    if-eqz p3, :cond_1ec

    .line 177
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    goto :goto_1f4

    .line 179
    :cond_1ec
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_finish:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    .line 181
    :goto_1f4
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextFailed:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_203

    .line 182
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    goto :goto_212

    .line 183
    :cond_203
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_FAILED:Ljava/lang/String;

    if-eqz p3, :cond_20a

    .line 184
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    goto :goto_212

    .line 186
    :cond_20a
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_failed:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    .line 188
    :goto_212
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextSecondary:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_221

    .line 189
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    goto :goto_230

    .line 190
    :cond_221
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_SECONDARY:Ljava/lang/String;

    if-eqz p3, :cond_228

    .line 191
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    goto :goto_230

    .line 193
    :cond_228
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_secondary:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    .line 195
    :goto_230
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextRefreshing:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_23f

    .line 196
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    goto :goto_24e

    .line 197
    :cond_23f
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_REFRESHING:Ljava/lang/String;

    if-eqz p3, :cond_246

    .line 198
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    goto :goto_24e

    .line 200
    :cond_246
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_refreshing:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    .line 202
    :goto_24e
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->ClassicsHeader_srlTextUpdate:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_25d

    .line 203
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    goto :goto_26c

    .line 204
    :cond_25d
    sget-object p3, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->REFRESH_HEADER_UPDATE:Ljava/lang/String;

    if-eqz p3, :cond_264

    .line 205
    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    goto :goto_26c

    .line 207
    :cond_264
    sget p3, Lcom/scwang/smartrefresh/layout/R$string;->srl_header_update:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    .line 209
    :goto_26c
    new-instance p3, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextUpdate:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {p3, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    .line 211
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x4

    .line 213
    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    .line 214
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    if-eqz p2, :cond_286

    const/4 p2, 0x0

    goto :goto_288

    :cond_286
    const/16 p2, 0x8

    :goto_288
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    invoke-virtual {v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p3

    if-eqz p3, :cond_299

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    goto :goto_29b

    :cond_299
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    :goto_29b
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :try_start_29e
    instance-of p2, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_2c4

    .line 220
    move-object p2, p1

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_2c4

    .line 223
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2c4

    .line 224
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2c4

    .line 225
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    :try_end_2bf
    .catchall {:try_start_29e .. :try_end_2bf} :catchall_2c0

    return-void

    :catchall_2c0
    move-exception p2

    .line 231
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 234
    :cond_2c4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    const-string p2, "ClassicsHeader"

    .line 235
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    .line 236
    new-instance p1, Ljava/util/Date;

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p2, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .registers 5

    if-eqz p2, :cond_16

    .line 252
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFinish:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastTime:Ljava/util/Date;

    if-eqz v0, :cond_1d

    .line 254
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    goto :goto_1d

    .line 257
    :cond_16
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextFailed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_1d
    :goto_1d
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    move-result p1

    return p1
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .registers 7

    .line 264
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mArrowView:Landroid/widget/ImageView;

    .line 265
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    .line 266
    sget-object v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p3, :pswitch_data_6c

    goto :goto_6b

    .line 288
    :pswitch_14  #0x7
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    if-eqz p1, :cond_1c

    const/4 v2, 0x4

    :cond_1c
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mTitleText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextLoading:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6b

    .line 284
    :pswitch_27  #0x6
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextSecondary:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_6b

    .line 280
    :pswitch_36  #0x5
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRelease:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000  # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_6b

    .line 276
    :pswitch_47  #0x3, 0x4
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextRefreshing:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6b

    .line 268
    :pswitch_52  #0x1
    iget-boolean p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mEnableLastTime:Z

    if-eqz p3, :cond_57

    const/4 v2, 0x0

    :cond_57
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :pswitch_5a  #0x2
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->mTitleText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mTextPulling:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :goto_6b
    return-void

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_52  #00000001
        :pswitch_5a  #00000002
        :pswitch_47  #00000003
        :pswitch_47  #00000004
        :pswitch_36  #00000005
        :pswitch_27  #00000006
        :pswitch_14  #00000007
    .end packed-switch
.end method

.method public setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .registers 5

    .line 323
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    const v1, 0xffffff

    and-int/2addr v1, p1

    const/high16 v2, -0x34000000  # -3.3554432E7f

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalClassics;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;

    move-result-object p1

    check-cast p1, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    return-object p1
.end method

.method public bridge synthetic setAccentColor(I)Lcom/scwang/smartrefresh/layout/internal/InternalClassics;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    move-result-object p1

    return-object p1
.end method

.method public setLastUpdateTime(Ljava/util/Date;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;
    .registers 6

    .line 300
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastTime:Ljava/util/Date;

    .line 301
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mLastUpdateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 303
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->mShared:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->KEY_LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2a
    return-object p0
.end method
