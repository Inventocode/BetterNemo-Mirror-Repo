.class public Lcom/nemo/commonui/xpopup/util/navbar/OSUtils;
.super Ljava/lang/Object;
.source "OSUtils.java"


# direct methods
.method public static getEMUIVersion()Ljava/lang/String;
    .registers 2

    .line 48
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/navbar/OSUtils;->isEMUI()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_e

    const-string v0, "ro.build.version.emui"

    invoke-static {v0, v1}, Lcom/nemo/commonui/xpopup/util/navbar/OSUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_e
    return-object v1
.end method

.method private static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 91
    const-class v0, Ljava/lang/String;

    :try_start_2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    .line 92
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public static isEMUI()Z
    .registers 2

    const-string v0, "ro.build.version.emui"

    const-string v1, ""

    .line 37
    invoke-static {v0, v1}, Lcom/nemo/commonui/xpopup/util/navbar/OSUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isEMUI3_0()Z
    .registers 2

    .line 72
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/navbar/OSUtils;->getEMUIVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmotionUI_3.0"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static isEMUI3_1()Z
    .registers 2

    .line 58
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/navbar/OSUtils;->getEMUIVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmotionUI 3"

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "EmotionUI_3.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method public static isEMUI3_x()Z
    .registers 1

    .line 86
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/navbar/OSUtils;->isEMUI3_0()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/nemo/commonui/xpopup/util/navbar/OSUtils;->isEMUI3_1()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static isMIUI()Z
    .registers 2

    const-string v0, "ro.miui.ui.version.name"

    const-string v1, ""

    .line 27
    invoke-static {v0, v1}, Lcom/nemo/commonui/xpopup/util/navbar/OSUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
