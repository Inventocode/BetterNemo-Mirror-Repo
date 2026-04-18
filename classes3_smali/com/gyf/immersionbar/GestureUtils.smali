.class Lcom/gyf/immersionbar/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gyf/immersionbar/GestureUtils$GestureBean;
    }
.end annotation


# direct methods
.method public static getGestureBean(Landroid/content/Context;)Lcom/gyf/immersionbar/GestureUtils$GestureBean;
    .registers 10

    .line 34
    new-instance v0, Lcom/gyf/immersionbar/GestureUtils$GestureBean;

    invoke-direct {v0}, Lcom/gyf/immersionbar/GestureUtils$GestureBean;-><init>()V

    .line 35
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_11e

    if-eqz p0, :cond_11e

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_11e

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 37
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->UNKNOWN:Lcom/gyf/immersionbar/NavigationBarType;

    .line 41
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isHuaWei()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-nez v3, :cond_d9

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI()Z

    move-result v3

    if-eqz v3, :cond_2b

    goto/16 :goto_d9

    .line 54
    :cond_2b
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isXiaoMi()Z

    move-result v1

    if-nez v1, :cond_c1

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isMIUI()Z

    move-result v1

    if-eqz v1, :cond_39

    goto/16 :goto_c1

    .line 65
    :cond_39
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isVivo()Z

    move-result v1

    if-nez v1, :cond_ac

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isFuntouchOrOriginOs()Z

    move-result v1

    if-eqz v1, :cond_47

    goto/16 :goto_ac

    .line 77
    :cond_47
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isOppo()Z

    move-result v1

    if-nez v1, :cond_97

    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isColorOs()Z

    move-result v1

    if-eqz v1, :cond_54

    goto :goto_97

    .line 86
    :cond_54
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isSamsung()Z

    move-result v1

    if-eqz v1, :cond_94

    const-string v1, "navigation_bar_gesture_while_hidden"

    .line 87
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v6, :cond_82

    if-nez v1, :cond_68

    .line 90
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->CLASSIC:Lcom/gyf/immersionbar/NavigationBarType;

    goto/16 :goto_fb

    :cond_68
    if-ne v1, v7, :cond_fb

    const-string v2, "navigation_bar_gesture_detail_type"

    .line 94
    invoke-static {p0, v2, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_75

    .line 96
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->GESTURES:Lcom/gyf/immersionbar/NavigationBarType;

    goto :goto_77

    .line 98
    :cond_75
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->GESTURES_THREE_STAGE:Lcom/gyf/immersionbar/NavigationBarType;

    :goto_77
    const-string v3, "navigation_bar_gesture_hint"

    .line 100
    invoke-static {p0, v3, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_f8

    :goto_7f
    const/4 v3, 0x1

    goto/16 :goto_f9

    :cond_82
    const-string v1, "navigationbar_hide_bar_enabled"

    .line 104
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_8e

    .line 106
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->CLASSIC:Lcom/gyf/immersionbar/NavigationBarType;

    goto/16 :goto_fb

    :cond_8e
    if-ne v1, v7, :cond_fb

    .line 109
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->GESTURES:Lcom/gyf/immersionbar/NavigationBarType;

    goto/16 :goto_f8

    :cond_94
    const/4 v1, -0x1

    goto/16 :goto_fb

    :cond_97
    :goto_97
    const-string v1, "hide_navigationbar_enable"

    .line 78
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_a2

    .line 80
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->CLASSIC:Lcom/gyf/immersionbar/NavigationBarType;

    goto :goto_fb

    :cond_a2
    if-eq v1, v7, :cond_a9

    if-eq v1, v4, :cond_a9

    const/4 v3, 0x3

    if-ne v1, v3, :cond_fb

    .line 83
    :cond_a9
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->GESTURES:Lcom/gyf/immersionbar/NavigationBarType;

    goto :goto_f8

    :cond_ac
    :goto_ac
    const-string v1, "navigation_gesture_on"

    .line 66
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_b7

    .line 68
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->CLASSIC:Lcom/gyf/immersionbar/NavigationBarType;

    goto :goto_fb

    :cond_b7
    if-ne v1, v7, :cond_bc

    .line 71
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->GESTURES_THREE_STAGE:Lcom/gyf/immersionbar/NavigationBarType;

    goto :goto_f8

    :cond_bc
    if-ne v1, v4, :cond_fb

    .line 74
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->GESTURES:Lcom/gyf/immersionbar/NavigationBarType;

    goto :goto_f8

    :cond_c1
    :goto_c1
    const-string v1, "force_fsg_nav_bar"

    .line 55
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_cc

    .line 57
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->CLASSIC:Lcom/gyf/immersionbar/NavigationBarType;

    goto :goto_fb

    :cond_cc
    if-ne v1, v7, :cond_fb

    .line 60
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->GESTURES:Lcom/gyf/immersionbar/NavigationBarType;

    const-string v3, "hide_gesture_line"

    .line 62
    invoke-static {p0, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_f8

    goto :goto_7f

    .line 42
    :cond_d9
    :goto_d9
    invoke-static {}, Lcom/gyf/immersionbar/OSUtils;->isEMUI3_x()Z

    move-result v3

    const-string v8, "navigationbar_is_min"

    if-nez v3, :cond_eb

    const/16 v3, 0x15

    if-ge v1, v3, :cond_e6

    goto :goto_eb

    .line 45
    :cond_e6
    invoke-static {p0, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_ef

    .line 43
    :cond_eb
    :goto_eb
    invoke-static {p0, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :goto_ef
    if-nez v1, :cond_f4

    .line 48
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->CLASSIC:Lcom/gyf/immersionbar/NavigationBarType;

    goto :goto_fb

    :cond_f4
    if-ne v1, v7, :cond_fb

    .line 51
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->GESTURES:Lcom/gyf/immersionbar/NavigationBarType;

    :cond_f8
    :goto_f8
    const/4 v3, 0x0

    :goto_f9
    const/4 v8, 0x1

    goto :goto_fd

    :cond_fb
    :goto_fb
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_fd
    if-ne v1, v6, :cond_116

    const-string v1, "navigation_mode"

    .line 115
    invoke-static {p0, v1, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_10b

    .line 117
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->CLASSIC:Lcom/gyf/immersionbar/NavigationBarType;

    :goto_109
    move v7, v3

    goto :goto_118

    :cond_10b
    if-ne p0, v7, :cond_110

    .line 120
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->DOUBLE:Lcom/gyf/immersionbar/NavigationBarType;

    goto :goto_109

    :cond_110
    if-ne p0, v4, :cond_116

    .line 123
    sget-object v2, Lcom/gyf/immersionbar/NavigationBarType;->GESTURES:Lcom/gyf/immersionbar/NavigationBarType;

    const/4 v5, 0x1

    goto :goto_118

    :cond_116
    move v7, v3

    move v5, v8

    .line 128
    :goto_118
    iput-boolean v5, v0, Lcom/gyf/immersionbar/GestureUtils$GestureBean;->isGesture:Z

    .line 129
    iput-boolean v7, v0, Lcom/gyf/immersionbar/GestureUtils$GestureBean;->checkNavigation:Z

    .line 130
    iput-object v2, v0, Lcom/gyf/immersionbar/GestureUtils$GestureBean;->type:Lcom/gyf/immersionbar/NavigationBarType;

    :cond_11e
    return-object v0
.end method
