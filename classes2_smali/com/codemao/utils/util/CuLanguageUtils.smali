.class public Lcom/codemao/utils/util/CuLanguageUtils;
.super Ljava/lang/Object;
.source "CuLanguageUtils.java"


# direct methods
.method static applyLanguage(Landroid/app/Activity;)V
    .registers 3

    .line 230
    invoke-static {}, Lcom/codemao/utils/util/CuBridgeUtils;->getSpUtils4Utils()Lcom/codemao/utils/util/CuSPUtils;

    move-result-object v0

    const-string v1, "KEY_LOCALE"

    invoke-virtual {v0, v1}, Lcom/codemao/utils/util/CuSPUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    :cond_11
    const-string v1, "VALUE_FOLLOW_SYSTEM"

    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 237
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/utils/util/CuLanguageUtils;->getLocal(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_2a

    .line 239
    :cond_26
    invoke-static {v0}, Lcom/codemao/utils/util/CuLanguageUtils;->string2Locale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    :goto_2a
    if-nez v0, :cond_2d

    return-void

    .line 244
    :cond_2d
    invoke-static {p0, v0}, Lcom/codemao/utils/util/CuLanguageUtils;->updateConfiguration(Landroid/content/Context;Ljava/util/Locale;)V

    .line 245
    invoke-static {}, Lcom/codemao/utils/util/CuUtils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/codemao/utils/util/CuLanguageUtils;->updateConfiguration(Landroid/content/Context;Ljava/util/Locale;)V

    return-void
.end method

.method private static getLocal(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .registers 3

    .line 303
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_10

    .line 304
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 306
    :cond_10
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method private static isRightFormatLocalStr(Ljava/lang/String;)Z
    .registers 8

    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 286
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x1

    if-ge v2, v0, :cond_19

    aget-char v5, p0, v2

    const/16 v6, 0x24

    if-ne v5, v6, :cond_16

    if-lt v3, v4, :cond_14

    return v1

    :cond_14
    add-int/lit8 v3, v3, 0x1

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_19
    if-ne v3, v4, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method private static setLocal(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .registers 4

    .line 311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    .line 312
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_c

    .line 314
    :cond_a
    iput-object p1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_c
    return-void
.end method

.method private static string2Locale(Ljava/lang/String;)Ljava/util/Locale;
    .registers 4

    .line 262
    invoke-static {p0}, Lcom/codemao/utils/util/CuLanguageUtils;->string2LocaleReal(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The string of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not in the correct format."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LanguageUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {}, Lcom/codemao/utils/util/CuBridgeUtils;->getSpUtils4Utils()Lcom/codemao/utils/util/CuSPUtils;

    move-result-object p0

    const-string v1, "KEY_LOCALE"

    invoke-virtual {p0, v1}, Lcom/codemao/utils/util/CuSPUtils;->remove(Ljava/lang/String;)V

    :cond_2a
    return-object v0
.end method

.method private static string2LocaleReal(Ljava/lang/String;)Ljava/util/Locale;
    .registers 5

    .line 271
    invoke-static {p0}, Lcom/codemao/utils/util/CuLanguageUtils;->isRightFormatLocalStr(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    const-string v0, "$"

    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 277
    new-instance v2, Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_1f

    return-object v2

    :catch_1f
    return-object v1
.end method

.method private static updateConfiguration(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 3

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 250
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 251
    invoke-static {v0, p1}, Lcom/codemao/utils/util/CuLanguageUtils;->setLocal(Landroid/content/res/Configuration;Ljava/util/Locale;)V

    .line 252
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method
