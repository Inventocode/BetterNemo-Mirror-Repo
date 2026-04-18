.class Lcom/tencent/smtt/sdk/TbsLogReport$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/TbsLogReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsLogReport$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/TbsLogReport$a;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_32
    .catchall {:try_start_1 .. :try_end_8} :catchall_30

    :try_start_8
    const-string p0, "00001000"

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const-wide/16 v2, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    and-int v4, v0, p0

    if-lez v4, :cond_26

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    not-int p0, p0

    and-int/lit16 p0, p0, 0xff

    and-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_26} :catch_2d
    .catchall {:try_start_8 .. :try_end_26} :catchall_2a

    :cond_26
    :try_start_26
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_3c

    goto :goto_40

    :catchall_2a
    move-exception p0

    move-object v0, v1

    goto :goto_41

    :catch_2d
    move-exception p0

    move-object v0, v1

    goto :goto_33

    :catchall_30
    move-exception p0

    goto :goto_41

    :catch_32
    move-exception p0

    :goto_33
    :try_start_33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_30

    if-eqz v0, :cond_40

    :try_start_38
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_40
    :goto_40
    return-void

    :goto_41
    if-eqz v0, :cond_4b

    :try_start_43
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4b
    :goto_4b
    throw p0
.end method


# virtual methods
.method public a()V
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsLogReport$a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_bc
    .catchall {:try_start_1 .. :try_end_8} :catchall_b7

    :try_start_8
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_b2
    .catchall {:try_start_8 .. :try_end_12} :catchall_ad

    const/16 v3, 0x800

    :try_start_14
    new-array v4, v3, [B

    iget-object v5, p0, Lcom/tencent/smtt/sdk/TbsLogReport$a;->a:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_ab
    .catchall {:try_start_14 .. :try_end_18} :catchall_d8

    :try_start_18
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_66
    .catchall {:try_start_18 .. :try_end_1d} :catchall_61

    :try_start_1d
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v6, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_5e
    .catchall {:try_start_1d .. :try_end_22} :catchall_5b

    :try_start_22
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_36
    const/4 v0, 0x0

    invoke-virtual {v7, v4, v0, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_42

    invoke-virtual {v2, v4, v0, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_36

    :cond_42
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_48} :catch_59
    .catchall {:try_start_22 .. :try_end_48} :catchall_95

    :try_start_48
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_ab
    .catchall {:try_start_48 .. :try_end_4b} :catchall_d8

    goto :goto_50

    :catch_4c
    move-exception v0

    :try_start_4d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_ab
    .catchall {:try_start_4d .. :try_end_50} :catchall_d8

    :goto_50
    :try_start_50
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_ab
    .catchall {:try_start_50 .. :try_end_53} :catchall_d8

    goto :goto_7f

    :catch_54
    move-exception v0

    :goto_55
    :try_start_55
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_ab
    .catchall {:try_start_55 .. :try_end_58} :catchall_d8

    goto :goto_7f

    :catch_59
    move-exception v0

    goto :goto_6a

    :catchall_5b
    move-exception v3

    move-object v7, v0

    goto :goto_64

    :catch_5e
    move-exception v3

    move-object v7, v0

    goto :goto_69

    :catchall_61
    move-exception v3

    move-object v6, v0

    move-object v7, v6

    :goto_64
    move-object v0, v3

    goto :goto_96

    :catch_66
    move-exception v3

    move-object v6, v0

    move-object v7, v6

    :goto_69
    move-object v0, v3

    :goto_6a
    :try_start_6a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_95

    if-eqz v7, :cond_77

    :try_start_6f
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_ab
    .catchall {:try_start_6f .. :try_end_72} :catchall_d8

    goto :goto_77

    :catch_73
    move-exception v0

    :try_start_74
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_ab
    .catchall {:try_start_74 .. :try_end_77} :catchall_d8

    :cond_77
    :goto_77
    if-eqz v6, :cond_7f

    :try_start_79
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_ab
    .catchall {:try_start_79 .. :try_end_7c} :catchall_d8

    goto :goto_7f

    :catch_7d
    move-exception v0

    goto :goto_55

    :cond_7f
    :goto_7f
    :try_start_7f
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsLogReport$a;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport$a;->a(Ljava/io/File;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_89} :catch_ab
    .catchall {:try_start_7f .. :try_end_89} :catchall_d8

    :try_start_89
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_91

    :catch_8d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_91
    :try_start_91
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_d3

    goto :goto_d7

    :catchall_95
    move-exception v0

    :goto_96
    if-eqz v7, :cond_a0

    :try_start_98
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_ab
    .catchall {:try_start_98 .. :try_end_9b} :catchall_d8

    goto :goto_a0

    :catch_9c
    move-exception v3

    :try_start_9d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a0} :catch_ab
    .catchall {:try_start_9d .. :try_end_a0} :catchall_d8

    :cond_a0
    :goto_a0
    if-eqz v6, :cond_aa

    :try_start_a2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_ab
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_d8

    goto :goto_aa

    :catch_a6
    move-exception v3

    :try_start_a7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_aa
    :goto_aa
    throw v0
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ab} :catch_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_d8

    :catch_ab
    move-exception v0

    goto :goto_c0

    :catchall_ad
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_d9

    :catch_b2
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_c0

    :catchall_b7
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_d9

    :catch_bc
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_c0
    :try_start_c0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_d8

    if-eqz v2, :cond_cd

    :try_start_c5
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_cd

    :catch_c9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_cd
    :goto_cd
    if-eqz v1, :cond_d7

    :try_start_cf
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    goto :goto_d7

    :catch_d3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d7
    :goto_d7
    return-void

    :catchall_d8
    move-exception v0

    :goto_d9
    if-eqz v2, :cond_e3

    :try_start_db
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    goto :goto_e3

    :catch_df
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_e3
    :goto_e3
    if-eqz v1, :cond_ed

    :try_start_e5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_e9

    goto :goto_ed

    :catch_e9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_ed
    :goto_ed
    throw v0
.end method
