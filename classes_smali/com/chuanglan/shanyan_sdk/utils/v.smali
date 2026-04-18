.class public Lcom/chuanglan/shanyan_sdk/utils/v;
.super Ljava/lang/Object;


# static fields
.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;


# direct methods
.method public static a(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/v;->n:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/v;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "MIUI"

    :goto_19
    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/v;->n:Ljava/lang/String;

    goto :goto_7e

    :cond_1c
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/v;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "EMUI"

    goto :goto_19

    :cond_2d
    const-string v0, "ro.build.version.opporom"

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/v;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "OPPO"

    goto :goto_19

    :cond_3e
    const-string v0, "ro.vivo.os.version"

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/v;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "VIVO"

    goto :goto_19

    :cond_4f
    const-string v0, "ro.smartisan.version"

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/v;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "SMARTISAN"

    goto :goto_19

    :cond_60
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/v;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    sput-object v1, Lcom/chuanglan/shanyan_sdk/utils/v;->n:Ljava/lang/String;

    goto :goto_7e

    :cond_73
    const-string v0, "unknown"

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/v;->o:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :goto_7e
    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/v;->n:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_4d

    :try_start_1e
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_4b

    :try_start_23
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x400

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_49

    :try_start_2a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_50

    :try_start_2e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3e
    if-eqz p0, :cond_48

    :try_start_40
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_48
    :goto_48
    return-object v0

    :catchall_49
    move-object v2, v0

    goto :goto_50

    :catchall_4b
    move-object v1, v0

    goto :goto_4f

    :catchall_4d
    move-object p0, v0

    move-object v1, p0

    :goto_4f
    move-object v2, v1

    :catchall_50
    :goto_50
    if-eqz v2, :cond_5a

    :try_start_52
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_5a
    :goto_5a
    if-eqz v1, :cond_64

    :try_start_5c
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_64
    :goto_64
    if-eqz p0, :cond_6e

    :try_start_66
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_6e

    :catch_6a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6e
    :goto_6e
    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/v;->o:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/utils/v;->a(Ljava/lang/String;)Z

    :cond_9
    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/v;->o:Ljava/lang/String;

    return-object v0
.end method
