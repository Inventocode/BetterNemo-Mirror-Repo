.class public final Lcom/efs/sdk/base/a/h/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static c:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a()I
    .registers 1

    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 55
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/proc/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_46

    .line 58
    :try_start_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    :goto_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v0

    if-lez v0, :cond_33

    int-to-char v0, v0

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 62
    :cond_33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->trimToSize()V

    .line 63
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_43

    .line 69
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_5a

    :catchall_3e
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5a

    :catchall_43
    move-exception p0

    move-object v0, v1

    goto :goto_47

    :catchall_46
    move-exception p0

    :goto_47
    :try_start_47
    const-string v1, "efs.base"

    const-string v2, "get process name error"

    .line 65
    invoke-static {v1, v2, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_5b

    if-eqz v0, :cond_58

    .line 69
    :try_start_50
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_58
    :goto_58
    const-string p0, ""

    :goto_5a
    return-object p0

    :catchall_5b
    move-exception p0

    if-eqz v0, :cond_66

    .line 69
    :try_start_5e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    :cond_66
    :goto_66
    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    .line 124
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2085
    sget-object v1, Lcom/efs/sdk/base/a/h/g;->b:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_29

    .line 2089
    :cond_11
    sget-wide v3, Lcom/efs/sdk/base/a/h/g;->c:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/efs/sdk/base/a/h/g;->c:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x927c0

    cmp-long v1, v3, v5

    if-lez v1, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x1

    :cond_29
    :goto_29
    if-nez v2, :cond_6a

    .line 1104
    sget-object v1, Lcom/efs/sdk/base/a/h/g;->b:Ljava/util/List;

    if-eqz v1, :cond_33

    .line 1105
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_3a

    .line 1107
    :cond_33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/efs/sdk/base/a/h/g;->b:Ljava/util/List;

    :goto_3a
    const-string v1, "activity"

    .line 1109
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_64

    .line 1112
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 1113
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1114
    sget-object v2, Lcom/efs/sdk/base/a/h/g;->b:Ljava/util/List;

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 1117
    :cond_64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/efs/sdk/base/a/h/g;->c:J

    .line 1119
    :cond_6a
    sget-object p0, Lcom/efs/sdk/base/a/h/g;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_74
    .catchall {:try_start_1 .. :try_end_74} :catchall_75

    return p0

    :catchall_75
    move-exception p0

    const-string p1, "efs.base"

    const-string v1, "Process exist judge error"

    .line 127
    invoke-static {p1, v1, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .line 37
    sget-object v0, Lcom/efs/sdk/base/a/h/g;->a:Ljava/lang/String;

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 39
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/efs/sdk/base/a/h/g;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    sput-object v0, Lcom/efs/sdk/base/a/h/g;->a:Ljava/lang/String;

    :cond_12
    return-object v0
.end method
