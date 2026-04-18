.class public Lcom/tencent/smtt/utils/FileUtil;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/utils/FileUtil$b;,
        Lcom/tencent/smtt/utils/FileUtil$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = null

.field public static final b:Lcom/tencent/smtt/utils/FileUtil$a;

.field private static final c:I = 0x4

.field private static d:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tencent/smtt/utils/FileUtil$2;

    invoke-direct {v0}, Lcom/tencent/smtt/utils/FileUtil$2;-><init>()V

    sput-object v0, Lcom/tencent/smtt/utils/FileUtil;->b:Lcom/tencent/smtt/utils/FileUtil$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    if-nez p0, :cond_5

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_5
    const/16 v0, 0x1000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    :goto_b
    const/4 v3, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_19

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v4

    add-long/2addr v1, v3

    goto :goto_b

    :cond_19
    return-wide v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "tbs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    const/4 v1, 0x0

    const-string v2, "FileHelper"

    if-nez p0, :cond_23

    const-string p0, "getPermanentTbsFile -- no permission!"

    :goto_1f
    invoke-static {v2, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_23
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_45

    :try_start_2e
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_45

    :catch_32
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPermanentTbsFile -- exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    :cond_45
    :goto_45
    return-object p0
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;
    .registers 4

    if-eqz p1, :cond_7

    invoke-static {p0}, Lcom/tencent/smtt/utils/FileUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-static {p0}, Lcom/tencent/smtt/utils/FileUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_b
    const/4 p1, 0x0

    if-nez p0, :cond_f

    return-object p1

    :cond_f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1d
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-nez p0, :cond_24

    return-object p1

    :cond_24
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_38

    :try_start_2f
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_38

    :catch_33
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object p1

    :cond_38
    :goto_38
    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 9

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_20

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    :goto_20
    const-string v2, "tencent"

    const-string v3, "tbs"

    const-string v4, "backup"

    packed-switch p2, :pswitch_data_162

    return-object v0

    :pswitch_2a  #0x8
    const-string p1, "env"

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_31  #0x7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    goto :goto_5d

    :cond_38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "core"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5d
    return-object v1

    :pswitch_5e  #0x6
    sget-object p1, Lcom/tencent/smtt/utils/FileUtil;->a:Ljava/lang/String;

    if-eqz p1, :cond_63

    return-object p1

    :cond_63
    const-string p1, "tbslog"

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/smtt/utils/FileUtil;->a:Ljava/lang/String;

    return-object p0

    :pswitch_6c  #0x5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_73

    goto :goto_90

    :cond_73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_90
    return-object v1

    :pswitch_91  #0x4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9c

    invoke-static {p0, v4}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_eb

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_d2

    invoke-virtual {p2}, Ljava/io/File;->canWrite()Z

    move-result p3

    if-nez p3, :cond_eb

    :cond_d2
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_e7

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p2}, Ljava/io/File;->canWrite()Z

    move-result p2

    if-nez p2, :cond_eb

    invoke-static {p0, v4}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object p1, p0

    goto :goto_eb

    :cond_e7
    invoke-static {p0, v4}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_eb
    :goto_eb
    return-object p1

    :pswitch_ec  #0x3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f3

    goto :goto_116

    :cond_f3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_116
    return-object v1

    :pswitch_117  #0x2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11e

    goto :goto_13b

    :cond_11e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_13b
    return-object v1

    :pswitch_13c  #0x1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_143

    goto :goto_160

    :cond_143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_160
    return-object v1

    nop

    :pswitch_data_162
    .packed-switch 0x1
        :pswitch_13c  #00000001
        :pswitch_117  #00000002
        :pswitch_ec  #00000003
        :pswitch_91  #00000004
        :pswitch_6c  #00000005
        :pswitch_5e  #00000006
        :pswitch_31  #00000007
        :pswitch_2a  #00000008
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/io/FileOutputStream;)Ljava/nio/channels/FileLock;
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0
    :try_end_10
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_4 .. :try_end_10} :catch_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_13

    if-eqz v0, :cond_1c

    return-object p1

    :catch_13
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    :catch_18
    move-exception p1

    invoke-virtual {p1}, Ljava/nio/channels/OverlappingFileLockException;->printStackTrace()V

    :cond_1c
    :goto_1c
    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/nio/channels/FileLock;)V
    .registers 5

    const-class p0, Lcom/tencent/smtt/utils/FileUtil;

    monitor-enter p0

    :try_start_3
    const-string v0, "FileHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseTbsCoreRenameFileLock -- lock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_2f

    if-eqz v0, :cond_2d

    :try_start_25
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29
    .catchall {:try_start_25 .. :try_end_28} :catchall_2f

    goto :goto_2d

    :catch_29
    move-exception p1

    :try_start_2a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2f

    :cond_2d
    :goto_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static a(Ljava/io/File;Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete file,ignore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileUtils"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_50

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_50

    :cond_2e
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :cond_38
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3f

    return-void

    :cond_3f
    array-length v1, v0

    const/4 v2, 0x0

    :goto_41
    if-ge v2, v1, :cond_4b

    aget-object v3, v0, v2

    invoke-static {v3, p1}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_4b
    if-nez p1, :cond_50

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_50
    :goto_50
    return-void
.end method

.method public static a(Ljava/io/File;ZLjava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete file,ignore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "except"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileUtils"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_63

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_63

    :cond_36
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :cond_40
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_47

    return-void

    :cond_47
    array-length v1, v0

    const/4 v2, 0x0

    :goto_49
    if-ge v2, v1, :cond_5e

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    goto :goto_5b

    :cond_58
    invoke-static {v3, p1}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_5e
    if-nez p1, :cond_63

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_63
    :goto_63
    return-void
.end method

.method public static a(Ljava/nio/channels/FileLock;Ljava/io/FileOutputStream;)V
    .registers 3

    if-eqz p0, :cond_16

    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_16
    if-eqz p1, :cond_20

    :try_start_18
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_20
    :goto_20
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    move v0, v1

    :cond_1a
    return v0
.end method

.method public static a(Ljava/io/File;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    invoke-static {p0}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/tencent/smtt/utils/FileUtil;->b:Lcom/tencent/smtt/utils/FileUtil$a;

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Lcom/tencent/smtt/utils/FileUtil$a;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Lcom/tencent/smtt/utils/FileUtil$a;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3a

    if-nez p1, :cond_6

    goto :goto_3a

    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Lcom/tencent/smtt/utils/FileUtil$a;)Z

    move-result p0

    return p0

    :cond_18
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1f

    return v0

    :cond_1f
    array-length p3, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_22
    if-ge v2, p3, :cond_39

    aget-object v3, p0, v2

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v4, p2}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v3

    if-nez v3, :cond_36

    const/4 v1, 0x0

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_39
    return v1

    :cond_3a
    :goto_3a
    return v0
.end method

.method static synthetic a(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;JJJ)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    const/4 p0, 0x1

    const-string p4, "FileHelper"

    cmp-long v2, v0, p1

    if-eqz v2, :cond_31

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "file size doesn\'t match: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " vs "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_31
    const/4 p1, 0x0

    :try_start_32
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_83

    :try_start_37
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_40
    invoke-virtual {p2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_4b

    invoke-virtual {p1, v0, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_40

    :cond_4b
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": crc = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", zipCrc = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_37 .. :try_end_77} :catchall_80

    cmp-long p1, v0, p5

    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    if-eqz p1, :cond_7f

    return p0

    :cond_7f
    return v2

    :catchall_80
    move-exception p0

    move-object p1, p2

    goto :goto_84

    :catchall_83
    move-exception p0

    :goto_84
    if-eqz p1, :cond_89

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    :cond_89
    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_b

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    const-string v2, "ro.product.cpu.upgradeabi"

    const-string v3, "armeabi"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/PropertyUtils;->getQuickly(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/utils/FileUtil$b;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_ca

    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_21

    goto :goto_e

    :cond_21
    const-string v7, "../"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2a

    goto :goto_e

    :cond_2a
    const-string v7, "lib/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3b

    const-string v7, "assets/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3b

    goto :goto_e

    :cond_3b
    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ".so"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9e

    sget v9, Lcom/tencent/smtt/utils/FileUtil;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, p1, v2, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_66

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v7, :cond_66

    const/4 v3, 0x1

    goto :goto_9e

    :cond_66
    if-eqz p2, :cond_81

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, p2, v2, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_81

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v7, :cond_81

    const/4 v4, 0x1

    if-eqz v3, :cond_9e

    goto :goto_e

    :cond_81
    if-eqz p3, :cond_e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, p3, v2, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_e

    if-nez v3, :cond_e

    if-eqz v4, :cond_9e

    goto/16 :goto_e

    :cond_9e
    :goto_9e
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_a2
    .catchall {:try_start_6 .. :try_end_a2} :catchall_c7

    :try_start_a2
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p4, v6, v5, v7}, Lcom/tencent/smtt/utils/FileUtil$b;->a(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z

    move-result v5
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_bc

    if-nez v5, :cond_b5

    if-eqz v6, :cond_b1

    :try_start_ae
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_c7

    :cond_b1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return v2

    :cond_b5
    if-eqz v6, :cond_e

    :try_start_b7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto/16 :goto_e

    :catchall_bc
    move-exception p0

    if-eqz v6, :cond_c2

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_c2
    throw p0
    :try_end_c3
    .catchall {:try_start_b7 .. :try_end_c3} :catchall_c7

    :cond_c3
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return v0

    :catchall_c7
    move-exception p0

    move-object v0, v1

    goto :goto_cb

    :catchall_ca
    move-exception p0

    :goto_cb
    if-eqz v0, :cond_d0

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    :cond_d0
    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/tencent/smtt/utils/FileUtil$1;

    invoke-direct {v0, p1}, Lcom/tencent/smtt/utils/FileUtil$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p3, p4, v0}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/utils/FileUtil$b;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/FileOutputStream;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_10

    :try_start_6
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_d

    :cond_c
    move-object p0, v1

    :goto_d
    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_16

    goto :goto_56

    :catchall_16
    move-exception v1

    invoke-static {v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Android"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "files"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_56} :catch_57

    :goto_56
    return-object p0

    :catch_57
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static b(Ljava/io/File;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5

    invoke-static {}, Lcom/tencent/smtt/utils/p;->a()J

    move-result-wide v0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getDownloadMinFreeSpace()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-ltz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    if-nez p0, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TbsApkDwonloader.hasEnoughFreeSpace] freeSpace too small,  freeSpace = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TbsDownload"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    return p0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Lcom/tencent/smtt/utils/FileUtil$a;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_94

    if-nez p1, :cond_7

    goto/16 :goto_94

    :cond_7
    if-eqz p2, :cond_10

    invoke-interface {p2, p0}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_10

    return v0

    :cond_10
    const/4 p2, 0x0

    :try_start_11
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_86

    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_32

    if-eqz p3, :cond_2f

    invoke-interface {p3, p0, p1}, Lcom/tencent/smtt/utils/FileUtil$a;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_2f

    return v2

    :cond_2f
    invoke-static {p1}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    :cond_32
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-static {p3}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    :cond_3f
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result p3

    if-nez p3, :cond_4c

    return v0

    :cond_4c
    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_55
    .catchall {:try_start_11 .. :try_end_55} :catchall_87

    :try_start_55
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    const-wide/16 v5, 0x0

    move-object v3, p2

    move-object v4, p0

    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v3

    cmp-long p3, v3, v9

    if-eqz p3, :cond_79

    invoke-static {p1}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V
    :try_end_72
    .catchall {:try_start_55 .. :try_end_72} :catchall_80

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V

    return v0

    :cond_79
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V

    return v2

    :catchall_80
    move-exception p1

    move-object v11, p2

    move-object p2, p0

    move-object p0, p1

    move-object p1, v11

    goto :goto_89

    :cond_86
    :goto_86
    return v0

    :catchall_87
    move-exception p0

    move-object p1, p2

    :goto_89
    if-eqz p2, :cond_8e

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V

    :cond_8e
    if-eqz p1, :cond_93

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_93
    throw p0

    :cond_94
    :goto_94
    return v0
.end method

.method private static b(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/File;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_22
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_8b
    .catchall {:try_start_22 .. :try_end_27} :catchall_89

    const/16 v0, 0x2000

    :try_start_29
    new-array v0, v0, [B

    :goto_2b
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v8, 0x0

    if-lez v2, :cond_36

    invoke-virtual {v1, v0, v8, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_35} :catch_86
    .catchall {:try_start_29 .. :try_end_35} :catchall_83

    goto :goto_2b

    :cond_36
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v6

    move-object v1, p2

    invoke-static/range {v1 .. v7}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/lang/String;JJJ)Z

    move-result p0

    const-string v0, "FileHelper"

    if-eqz p0, :cond_63

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "file is different: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_63
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Ljava/io/File;->setLastModified(J)Z

    move-result p0

    if-nez p0, :cond_81

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Couldn\'t set time for dst file "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    const/4 p0, 0x1

    return p0

    :catchall_83
    move-exception p0

    move-object v0, v1

    goto :goto_a6

    :catch_86
    move-exception p0

    move-object v0, v1

    goto :goto_8c

    :catchall_89
    move-exception p0

    goto :goto_a6

    :catch_8b
    move-exception p0

    :goto_8c
    :try_start_8c
    invoke-static {p3}, Lcom/tencent/smtt/utils/FileUtil;->b(Ljava/io/File;)V

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write dst file "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_a6
    .catchall {:try_start_8c .. :try_end_a6} :catchall_89

    :goto_a6
    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_ab
    throw p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tbs"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "file_locks"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/io/File;)Z
    .registers 5

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    long-to-int p1, p0

    return p1
.end method

.method public static d(Ljava/io/File;)Ljava/io/FileOutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "File \'"

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_76

    :cond_15
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' cannot be written to"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' exists but is a directory"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_76

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_76

    :cond_5c
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' could not be created"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    :goto_76
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "core_private"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x0

    return-object p0

    :cond_19
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/nio/channels/FileLock;
    .registers 13

    const-string v0, "FileHelper"

    const-string v1, "getTbsCoreLoadFileLock #1"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_8
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance()Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getTbsCoreLoadRenameFileLockEnable()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_12

    :catchall_11
    const/4 v2, 0x1

    :goto_12
    const-string v3, "tbs_rename_lock"

    const/4 v4, 0x0

    if-nez v2, :cond_44

    invoke-static {p0, v1, v3}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    if-nez v1, :cond_23

    const-string p0, "init -- failed to get rename fileLock#1!"

    :goto_1f
    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    :cond_23
    invoke-static {p0, v1}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;Ljava/io/FileOutputStream;)Ljava/nio/channels/FileLock;

    move-result-object v4

    if-nez v4, :cond_2c

    const-string p0, "init -- failed to get rename fileLock#2!"

    goto :goto_1f

    :cond_2c
    const-string p0, "init -- get rename fileLock success!"

    goto :goto_1f

    :goto_2f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTbsCoreLoadFileLock #2 renameFileLock is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_44
    const-string v1, "getTbsCoreLoadFileLock #3"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTbsCoreLoadFileLock #4 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_61
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v5, "r"

    invoke-direct {v2, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/tencent/smtt/utils/FileUtil;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    const-wide/16 v7, 0x0

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v4
    :try_end_7e
    .catchall {:try_start_61 .. :try_end_7e} :catchall_7f

    goto :goto_94

    :catchall_7f
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTbsCoreLoadFileLock -- exception: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_94
    if-nez v4, :cond_9a

    invoke-static {p0}, Lcom/tencent/smtt/utils/FileUtil;->g(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    move-result-object v4

    :cond_9a
    new-instance p0, Ljava/lang/StringBuilder;

    if-nez v4, :cond_a4

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTbsCoreLoadFileLock -- failed: "

    goto :goto_a9

    :cond_a4
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTbsCoreLoadFileLock -- success: "

    :goto_a9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static f(Landroid/content/Context;)Ljava/nio/channels/FileLock;
    .registers 11

    const-string v0, "tbs_rename_lock"

    invoke-static {p0, v0}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTbsCoreRenameFileLock #1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileHelper"

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1c
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v3, "rw"

    invoke-direct {v1, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/smtt/utils/FileUtil;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fffffffffffffffL

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p0
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_3a

    goto :goto_4f

    :catchall_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTbsCoreRenameFileLock -- excpetion: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_4f
    new-instance v1, Ljava/lang/StringBuilder;

    if-nez p0, :cond_59

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTbsCoreRenameFileLock -- failed: "

    goto :goto_5e

    :cond_59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTbsCoreRenameFileLock -- success: "

    :goto_5e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static g(Landroid/content/Context;)Ljava/nio/channels/FileLock;
    .registers 15

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->tbsLogInfo()Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;

    move-result-object v1

    const/16 v2, 0x323

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    const-string v2, "tbs_rename_lock"

    invoke-static {p0, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getTbsCoreLoadRenameFileLockWaitEnable()Z

    move-result v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_8e

    if-eqz v3, :cond_92

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_20
    const/16 v5, 0x14

    if-ge v4, v5, :cond_56

    if-nez v0, :cond_56

    const-wide/16 v5, 0x64

    :try_start_28
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2e
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_32

    :catchall_2c
    move-exception v5

    goto :goto_50

    :catch_2e
    move-exception v5

    :try_start_2f
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_32
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "r"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/tencent/smtt/utils/FileUtil;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    const-wide/16 v9, 0x0

    const-wide v11, 0x7fffffffffffffffL

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v0
    :try_end_4f
    .catchall {:try_start_2f .. :try_end_4f} :catchall_2c

    goto :goto_53

    :goto_50
    :try_start_50
    invoke-static {v5}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/Throwable;)V

    :goto_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_56
    if-eqz v0, :cond_5e

    const/16 v2, 0x322

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    goto :goto_63

    :cond_5e
    const/16 v2, 0x321

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;->setErrorCode(I)V

    :goto_63
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object p0

    sget-object v2, Lcom/tencent/smtt/sdk/TbsLogReport$EventType;->TYPE_SDK_REPORT_INFO:Lcom/tencent/smtt/sdk/TbsLogReport$EventType;

    invoke-virtual {p0, v2, v1}, Lcom/tencent/smtt/sdk/TbsLogReport;->eventReport(Lcom/tencent/smtt/sdk/TbsLogReport$EventType;Lcom/tencent/smtt/sdk/TbsLogReport$TbsLogInfo;)V

    const-string p0, "FileHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTbsCoreLoadFileLock,retry num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_83

    const/4 v3, 0x1

    :cond_83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_8d} :catch_8e

    goto :goto_92

    :catch_8e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_92
    :goto_92
    return-object v0
.end method
