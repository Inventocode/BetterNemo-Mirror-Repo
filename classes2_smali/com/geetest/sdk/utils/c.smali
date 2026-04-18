.class public Lcom/geetest/sdk/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geetest/sdk/utils/c$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/geetest/sdk/utils/c$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/geetest/sdk/utils/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/geetest/sdk/utils/c;
    .registers 1

    .line 1
    invoke-static {}, Lcom/geetest/sdk/utils/c$b;->a()Lcom/geetest/sdk/utils/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    :cond_e
    :try_start_e
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1d

    .line 70
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_1f

    :cond_1d
    if-ge v3, v0, :cond_e

    .line 79
    :catch_1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "sh"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_63
    .catchall {:try_start_1 .. :try_end_b} :catchall_4c

    .line 3
    :try_start_b
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_64
    .catchall {:try_start_b .. :try_end_14} :catchall_4a

    .line 5
    :try_start_14
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_48
    .catchall {:try_start_14 .. :try_end_1d} :catchall_44

    .line 6
    :try_start_1d
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    const/16 p1, 0xa

    .line 7
    invoke-virtual {v2, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 8
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 9
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 11
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 13
    invoke-static {v3}, Lcom/geetest/sdk/utils/c;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_36} :catch_42
    .catchall {:try_start_1d .. :try_end_36} :catchall_40

    .line 20
    :try_start_36
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_39

    .line 27
    :catch_39
    :try_start_39
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3c

    .line 33
    :catch_3c
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    return-object p1

    :catchall_40
    move-exception p1

    goto :goto_46

    :catch_42
    nop

    goto :goto_66

    :catchall_44
    move-exception p1

    move-object v3, v0

    :goto_46
    move-object v0, v2

    goto :goto_4f

    :catch_48
    move-object v3, v0

    goto :goto_66

    :catchall_4a
    move-exception p1

    goto :goto_4e

    :catchall_4c
    move-exception p1

    move-object v1, v0

    :goto_4e
    move-object v3, v0

    :goto_4f
    if-eqz v0, :cond_56

    .line 34
    :try_start_51
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_56

    :catch_55
    nop

    :cond_56
    :goto_56
    if-eqz v3, :cond_5d

    .line 41
    :try_start_58
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_5d

    :catch_5c
    nop

    :cond_5d
    :goto_5d
    if-eqz v1, :cond_62

    .line 47
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 49
    :cond_62
    throw p1

    :catch_63
    move-object v1, v0

    :catch_64
    move-object v2, v0

    move-object v3, v2

    :goto_66
    if-eqz v2, :cond_6d

    .line 50
    :try_start_68
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_6d

    :catch_6c
    nop

    :cond_6d
    :goto_6d
    if-eqz v3, :cond_74

    .line 57
    :try_start_6f
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_74

    :catch_73
    nop

    :cond_74
    :goto_74
    if-eqz v1, :cond_79

    .line 63
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_79
    return-object v0
.end method
