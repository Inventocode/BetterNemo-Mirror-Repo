.class public Lcom/uc/crashsdk/a/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z = true

.field private static b:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI[B)V
    .registers 7

    .line 749
    sget-boolean v0, Lcom/uc/crashsdk/a/c;->a:Z

    const/4 v1, 0x4

    if-nez v0, :cond_f

    array-length v0, p2

    if-ne v0, v1, :cond_9

    goto :goto_f

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_f
    :goto_f
    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_1b

    add-int v2, v0, p1

    .line 751
    aget-byte v3, p2, v0

    aput-byte v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1b
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_23

    .line 791
    invoke-static {p0, p1, p2}, Lcom/uc/crashsdk/a/c;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 p0, 0x1

    return p0

    .line 794
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "upload try again: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "crashsdk"

    invoke-static {v3, v2}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    return v0
.end method

.method private static a([BLjava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const-string v0, "crashsdk"

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uploading to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 823
    :try_start_15
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_12c

    const/16 v3, 0x2710

    .line 825
    :try_start_22
    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v3, 0xea60

    .line 826
    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    .line 827
    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 828
    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v4, "POST"

    .line 829
    invoke-virtual {p2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------------izQ290kHh6g3Yn2IeyJCoc\r\n"

    .line 833
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Content-Disposition: form-data; name=\"file\";"

    .line 834
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " filename=\""

    .line 835
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Content-Type: application/octet-stream\r\n"

    .line 836
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    .line 837
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n------------izQ290kHh6g3Yn2IeyJCoc--\r\n"

    .line 841
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x28

    array-length v7, p0

    add-int/2addr v6, v7

    const-string v7, "Content-Type"

    const-string v8, "multipart/form-data; boundary=----------izQ290kHh6g3Yn2IeyJCoc"

    .line 842
    invoke-virtual {p2, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Content-Disposition"

    .line 844
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "form-data; name=\"file\"; filename="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v7, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Length"

    .line 846
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, p1, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_91
    .catchall {:try_start_22 .. :try_end_91} :catchall_128

    .line 849
    :try_start_91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 850
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 851
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 853
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 854
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Response code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catchall {:try_start_91 .. :try_end_bb} :catchall_123

    const/16 v4, 0xc8

    if-eq p0, v4, :cond_cc

    .line 856
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 878
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 879
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 883
    :try_start_c8
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_cb

    :catchall_cb
    return v1

    .line 860
    :cond_cc
    :try_start_cc
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_d0
    .catchall {:try_start_cc .. :try_end_d0} :catchall_123

    const/16 v4, 0x400

    :try_start_d2
    new-array v4, v4, [B

    .line 862
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_dd
    .catchall {:try_start_d2 .. :try_end_dd} :catchall_120

    .line 864
    :goto_dd
    :try_start_dd
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_e8

    .line 865
    invoke-virtual {v5, v4, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_dd

    .line 868
    :cond_e8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    if-eqz v2, :cond_111

    .line 870
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Log upload response: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_104
    .catchall {:try_start_dd .. :try_end_104} :catchall_11e

    .line 871
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 878
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 879
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 883
    :try_start_10d
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_110
    .catchall {:try_start_10d .. :try_end_110} :catchall_110

    :catchall_110
    return v3

    .line 873
    :cond_111
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 878
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 879
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 883
    :try_start_11a
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_11d

    :catchall_11d
    return v1

    :catchall_11e
    move-exception v0

    goto :goto_126

    :catchall_120
    move-exception v0

    move-object v5, v2

    goto :goto_126

    :catchall_123
    move-exception v0

    move-object p0, v2

    move-object v5, p0

    :goto_126
    move-object v2, p1

    goto :goto_130

    :catchall_128
    move-exception v0

    move-object p0, v2

    move-object v5, p0

    goto :goto_130

    :catchall_12c
    move-exception v0

    move-object p0, v2

    move-object p2, p0

    move-object v5, p2

    .line 874
    :goto_130
    :try_start_130
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/Throwable;)V
    :try_end_133
    .catchall {:try_start_130 .. :try_end_133} :catchall_142

    .line 877
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 878
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 879
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_141

    .line 883
    :try_start_13e
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_141
    .catchall {:try_start_13e .. :try_end_141} :catchall_141

    :catchall_141
    :cond_141
    return v1

    :catchall_142
    move-exception p1

    .line 877
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 878
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 879
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_151

    .line 883
    :try_start_14e
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_151
    .catchall {:try_start_14e .. :try_end_151} :catchall_151

    .line 886
    :catchall_151
    :cond_151
    throw p1
.end method

.method public static a()[B
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 689
    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 1
        0x30t
        0x19t
        0x6t
        0x37t
    .end array-data
.end method

.method private static a(Ljava/io/File;)[B
    .registers 8

    .line 756
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 764
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    .line 765
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_3c
    .catchall {:try_start_8 .. :try_end_12} :catchall_39

    .line 766
    :try_start_12
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_36
    .catchall {:try_start_12 .. :try_end_17} :catchall_4a

    .line 767
    :try_start_17
    new-array v1, v0, [B

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v0, :cond_27

    sub-int v4, v0, v3

    .line 770
    invoke-virtual {p0, v1, v3, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_31
    .catchall {:try_start_17 .. :try_end_22} :catchall_2e

    const/4 v5, -0x1

    if-eq v5, v4, :cond_27

    add-int/2addr v3, v4

    goto :goto_1a

    .line 779
    :cond_27
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 780
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_49

    :catchall_2e
    move-exception v0

    move-object v1, p0

    goto :goto_4b

    :catch_31
    move-exception v0

    move-object v6, v1

    move-object v1, p0

    move-object p0, v6

    goto :goto_3f

    :catch_36
    move-exception v0

    move-object p0, v1

    goto :goto_3f

    :catchall_39
    move-exception v0

    move-object v2, v1

    goto :goto_4b

    :catch_3c
    move-exception v0

    move-object p0, v1

    move-object v2, p0

    .line 776
    :goto_3f
    :try_start_3f
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4a

    .line 779
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 780
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    move-object v1, p0

    :goto_49
    return-object v1

    :catchall_4a
    move-exception v0

    .line 779
    :goto_4b
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 780
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;[B)[B
    .registers 9

    const/4 v0, 0x0

    .line 699
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_85

    const/16 v1, 0x1388

    .line 701
    :try_start_e
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 702
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    .line 703
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 704
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "POST"

    .line 705
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 706
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    .line 707
    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Length"

    .line 709
    array-length v3, p1

    .line 710
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 709
    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_83

    .line 712
    :try_start_39
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 714
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_80

    const/16 v3, 0xc8

    if-eq p1, v3, :cond_51

    .line 716
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 734
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 735
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 739
    :try_start_4d
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_50

    :catchall_50
    return-object v0

    .line 719
    :cond_51
    :try_start_51
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_80

    const/16 v3, 0x400

    :try_start_57
    new-array v3, v3, [B

    .line 721
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_62
    .catchall {:try_start_57 .. :try_end_62} :catchall_7e

    .line 723
    :goto_62
    :try_start_62
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6d

    .line 724
    invoke-virtual {v4, v3, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_62

    .line 727
    :cond_6d
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_71
    .catchall {:try_start_62 .. :try_end_71} :catchall_89

    .line 733
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 734
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 735
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 739
    :try_start_7a
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7d

    :catchall_7d
    return-object v0

    :catchall_7e
    move-object v4, v0

    goto :goto_89

    :catchall_80
    move-object p1, v0

    move-object v4, p1

    goto :goto_89

    :catchall_83
    move-object p1, v0

    goto :goto_87

    :catchall_85
    move-object p0, v0

    move-object p1, p0

    :goto_87
    move-object v2, p1

    move-object v4, v2

    .line 729
    :catchall_89
    :goto_89
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 734
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 735
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    if-eqz p0, :cond_97

    .line 739
    :try_start_94
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_97

    :catchall_97
    :cond_97
    return-object v0
.end method

.method private static a([B)[B
    .registers 7

    .line 670
    array-length v0, p0

    const/16 v1, 0x10

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 673
    array-length v2, p0

    shr-int/lit8 v3, v2, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v0, v5

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x2

    aput-byte v3, v0, v5

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    const/4 v2, 0x4

    :goto_28
    if-ge v2, v1, :cond_2f

    .line 675
    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 677
    :cond_2f
    array-length v2, p0

    invoke-static {p0, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static a([B[B)[B
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 635
    invoke-static {p0, p1, v0, v1}, Lcom/uc/crashsdk/a/c;->a([B[BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([B[BZ)[B
    .registers 4

    const/4 v0, 0x1

    .line 640
    invoke-static {p0, p1, p2, v0}, Lcom/uc/crashsdk/a/c;->a([B[BZZ)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([B[BZZ)[B
    .registers 7

    .line 650
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_34

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 654
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/CBC/PKCS5Padding"

    .line 655
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    if-eqz p2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x2

    .line 656
    :goto_1e
    invoke-virtual {p1, v2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_2f

    if-eqz p3, :cond_26

    goto :goto_2a

    .line 659
    :cond_26
    invoke-static {p0}, Lcom/uc/crashsdk/a/c;->a([B)[B

    move-result-object p0

    :goto_2a
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 661
    :cond_2f
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0

    :array_34
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 801
    :try_start_1
    invoke-static {p0}, Lcom/uc/crashsdk/a/c;->a(Ljava/io/File;)[B

    move-result-object p0

    if-eqz p0, :cond_10

    .line 802
    array-length v1, p0

    if-nez v1, :cond_b

    goto :goto_10

    .line 805
    :cond_b
    invoke-static {p0, p1, p2}, Lcom/uc/crashsdk/a/c;->a([BLjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    return p0

    :cond_10
    :goto_10
    return v0

    :catch_11
    move-exception p0

    .line 806
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static b([B[B)[B
    .registers 3

    const/4 v0, 0x1

    .line 644
    invoke-static {p0, p1, v0, v0}, Lcom/uc/crashsdk/a/c;->a([B[BZZ)[B

    move-result-object p0

    return-object p0
.end method
