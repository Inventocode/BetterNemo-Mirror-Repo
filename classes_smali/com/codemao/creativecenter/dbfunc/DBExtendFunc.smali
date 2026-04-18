.class public Lcom/codemao/creativecenter/dbfunc/DBExtendFunc;
.super Ljava/lang/Object;
.source "DBExtendFunc.java"


# direct methods
.method public static setCommonTvForBtnStyle(Landroid/widget/TextView;Z)V
    .registers 9

    .line 53
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000  # 20.0f

    const/high16 v2, 0x41900000  # 18.0f

    if-eqz p1, :cond_d

    const/high16 v3, 0x41a00000  # 20.0f

    goto :goto_f

    :cond_d
    const/high16 v3, 0x41900000  # 18.0f

    :goto_f
    invoke-static {v0, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 54
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40c00000  # 6.0f

    const/high16 v5, 0x40800000  # 4.0f

    if-eqz p1, :cond_20

    const/high16 v6, 0x40c00000  # 6.0f

    goto :goto_22

    :cond_20
    const/high16 v6, 0x40800000  # 4.0f

    :goto_22
    invoke-static {v3, v6}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    .line 55
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz p1, :cond_2d

    goto :goto_2f

    :cond_2d
    const/high16 v1, 0x41900000  # 18.0f

    :goto_2f
    invoke-static {v6, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 56
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_3a

    goto :goto_3c

    :cond_3a
    const/high16 v4, 0x40800000  # 4.0f

    :goto_3c
    invoke-static {v2, v4}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 53
    invoke-virtual {p0, v0, v3, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 57
    sget v0, Lcom/codemao/creativecenter/R$drawable;->midi_selector_41_7a3dff:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/16 v0, 0x11

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_53

    const/high16 p1, 0x41800000  # 16.0f

    goto :goto_55

    :cond_53
    const/high16 p1, 0x41600000  # 14.0f

    .line 59
    :goto_55
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static setConstraintDimensionRatio(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 129
    iput-object p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 130
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method

.method public static setEnable(Landroid/view/View;Z)V
    .registers 2

    .line 199
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static setGuideStart(Landroidx/constraintlayout/widget/Guideline;F)V
    .registers 2

    float-to-int p1, p1

    .line 70
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    return-void
.end method

.method public static setLayoutHeight(Landroid/view/View;F)V
    .registers 3

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int p1, p1

    .line 29
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setLayoutHeightDp(Landroid/view/View;I)V
    .registers 4

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setLayoutMarginBottom(Landroid/view/View;F)V
    .registers 3

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int p1, p1

    .line 121
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 122
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setLayoutMarginBottomDp(Landroid/view/View;I)V
    .registers 4

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 98
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setLayoutMarginEnd(Landroid/view/View;F)V
    .registers 3

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int p1, p1

    .line 150
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 151
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setLayoutMarginStart(Landroid/view/View;F)V
    .registers 3

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int p1, p1

    .line 83
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setLayoutMarginTop(Landroid/view/View;F)V
    .registers 3

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int p1, p1

    .line 114
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 115
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setLayoutMarginTopDp(Landroid/view/View;I)V
    .registers 4

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 91
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setLayoutWitdh(Landroid/view/View;F)V
    .registers 3

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int p1, p1

    .line 21
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setLayoutWitdhDp(Landroid/view/View;I)V
    .registers 4

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static setMargin(Landroid/view/View;F)V
    .registers 2

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int p1, p1

    .line 77
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method public static setPaddingBottom(Landroid/view/View;F)V
    .registers 5

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    float-to-int p1, p1

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public static setPaddingTop(Landroid/view/View;F)V
    .registers 5

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public static setRoundImageCornerRadius(Landroid/view/View;F)V
    .registers 3

    .line 139
    :try_start_0
    instance-of v0, p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    if-eqz v0, :cond_9

    .line 140
    check-cast p0, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;->setmRadius(F)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    :cond_9
    return-void
.end method

.method public static setSelect(Landroid/view/View;Z)V
    .registers 2

    .line 194
    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public static setTextSize(Landroid/widget/TextView;F)V
    .registers 3

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static setViewPadding(Landroid/view/View;F)V
    .registers 2

    float-to-int p1, p1

    .line 156
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public static setViewPaddingDp(Landroid/view/View;I)V
    .registers 3

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 162
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public static setViewPaddingEnd(Landroid/view/View;F)V
    .registers 5

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public static setViewPaddingStart(Landroid/view/View;F)V
    .registers 5

    float-to-int p1, p1

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method
