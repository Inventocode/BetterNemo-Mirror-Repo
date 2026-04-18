.class public Lcom/codemao/nemo/util/OSUtil;
.super Ljava/lang/Object;
.source "OSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/util/OSUtil$BuildProperties;
    }
.end annotation


# direct methods
.method public static isFlyme()Z
    .registers 4

    const-string v0, "ro.build.display.id"

    const-string v1, "persist.sys.use.flyme.icon"

    const-string v2, "ro.meizu.setupwizard.flyme"

    const-string v3, "ro.flyme.published"

    .line 101
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/OSUtil;->isPropertiesExist([Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    return v2

    .line 105
    :cond_14
    :try_start_14
    invoke-static {}, Lcom/codemao/nemo/util/OSUtil$BuildProperties;->newInstance()Lcom/codemao/nemo/util/OSUtil$BuildProperties;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v0}, Lcom/codemao/nemo/util/OSUtil$BuildProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 107
    invoke-virtual {v1, v0}, Lcom/codemao/nemo/util/OSUtil$BuildProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "Flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2e} :catch_31

    if-eqz v0, :cond_35

    return v2

    :catch_31
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method public static isMIUI()Z
    .registers 3

    const-string v0, "ro.miui.ui.version.code"

    const-string v1, "ro.miui.ui.version.name"

    const-string v2, "ro.miui.internal.storage"

    .line 134
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/OSUtil;->isPropertiesExist([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static varargs isPropertiesExist([Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    .line 139
    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_1c

    .line 143
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/codemao/nemo/util/OSUtil$BuildProperties;->newInstance()Lcom/codemao/nemo/util/OSUtil$BuildProperties;

    move-result-object v1

    .line 144
    array-length v2, p0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1c

    aget-object v4, p0, v3

    .line 145
    invoke-virtual {v1, v4}, Lcom/codemao/nemo/util/OSUtil$BuildProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_1c

    if-eqz v4, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :catch_1c
    :cond_1c
    :goto_1c
    return v0
.end method
