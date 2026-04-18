.class public Lcom/tencent/smtt/sdk/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x258

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a()I
    .registers 6

    const-string v0, "k"

    sget v1, Lcom/tencent/smtt/sdk/a;->b:I

    if-lez v1, :cond_7

    return v1

    :cond_7
    const-string v1, "/proc/meminfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_b
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_6a
    .catchall {:try_start_b .. :try_end_17} :catchall_60

    :cond_17
    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_51

    const-string v4, "MemTotal:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v5, v4, :cond_17

    add-int/lit8 v4, v4, 0x9

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_51

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_51

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x400
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_50} :catch_5d
    .catchall {:try_start_17 .. :try_end_50} :catchall_5a

    move v3, v0

    :cond_51
    :try_start_51
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_73

    :catch_55
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_73

    :catchall_5a
    move-exception v0

    move-object v2, v1

    goto :goto_61

    :catch_5d
    move-exception v0

    move-object v2, v1

    goto :goto_6b

    :catchall_60
    move-exception v0

    :goto_61
    :try_start_61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_76

    if-eqz v2, :cond_73

    :try_start_66
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_55

    goto :goto_73

    :catch_6a
    move-exception v0

    :goto_6b
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_76

    if-eqz v2, :cond_73

    :try_start_70
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_55

    :cond_73
    :goto_73
    sput v3, Lcom/tencent/smtt/sdk/a;->b:I

    return v3

    :catchall_76
    move-exception v0

    if-eqz v2, :cond_81

    :try_start_79
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_81

    :catch_7d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_81
    :goto_81
    throw v0
.end method
