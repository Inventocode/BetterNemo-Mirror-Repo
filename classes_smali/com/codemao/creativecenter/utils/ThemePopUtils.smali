.class public Lcom/codemao/creativecenter/utils/ThemePopUtils;
.super Ljava/lang/Object;
.source "ThemePopUtils.java"


# direct methods
.method public static showPopForRemind(Landroid/app/Activity;Landroid/view/View;IIZ)Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 5

    if-eqz p4, :cond_7

    .line 27
    invoke-static {p0, p1, p2, p3}, Lcom/codemao/creativecenter/utils/ThemePopUtils;->showPopFormDetail(Landroid/app/Activity;Landroid/view/View;II)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-static {p0, p1, p2, p3}, Lcom/codemao/creativecenter/utils/ThemePopUtils;->showPopFormPreview(Landroid/app/Activity;Landroid/view/View;II)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method public static showPopFormDetail(Landroid/app/Activity;Landroid/view/View;II)Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result p1

    const/high16 v0, 0x40800000  # 4.0f

    .line 73
    invoke-static {p0, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr p2, v0

    const v0, 0x438c8000  # 281.0f

    const/high16 v1, 0x436b0000  # 235.0f

    if-eqz p1, :cond_16

    const v2, 0x438c8000  # 281.0f

    goto :goto_18

    :cond_16
    const/high16 v2, 0x436b0000  # 235.0f

    :goto_18
    invoke-static {p0, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    sub-int v5, p2, v2

    if-eqz p1, :cond_22

    const/4 p2, 0x3

    goto :goto_23

    :cond_22
    const/4 p2, 0x5

    :goto_23
    int-to-float p2, p2

    .line 74
    invoke-static {p0, p2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    sub-int v6, p3, p2

    if-eqz p1, :cond_2f

    const/high16 p2, 0x43340000  # 180.0f

    goto :goto_31

    :cond_2f
    const/high16 p2, 0x43160000  # 150.0f

    .line 75
    :goto_31
    invoke-static {p0, p2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float v8, p2

    .line 77
    new-instance p2, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p2, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p2

    .line 79
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->hasShadowBg(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p2

    .line 80
    invoke-virtual {p2, p3}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p2

    sget-object p3, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 81
    invoke-virtual {p2, p3}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p2

    new-instance p3, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;

    if-eqz p1, :cond_56

    goto :goto_58

    :cond_56
    const/high16 v0, 0x436b0000  # 235.0f

    .line 82
    :goto_58
    invoke-static {p0, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float v7, p1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;-><init>(Landroid/content/Context;IIFFZZ)V

    invoke-virtual {p2, p3}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p0

    return-object p0
.end method

.method public static showPopFormPreview(Landroid/app/Activity;Landroid/view/View;II)Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 35
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result v0

    .line 36
    invoke-static/range {p0 .. p0}, Lcn/codemao/android/sketch/utils/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    .line 37
    invoke-static/range {p0 .. p0}, Lcn/codemao/android/sketch/utils/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v4, p2, v4

    const/high16 v5, 0x43070000  # 135.0f

    const/high16 v6, 0x42e20000  # 113.0f

    if-eqz v0, :cond_1f

    const/high16 v7, 0x43070000  # 135.0f

    goto :goto_21

    :cond_1f
    const/high16 v7, 0x42e20000  # 113.0f

    :goto_21
    invoke-static {v1, v7}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v4, v7

    if-eqz v0, :cond_2b

    const/16 v7, 0xc0

    goto :goto_2d

    :cond_2b
    const/16 v7, 0x9f

    :goto_2d
    add-int/lit8 v7, v7, 0x6

    int-to-float v7, v7

    .line 39
    invoke-static {v1, v7}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v7

    sub-int v7, p3, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/high16 v10, 0x42b40000  # 90.0f

    const/high16 v11, 0x42960000  # 75.0f

    const v12, 0x43878000  # 271.0f

    const/high16 v13, 0x43620000  # 226.0f

    const/high16 v14, 0x3f000000  # 0.5f

    if-gez v4, :cond_63

    int-to-float v2, v2

    mul-float v2, v2, v14

    float-to-int v2, v2

    if-eqz v0, :cond_4c

    goto :goto_4e

    :cond_4c
    const/high16 v5, 0x42e20000  # 113.0f

    .line 43
    :goto_4e
    invoke-static {v1, v5}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v3, v3

    mul-float v3, v3, v14

    float-to-int v3, v3

    if-eqz v0, :cond_5a

    goto :goto_5c

    :cond_5a
    const/high16 v10, 0x42960000  # 75.0f

    .line 44
    :goto_5c
    invoke-static {v1, v10}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    :goto_60
    sub-int/2addr v3, v4

    const/4 v6, 0x1

    goto :goto_92

    :cond_63
    if-eqz v0, :cond_69

    const v15, 0x43878000  # 271.0f

    goto :goto_6b

    :cond_69
    const/high16 v15, 0x43620000  # 226.0f

    .line 46
    :goto_6b
    invoke-static {v1, v15}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v15

    sub-int v15, v2, v15

    if-le v4, v15, :cond_8f

    int-to-float v2, v2

    mul-float v2, v2, v14

    float-to-int v2, v2

    if-eqz v0, :cond_7a

    goto :goto_7c

    :cond_7a
    const/high16 v5, 0x42e20000  # 113.0f

    .line 47
    :goto_7c
    invoke-static {v1, v5}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v3, v3

    mul-float v3, v3, v14

    float-to-int v3, v3

    if-eqz v0, :cond_88

    goto :goto_8a

    :cond_88
    const/high16 v10, 0x42960000  # 75.0f

    .line 48
    :goto_8a
    invoke-static {v1, v10}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    goto :goto_60

    :cond_8f
    move v2, v4

    move v3, v7

    const/4 v6, 0x0

    :goto_92
    if-eqz v6, :cond_97

    const/high16 v4, 0x43180000  # 152.0f

    goto :goto_99

    :cond_97
    const/high16 v4, 0x431f0000  # 159.0f

    .line 53
    :goto_99
    invoke-static {v1, v4}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    if-eqz v0, :cond_ac

    if-eqz v6, :cond_a5

    const/high16 v4, 0x43340000  # 180.0f

    goto :goto_a7

    :cond_a5
    const/high16 v4, 0x43400000  # 192.0f

    .line 55
    :goto_a7
    invoke-static {v1, v4}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    :cond_ac
    move v5, v4

    .line 57
    new-instance v4, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v4, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v7}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v4

    .line 59
    invoke-virtual {v4, v7}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v4

    .line 60
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v7}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->hasShadowBg(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v4

    sget-object v7, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 61
    invoke-virtual {v4, v7}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v8

    new-instance v9, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;

    if-eqz v0, :cond_cd

    goto :goto_cf

    :cond_cd
    const/high16 v12, 0x43620000  # 226.0f

    .line 62
    :goto_cf
    invoke-static {v1, v12}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v4, v0

    const/4 v7, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/codemao/creativecenter/pop/ThemeDownloadPop;-><init>(Landroid/content/Context;IIFFZZ)V

    invoke-virtual {v8, v9}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    return-object v0
.end method
