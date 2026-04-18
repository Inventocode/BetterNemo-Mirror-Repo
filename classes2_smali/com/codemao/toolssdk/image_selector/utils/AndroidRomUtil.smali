.class public Lcom/codemao/toolssdk/image_selector/utils/AndroidRomUtil;
.super Ljava/lang/Object;
.source "AndroidRomUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/image_selector/utils/AndroidRomUtil$BuildProperties;
    }
.end annotation


# direct methods
.method public static isEMUI()Z
    .registers 4

    const/4 v0, 0x0

    .line 37
    :try_start_1
    invoke-static {}, Lcom/codemao/toolssdk/image_selector/utils/AndroidRomUtil$BuildProperties;->newInstance()Lcom/codemao/toolssdk/image_selector/utils/AndroidRomUtil$BuildProperties;

    move-result-object v1

    const-string v2, "ro.build.version.emui"

    const/4 v3, 0x0

    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/codemao/toolssdk/image_selector/utils/AndroidRomUtil$BuildProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_f

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :catch_f
    :cond_f
    return v0
.end method
