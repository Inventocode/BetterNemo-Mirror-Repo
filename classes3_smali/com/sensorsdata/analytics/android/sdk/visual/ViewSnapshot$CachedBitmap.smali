.class Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;
.super Ljava/lang/Object;
.source "ViewSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedBitmap"
.end annotation


# instance fields
.field private mCached:Landroid/graphics/Bitmap;

.field private mImageHash:Ljava/lang/String;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 736
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mImageHash:Ljava/lang/String;

    .line 739
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 740
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mCached:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;)Ljava/lang/String;
    .registers 1

    .line 731
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->getImageHash()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static concat([B[B)[B
    .registers 5

    .line 798
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 799
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 800
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private getImageHash()Ljava/lang/String;
    .registers 2

    .line 822
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mImageHash:Ljava/lang/String;

    return-object v0
.end method

.method private toHex([B)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    const/4 v1, 0x0

    .line 828
    :goto_3
    array-length v2, p1

    if-ge v1, v2, :cond_3b

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p1, v1

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p1, v1

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3b
    return-object v0
.end method


# virtual methods
.method public declared-synchronized recreate(IIILandroid/graphics/Bitmap;)V
    .registers 6

    monitor-enter p0

    .line 744
    :try_start_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mCached:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mCached:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_cc

    if-eq v0, p2, :cond_26

    .line 746
    :cond_13
    :try_start_13
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mCached:Landroid/graphics/Bitmap;
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1c

    goto :goto_1f

    :catchall_1c
    const/4 p1, 0x0

    .line 748
    :try_start_1d
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mCached:Landroid/graphics/Bitmap;

    .line 751
    :goto_1f
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mCached:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_26

    .line 752
    invoke-virtual {p1, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 756
    :cond_26
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mCached:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_ca

    .line 757
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mCached:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 758
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mPaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p1, p4, p3, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_cc

    .line 761
    :try_start_37
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 762
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mCached:Landroid/graphics/Bitmap;

    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p4, 0x64

    invoke-virtual {p2, p3, p4, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 763
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 765
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->getWebNodesManager()Lcom/sensorsdata/analytics/android/sdk/visual/WebNodesManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->getLastThirdMsg()Ljava/lang/String;

    move-result-object p2

    .line 766
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_68

    .line 767
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    if-eqz p2, :cond_68

    .line 768
    array-length p3, p2

    if-lez p3, :cond_68

    .line 769
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->concat([B[B)[B

    move-result-object p1

    .line 773
    :cond_68
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/visual/NodesProcess;->getFlutterNodesManager()Lcom/sensorsdata/analytics/android/sdk/visual/FlutterNodesManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/visual/AbstractNodesManager;->getLastThirdMsg()Ljava/lang/String;

    move-result-object p2

    .line 774
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_87

    .line 775
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    if-eqz p2, :cond_87

    .line 776
    array-length p3, p2

    if-lez p3, :cond_87

    .line 777
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->concat([B[B)[B

    move-result-object p1

    .line 781
    :cond_87
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getInstance()Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sensorsdata/analytics/android/sdk/visual/VisualizedAutoTrackService;->getLastDebugInfo()Ljava/lang/String;

    move-result-object p2

    .line 782
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a2

    .line 783
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    if-eqz p2, :cond_a2

    .line 784
    array-length p3, p2

    if-lez p3, :cond_a2

    .line 785
    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->concat([B[B)[B

    move-result-object p1

    :cond_a2
    const-string p2, "MD5"

    .line 789
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 790
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->toHex([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mImageHash:Ljava/lang/String;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_b2} :catch_b3
    .catchall {:try_start_37 .. :try_end_b2} :catchall_cc

    goto :goto_ca

    :catch_b3
    move-exception p1

    :try_start_b4
    const-string p2, "SA.ViewSnapshot"

    .line 792
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CachedBitmap.recreate;Create image_hash error="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ca
    .catchall {:try_start_b4 .. :try_end_ca} :catchall_cc

    .line 795
    :cond_ca
    :goto_ca
    monitor-exit p0

    return-void

    :catchall_cc
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeBitmapJSON(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 808
    :try_start_1
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mCached:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mCached:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-nez p1, :cond_14

    goto :goto_42

    :cond_14
    const/16 p1, 0x22

    .line 811
    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write(I)V

    .line 812
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 813
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewSnapshot$CachedBitmap;->mCached:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 814
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 815
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/util/Base64Coder;->encode([B)[C

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    .line 816
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 817
    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4b

    :cond_42
    :goto_42
    const-string p1, "null"

    .line 809
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4d

    .line 819
    :goto_4b
    monitor-exit p0

    return-void

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
